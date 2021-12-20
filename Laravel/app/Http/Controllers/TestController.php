<?php

namespace App\Http\Controllers\Api;

use App\Support\Authorization\AuthorizationUserTrait;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Test;
use DB;

class TestController extends Controller
{
    //create Test
    public function createTest(Request $request)
    {
        foreach($request->invoice_products as $p) {
            $obj = new Test();
            $obj->name = $p['name'] ;
            $obj->price = $p['price'] ;
            $obj->save();
        }
        return response()->json([
            'fg' => '1',
            'msg' => 'success'
        ]);
    }


    // test data show
    public function getTest(){ 
        $columns = DB::table('tests')
                    ->get();

        return response()->json([
            'columns'=> $columns,
            'msg' => 'data retrived'
        ]);
    }

    public function editTest($id) {
        return $obj =DB::table('tests')->where('id','=',$id)->first();
        
        //return view ('crud.edit',compact('employees'));
    }
    
    public function updateTest($id, Request $request)
    {
        $updateTest = Test::find($id);
        $updateTest->update($request->all());

        return response()->json('successfully updated');
    }


    //delete Test
    public function deleteTest($id) {
        DB::table('tests')->where('id', '=', $id)->delete();
        
        return response()->json([
            'msg' => 'success'
        ]);
    
    }
}



    // public function test(){ 
    //    $test = Test::all();
    //     return response()->json([
    //         'name'=>$name,
    //         'price'=>$price,
    //         'msg' => 'success'
    //     ]);
    // }

            //$obj = new Test();
        // $obj->name = $request->name;
        // $obj->price = $request->price;
        // if($obj->save()) {
        //     return response()->json([
        //         'data' => $obj,
        //         'msg' => 'Test Successfully inserted'
        //     ]);
        //}
