@extends('frontend.layouts.master')
@section('content')


<!-- Title page -->
<section class="bg-img1 txt-center p-lr-15 p-tb-92" style="background-image: url('frontend/images/bg-01.jpg');">
    <h2 class="ltext-105 cl0 txt-center">
        Contact
    </h2>
</section>

<!-- Content page -->
<section class="bg0 p-t-104 p-b-116">
    <div class="container">
        <div class="flex-w flex-tr">
            <div class="size-210 bor10 p-lr-70 p-t-55 p-b-70 p-lr-15-lg w-full-md">

                <form id="form" method="post" action="{{ route('contact.store') }}">
                    @csrf
                    <h4 class="mtext-105 cl2 txt-center p-b-30">
                        Send Us A Message
                    </h4>

                    @if(Session::get('success'))
                    <div class="alert alert-success alert-dismissible">
                        <button type="button" class="close" data-dismiss="alert">&times;</button>
                        <strong>{{Session::get('success')}}</strong> <br>
                    </div>
                    @endif

                    <div class="bor8 m-b-20 how-pos4-parent">
                        <input class="stext-111 cl2 plh3 size-116 p-l-62 p-r-30" type="text" name="name" id="name" placeholder="Your Name" value="">
                        <img class="how-pos4 pointer-none" src="{{ asset('frontend') }}/images/icons/user.png" alt="ICON">
                        <font color="red"><b></b></font>
                    </div>

                    <div class="bor8 m-b-20 how-pos4-parent">
                        <input class="stext-111 cl2 plh3 size-116 p-l-62 p-r-30" type="email" name="email" id="email" placeholder="Your Email Address" value="">
                        <img class="how-pos4 pointer-none" src="{{ asset('frontend') }}/images/icons/icon-email.png" alt="ICON">
                        <font color="red"><b></b></font>
                    </div>

                    <div class="bor8 m-b-20 how-pos4-parent">
                        <input class="stext-111 cl2 plh3 size-116 p-l-62 p-r-30" type="text" name="mobile" id="mobile" placeholder="Your Mobile Number" value="">
                        <img class="how-pos4 pointer-none" src="{{ asset('frontend') }}/images/icons/mobile.png" alt="ICON">
                        <font color="red"><b></b></font>
                    </div>

                    <div class="bor8 m-b-20 how-pos4-parent">
                        <input class="stext-111 cl2 plh3 size-116 p-l-62 p-r-30" type="text" name="address" id="address" placeholder="Your Address" value="">
                        <img class="how-pos4 pointer-none" src="{{ asset('frontend') }}/images/icons/user.png" alt="ICON">
                        <font color="red"><b></b></font>
                    </div>

                    <div class="bor8 m-b-30">
                        <textarea class="stext-111 cl2 plh3 size-120 p-lr-28 p-tb-25" name="msg" id="msg" placeholder="Your Message"></textarea>
                        <font color="red"><b></b></font>
                    </div>

                    <button type="submit" class="flex-c-m stext-101 cl2 size-119 bg8 bor13 hov-btn3 p-lr-15 trans-04 pointer m-tb-10">
                        Submit
                    </button>
                </form>
            </div>

            <div class="size-210 bor10 flex-w flex-col-m p-lr-93 p-tb-30 p-lr-15-lg w-full-md">
                <div class="flex-w w-full p-b-42">
                    <span class="fs-18 cl5 txt-center size-211">
                        <span class="lnr lnr-map-marker"></span>
                    </span>

                    <div class="size-212 p-t-2">
                        <span class="mtext-110 cl2">
                            Address
                        </span>

                        <p class="stext-115 cl6 size-213 p-t-18">
                            Notun bazar,Gulshan-Dhaka
                        </p>
                    </div>
                </div>

                <div class="flex-w w-full p-b-42">
                    <span class="fs-18 cl5 txt-center size-211">
                        <span class="lnr lnr-phone-handset"></span>
                    </span>

                    <div class="size-212 p-t-2">
                        <span class="mtext-110 cl2">
                            Lets Talk
                        </span>

                        <p class="stext-115 cl1 size-213 p-t-18">
                            +088 01928511049
                        </p>
                    </div>
                </div>

                <div class="flex-w w-full">
                    <span class="fs-18 cl5 txt-center size-211">
                        <span class="lnr lnr-envelope"></span>
                    </span>

                    <div class="size-212 p-t-2">
                        <span class="mtext-110 cl2">
                            Sale Support
                        </span>

                        <p class="stext-115 cl1 size-213 p-t-18">
                            asadullahkpi@gmail.com
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Map -->
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3650.5983460988937!2d90.42140761445673!3d23.79731309290065!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755c7ba919c9e8f%3A0x74c8c1dc2d04bd18!2sNatun%20Bazar%20Foot%20Over%20Bridge%2C%20Dhaka%201212!5e0!3m2!1sen!2sbd!4v1575619103631!5m2!1sen!2sbd" width="100%" height="300px" frameborder="0" style="border:0" allowfullscreen></iframe>
        </div>
    </div>
</div><br />



<script type="text/javascript">
    $(document).ready(function() {
        $('#form').validate({
            rules: {
                name: {
                    required: true,
                },
                email: {
                    required: true,
                    email: true,
                },
                mobile: {
                    required: true,
                },
                address: {
                    required: true,
                },
                msg: {
                    required: true,
                }
            },
            messages: {
                name: {
                    required: "Please enter address",
                },
                email: {
                    required: "Please enter a email address",
                    email: "Please enter a <em>valid</em> email  address"
                },
                mobile: {
                    required: "Please enter your facebook url",
                },
                address: {
                    required: "Please enter your twitter url",
                },
                msg: {
                    required: "Please enter your youtube url",
                },
            },
            errorElement: 'span',
            errorPlacement: function(error, element) {
                error.addClass('invalid-feedback');
                element.closest('.form-group').append(error);
            },
            highlight: function(element, errorClass, validClass) {
                $(element).addClass('is-invalid');
            },
            unhighlight: function(element, errorClass, validClass) {
                $(element).removeClass('is-invalid');
            }
        });
    });
</script>
@endsection
