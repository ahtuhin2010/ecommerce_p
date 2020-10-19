<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\Logo;
use App\User;

class LogoController extends Controller
{
    public function view()
    {
        $data['countLogo'] = Logo::count();
        $data['allData'] = Logo::all();
        return view('backend.logo.view-logo', $data);
    }

    public function add()
    {
        return view('backend.logo.add-logo');
    }

    public function store(Request $request)
    {

        $data = new Logo();
        $data->created_by = Auth::user()->id;

        if ($request->file('image')) {
            $file = $request->file('image');
            $filename = date('YmdHi') . $file->getClientOriginalName();
            $file->move(public_path('upload/logo_images'), $filename);
            $data['image'] = $filename;
        }

        $data->save();

        return redirect()->route('logos.view')->with('success', 'Data Inserted Successfully');
    }

    public function edit($id)
    {
        $editData = Logo::find($id);
        return view('backend.logo.edit-logo', compact('editData'));
    }

    public function update(Request $request, $id)
    {
        $data = Logo::find($id);
        $data->updated_by = Auth::user()->id;

        if ($request->file('image')) {
            $file = $request->file('image');
            @unlink(public_path('upload/logo_images/' . $data->image));
            $filename = date('YmdHi') . $file->getClientOriginalName();
            $file->move(public_path('upload/logo_images'), $filename);
            $data['image'] = $filename;
        }

        $data->save();

        return redirect()->route('logos.view')->with('success', 'Data Updated Successfully');
    }

    public function delete(Request $request)
    {
        $logo = Logo::find($request->id);

        if (file_exists('upload/logo_images/' . $logo->image) and !empty($logo->image)) {
            unlink('upload/logo_images/' . $logo->image);
        }

        $logo->delete();

        return redirect()->route('logos.view')->with('success', 'Data Deleted Successfully');
    }
}
