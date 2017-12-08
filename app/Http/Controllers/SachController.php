<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class SachController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @param Request $request
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $loai = $request->query('loai');
        if ($loai) {
            $ds_sach = DB::select('select * from sach where id_loai = ?', [$loai]);
        } else
            $ds_sach = DB::select('select * from sach');
        return view("frontpage.sach.index", ["ds_sach" => $ds_sach]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $sach = DB::select('select * from sach where id_sach = ?', [$id]);
        return view("frontpage.sach.edit", ["sach" => $sach[0]]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        DB::update('update sach set ten_sach = ? where id_sach = ?', [$request->input("ten_sach"), $id]);
        $sach = DB::select('select * from sach where id_sach = ?', [$id]);
        return view("frontpage.sach.show", ["sach" => $sach[0]]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
