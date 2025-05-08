<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Inertia\Inertia;

class NewsController extends Controller
{

    public function Newslist() {

        $num = ["1","2","3","4"];


        return Inertia::render('news/list', [
            'mustVerifyEmail' => 1,
            'status' => "true",
            'data' => $num
        ]);
    }
}
