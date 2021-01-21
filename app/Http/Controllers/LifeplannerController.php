<?php

namespace App\Http\Controllers;

use App\Models\lifeplanner;
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
        $todo = lifeplanner::find($id["id"]);
        if($todo->Status == "Not Completed")
            $todo->Status = "Completed";
        else
        $todo->Status = "Not Completed";
        $Task->save();
        return view('LifePlanner.index');
    }
}
