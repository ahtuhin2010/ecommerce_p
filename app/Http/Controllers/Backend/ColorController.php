<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Color;
use Illuminate\Support\Facades\Auth;
use App\Http\Requests\ColorRequest;

class ColorController extends Controller
{
    public function view()
    {
        $data['allData'] = Color::all();
        return view('backend.color.view-color', $data);
    }

    public function add()
    {
        return view('backend.color.add-color');
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            'name' => 'required|unique:colors,name'
        ]);

        $data = new Color();
        $data->name = $request->name;
        $data->created_by = Auth::user()->id;

        $data->save();

        return redirect()->route('colors.view')->with('success', 'Data Inserted Successfully');
    }

    public function edit($id)
    {
        $editData = Color::find($id);
        return view('backend.color.add-color', compact('editData'));
    }

    public function update(ColorRequest $request, $id)
    {
        $data = Color::find($id);
        $data->name = $request->name;
        $data->updated_by = Auth::user()->id;

        $data->save();

        return redirect()->route('colors.view')->with('success', 'Data Updated Successfully');
    }

    public function delete(Request $request)
    {
        $slider = Color::find($request->id);

        $slider->delete();

        return redirect()->route('colors.view')->with('success', 'Data Deleted Successfully');
    }
}
