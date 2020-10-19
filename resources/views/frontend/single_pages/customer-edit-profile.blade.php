@extends('frontend.layouts.master')
@section('content')

<style class="text\css">
    .prof li {
        background: #1781bf;
        padding: 7px;
        margin: 3px;
        border-radius: 15px;
    }

    .prof li a {
        color: #fff;
        padding-left: 15px;
    }
</style>

<!-- Title page -->
<section class="bg-img1 txt-center p-lr-15 p-tb-92" style="background-image: url('frontend/images/bg-01.jpg');">
    <h2 class="ltext-105 cl0 txt-center">
        Edit Profile
    </h2>
</section>


<div class="container">
    <div class="row" style="padding: 15px 0px 15px 0px;">
        <div class="col-md-2">
            <ul class="prof">
                <li><a href="{{ route('dashboard') }}">My Profile</a></li>
                <li><a href="{{ route('customer.password.change') }}">Password Change</a></li>
                <li><a href="{{ route('customer.order.list') }}">My Order</a></li>
            </ul>
        </div>
        <div class="col-md-10">
            <h3>Edit Perofile</h3>
            <form method="post" action="{{ route('customer.update.profile') }}" enctype="multipart/form-data">
                @csrf
                <div class="row">
                    <div class="form-group col-md-4">
                        <label for="name">FUll Name</label>
                        <input type="text" name="name" value="{{ $editData->name }}" class="form-control">
                        <font color="red">{{ ($errors->has('name'))?($errors->first('name')):'' }}</font>
                    </div>
                    <div class="form-group col-md-4">
                        <label for="email">Email</label>
                        <input type="email" name="email" value="{{ $editData->email }}" class="form-control">
                        <font color="red">{{ ($errors->has('email'))?($errors->first('email')):'' }}</font>
                    </div>
                    <div class="form-group col-md-4">
                        <label for="mobile">Mobile No</label>
                        <input type="text" name="mobile" value="{{ $editData->mobile }}" class="form-control">
                        <font color="red">{{ ($errors->has('mobile'))?($errors->first('mobile')):'' }}</font>
                    </div>

                    <div class="form-group col-md-4">
                        <label for="address">Address</label>
                        <input type="text" name="address" value="{{ $editData->address }}" class="form-control">
                    </div>
                    <div class="form-group col-md-4">
                        <label for="gender">Gender</label>
                        <select name="gender" class="form-control">
                            <option value="">Select Gender</option>
                            <option value="Male" {{ ($editData->gender=="Male")?"selected":"" }}>Male</option>
                            <option value="Female" {{ ($editData->gender=="Female")?"selected":"" }}>Female</option>
                        </select>
                    </div>
                    <div class="form-group col-md-4">
                        <label for="image">Image</label>
                        <input type="file" name="image" id="image" class="form-control">
                    </div>
                    <div class="form-group col-md-2">
                        <img id="showImage" src="{{ (!empty($editData->image))?url('upload/user_images/'.$editData->image):url('upload/no_image.png') }}" style="width: 150px;height:160px;border: 1px solid #000;">
                    </div>
                    <div class="form-group col-md-4" style="padding-top: 60px;">
                        <button type="submit" class="btn btn-primary">Profile Update</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>

@endsection
