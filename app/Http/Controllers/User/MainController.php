<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use App\Models\Photo;

class MainController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }
    public function adminHome()
    {
        $count = Photo::where('user_id', auth()->user()->id)->count('id');
        return view('frontend.dashboard.main', compact('count'));
    }
}
