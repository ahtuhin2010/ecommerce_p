<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\Slider;

class SliderController extends Controller
{
    public function view()
    {
        $data['allData'] = Slider::all();
        return view('backend.slider.view-slider', $data);
    }

    public function add()
    {
        return view('backend.slider.add-slider');
    }

    public function store(Request $request)
    {

        $data = new Slider();
        $data->short_title = $request->short_title;
        $data->long_title = $request->long_title;
        $data->created_by = Auth::user()->id;

        if ($request->file('image')) {
            $file = $request->file('image');
            $filename = date('YmdHi') . $file->getClientOriginalName();
            $file->move(public_path('upload/slider_images'), $filename);
            $data['image'] = $filename;
        }

        $data->save();

        return redirect()->route('sliders.view')->with('success', 'Data Inserted Successfully');
    }

    public function edit($id)
    {
        $editData = Slider::find($id);
        return view('backend.slider.edit-slider', compact('editData'));
    }

    public function update(Request $request, $id)
    {
        $data = Slider::find($id);
        $data->short_title = $request->short_title;
        $data->long_title = $request->long_title;
        $data->updated_by = Auth::user()->id;

        if ($request->file('image')) {
            $file = $request->file('image');
            @unlink(public_path('upload/slider_images/' . $data->image));
            $filename = date('YmdHi') . $file->getClientOriginalName();
            $file->move(public_path('upload/slider_images'), $filename);
            $data['image'] = $filename;
        }

        $data->save();

        return redirect()->route('sliders.view')->with('success', 'Data Updated Successfully');
    }

    public function delete(Request $request)
    {
        $slider = Slider::find($request->id);

        if (file_exists('upload/slider_images/' . $slider->image) and !empty($slider->image)) {
            unlink('upload/slider_images/' . $slider->image);
        }

        $slider->delete();

        return redirect()->route('sliders.view')->with('success', 'Data Deleted Successfully');
    }
}
