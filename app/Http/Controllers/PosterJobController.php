<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Symfony\Component\Process\Process;
use Symfony\Component\Process\Exception\ProcessFailedException;
use Illuminate\Support\Facades\File;

class PosterJobController extends Controller
{
    public function form()
    {
        return view('poster-job.form');
    }

    public function run(Request $request)
    {
        $request->validate([
            'drive_url' => ['required', 'string', 'url'],
        ]);

        try {
            $script = base_path('scripts/run_poster_job.sh');

            $process = new Process([
                $script,
                $request->input('drive_url')
            ]);

            $process->setTimeout(600); // 10 minutes
            $process->run();

            if (! $process->isSuccessful()) {
                throw new ProcessFailedException($process);
            }

            return back()->with('success', 'Poster job completed successfully.');

        } catch (\Throwable $e) {

            return back()->withErrors([
                'drive_url' => 'Job failed: ' . $e->getMessage()
            ]);

        }
    }
}
