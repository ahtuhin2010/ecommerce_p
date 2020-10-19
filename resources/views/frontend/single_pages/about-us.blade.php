@extends('frontend.layouts.master')
@section('content')

<!-- Title page -->
<section class="bg-img1 txt-center p-lr-15 p-tb-92" style="background-image: url('frontend/images/bg-01.jpg');">
    <h2 class="ltext-105 cl0 txt-center">
        About us
    </h2>
</section>

<section class="about_us">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <p style="padding: 50px;">
                    {{ $about->description }}
                </p>
            </div>
        </div>
    </div>
</section>

@endsection
