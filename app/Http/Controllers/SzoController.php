<?php

namespace App\Http\Controllers;

use App\Models\Szo;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class SzoController extends Controller
{
    public function index()
    {
        return Szo::all();
    }

    public function getSzoByTema()
    {
        $szo = DB::table('szos')
            ->join('temas', 'szos.temaId', '=', 'temas.id')
            ->select('szos*','temas.temanev')
            ->get();
    }
}
