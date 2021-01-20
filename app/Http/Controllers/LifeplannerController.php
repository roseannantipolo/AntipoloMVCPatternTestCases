<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;

class LifeplannerController extends Controller
{
    public function store(Request $request)
    {
        
        $task = $request->input('task');
        
        DB::insert('INSERT INTO todolist(Task) VALUES(?)', [$task]);
         
        return redirect('/');
    }

    public function show()
    {
        $data['data'] = DB::table('todolist')->get();

        if (count($data) > 0) {
            return view('LifePlanner.index', $data);
        } else {
            return view('LifePlanner.index');
        }
    }

    public function edit(Request $request){
        
        $id = $request->input('id');
        $todolist = DB::select('SELECT * FROM todolist WHERE TodolistID = ?', [$id]);
        $todo = $todolist::find($id);
        $todo->Task = str_replace("<strike>", "", $todo->Task);
        $todo->Task = str_replace("</strike>", "", $todo->Task);
        $Task->save();
    }
}
