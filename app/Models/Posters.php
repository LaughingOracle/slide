<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Posters extends Model
{
    //
    use HasFactory;

    protected $fillable = [
        'name',
        'title',
        'tv',
        'legacyId'
    ];
}
