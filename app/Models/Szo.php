<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Szo extends Model
{
    /** @use HasFactory<\Database\Factories\SzoFactory> */
    use HasFactory;
    protected $fillable = [
        'angol',
        'magyar',
        'temaId',
    ];
}
