<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\Contact;
use App\Models\Communicate;

class ContactController extends Controller
{
    public function view()
    {
        $data['countContact'] = Contact::count();
        $data['allData'] = Contact::all();
        return view('backend.contact.view-contact', $data);
    }

    public function add()
    {
        return view('backend.contact.add-contact');
    }

    public function store(Request $request)
    {

        $data = new Contact();
        $data->address = $request->address;
        $data->mobile_no = $request->mobile_no;
        $data->email = $request->email;
        $data->facebook = $request->facebook;
        $data->twitter = $request->twitter;
        $data->youtube = $request->youtube;
        $data->google_plus = $request->google_plus;
        $data->created_by = Auth::user()->id;

        $data->save();

        return redirect()->route('contacts.view')->with('success', 'Data Inserted Successfully');
    }

    public function edit($id)
    {
        $editData = Contact::find($id);
        return view('backend.contact.edit-contact', compact('editData'));
    }

    public function update(Request $request, $id)
    {
        $data = Contact::find($id);
        $data->address = $request->address;
        $data->mobile_no = $request->mobile_no;
        $data->email = $request->email;
        $data->facebook = $request->facebook;
        $data->twitter = $request->twitter;
        $data->youtube = $request->youtube;
        $data->google_plus = $request->google_plus;
        $data->updated_by = Auth::user()->id;

        $data->save();

        return redirect()->route('contacts.view')->with('success', 'Data Updated Successfully');
    }

    public function delete(Request $request)
    {
        $slider = Contact::find($request->id);

        $slider->delete();

        return redirect()->route('contacts.view')->with('success', 'Data Deleted Successfully');
    }

    public function viewCommunicate()
    {
        $allData = Communicate::orderBy('id', 'desc')->get();
        return view('backend.contact.view-communicate', compact('allData'));
    }

    public function deleteCommunicate(Request $request)
    {
        $communicate = Communicate::find($request->id);
        $communicate->delete();

        return redirect()->route('contacts.communicate')->with('success', 'Data Deleted Successfully');
    }
}
