<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\User;
use Illuminate\Http\Request;
use Symfony\Component\VarDumper\Cloner\Data;

class UserController extends Controller
{
    public function view()
    {
        $allData = User::where('usertype', 'admin')->where('status', 1)->get();
        return view('backend.user.view-user', compact('allData'));
    }

    public function add()
    {
        return view('backend.user.add-user');
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            'name' => 'required',
            'email' => 'required|unique:users,email'
        ]);

        $data = new User();

        $data->usertype = 'admin';
        $data->role = $request->role;
        $data->name = $request->name;
        $data->email = $request->email;
        $data->password = bcrypt($request->password);
        $data->save();

        return redirect()->route('users.view')->with('success', 'Data Inserted Successfully');
    }

    public function edit($id)
    {
        $editData = User::find($id);
        return view('backend.user.edit-user', compact('editData'));
    }

    public function update(Request $request, $id)
    {
        $data = User::find($id);

        $data->role = $request->role;
        $data->name = $request->name;
        $data->email = $request->email;
        $data->save();

        return redirect()->route('users.view')->with('success', 'Data Updated Successfully');
    }

    public function delete(Request $request)
    {
        $user = User::find($request->id);

        if (file_exists('upload/user_images/' . $user->image) and !empty($user->image)) {
            unlink('upload/user_images/' . $user->image);
        }

        $user->delete();

        return redirect()->route('users.view')->with('success', 'Data Deleted Successfully');
    }

}
