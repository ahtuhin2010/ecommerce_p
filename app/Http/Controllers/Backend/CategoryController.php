<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Category;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use App\Http\Requests\CategoryRequest;

class CategoryController extends Controller
{
    public function view()
    {
        $data['allData'] = Category::all();
        return view('backend.category.view-category', $data);
    }

    public function add()
    {
        return view('backend.category.add-category');
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            'name' => 'required|unique:categories,name'
        ]);

        $data = new Category();
        $data->name = $request->name;
        $data->created_by = Auth::user()->id;

        $data->save();

        return redirect()->route('categories.view')->with('success', 'Data Inserted Successfully');
    }

    public function edit($id)
    {
        $editData = Category::find($id);
        return view('backend.category.add-category', compact('editData'));
    }

    public function update(CategoryRequest $request, $id)
    {
        $data = Category::find($id);
        $data->name = $request->name;
        $data->updated_by = Auth::user()->id;

        $data->save();

        return redirect()->route('categories.view')->with('success', 'Data Updated Successfully');
    }

    public function delete(Request $request)
    {
        $slider = Category::find($request->id);

        $slider->delete();

        return redirect()->route('categories.view')->with('success', 'Data Deleted Successfully');
    }
}
