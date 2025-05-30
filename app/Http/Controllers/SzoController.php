<?php

namespace App\Http\Controllers;

use App\Models\Szo;
use Illuminate\Http\Request;

class SzoController extends Controller
{
    public function index(){
        return Szo::all();
    }
}
