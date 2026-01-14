<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class AdminPosterImportController extends Controller
{
    public function import(Request $request)
    {
        $request->validate([
            'csv_file' => [
                'required',
                'file',
                'mimes:csv,txt',
                'max:10240', // 10MB
            ],
        ]);

        $path = $request->file('csv_file')->getRealPath();
        $handle = fopen($path, 'r');

        if (!$handle) {
            abort(500, 'Unable to open CSV file');
        }

        DB::beginTransaction();

        try {
            // Read header
            $header = fgetcsv($handle);
            $header = array_map('trim', $header);

            // Required columns
            $required = ['Author Names', 'Title of Abstract', 'TV', 'Poster Code'];

            foreach ($required as $col) {
                if (!in_array($col, $header)) {
                    abort(422, "Missing required column: {$col}");
                }
            }

            $indexes = array_flip($header);

            $inserted = 0;

            while (($row = fgetcsv($handle)) !== false) {
                $name = trim($row[$indexes['Author Names']] ?? '');
                $title = trim($row[$indexes['Title of Abstract']] ?? '');
                $tv = trim($row[$indexes['TV']] ?? '1');
                $legacyId = isset($row[$indexes['Poster Code']]) 
                    ? (int) trim($row[$indexes['Poster Code']]) 
                    : 0;

                if ($name === '' || $title === '' || $legacyId === '') {
                    continue; // skip invalid rows
                }

                DB::table('posters')->insert([
                    'name'       => $name,
                    'title'      => $title,
                    'tv'         => $tv ?: '1',
                    'legacyId'   => $legacyId,
                    'created_at' => now(),
                    'updated_at' => now(),
                ]);

                $inserted++;
            }

            fclose($handle);
            DB::commit();

        } catch (\Throwable $e) {
            DB::rollBack();
            if (isset($handle)) fclose($handle);
            throw $e;
        }

        return back()->with('success', "Imported {$inserted} posters successfully.");
    }
}
