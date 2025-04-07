<?php

namespace App\Http\Controllers\Sdm;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Admin;
use App\Models\Lecture;


class SdmController extends Controller
{
    public function index(){
        $admins = Admin::all();
        $lectures = Lecture::all();
        return view('sdm', compact('admins', 'lectures'));
    }
}
