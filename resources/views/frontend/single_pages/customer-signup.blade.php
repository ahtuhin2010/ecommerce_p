@extends('frontend.layouts.master')
@section('content')

<style type="text/css">
    #login .container #login-row #login-column #login-box {
        margin-top: 60px;
        margin-bottom: 60px;
        max-width: 600px;
        border: 1px solid #9C9C9C;
        background-color: #EAEAEA;
    }

    #login .container #login-row #login-column #login-box #login-form {
        padding: 20px;
    }

    #login .container #login-row #login-column #login-box #login-form #register-link {
        margin-top: -85px;
    }
</style>

<!-- Title page -->
<section class="bg-img1 txt-center p-lr-15 p-tb-92" style="background-image: url('frontend/images/bg-01.jpg');">
    <h2 class="ltext-105 cl0 txt-center">
        Customer Sign Up
    </h2>
</section>

<div id="login">
    <div class="container">
        <div id="login-row" class="row justify-content-center align-items-center">
            <div id="login-column" class="col-md-6">
                <div id="login-box" class="col-md-12">
                    <form id="login-form" class="form" action="{{ route('signup.store') }}" method="post">
                        @csrf
                        <h3 class="text-center text-info">Sign Up</h3>
                        <div class="form-group">
                            <label class="text-info">Full Name:</label><br>
                            <input type="text" name="name" id="name" class="form-control">
                            <font color="red">{{ ($errors->has('name'))?($errors->first('name')):'' }}</font>
                        </div>
                        <div class="form-group">
                            <label class="text-info">Email:</label><br>
                            <input type="email" name="email" id="email" class="form-control">
                            <font color="red">{{ ($errors->has('email'))?($errors->first('email')):'' }}</font>
                        </div>
                        <div class="form-group">
                            <label class="text-info">Mobile Number:</label><br>
                            <input type="text" name="mobile" id="mobile" class="form-control">
                            <font color="red">{{ ($errors->has('mobile'))?($errors->first('mobile')):'' }}</font>
                        </div>
                        <div class="form-group">
                            <label class="text-info">Password:</label><br>
                            <input type="password" name="password" id="password" class="form-control">
                            <font color="red">{{ ($errors->has('password'))?($errors->first('password')):'' }}</font>
                        </div>
                        <div class="form-group">
                            <label class="text-info">Confirm Password:</label><br>
                            <input type="password" name="confirmation_password" id="confirmation_password" class="form-control">
                        </div>
                        <div class="form-group">
                            <input type="submit" name="submit" class="btn btn-info btn-md" value="Sing up">
                            <i class="fa fa-user"></i> Have you account ? <a href="{{ route('coustomer.login') }}"><span>Login Here</span></a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>


<script type="text/javascript">
    $(document).ready(function() {
        $('#login-form').validate({
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
                password: {
                    required: true,
                    minlength: 8,
                },
                confirmation_password: {
                    required: true,
                    equalTo: '#password'
                }
            },
            messages: {
                name: {
                    required: "Please enter your full name",
                },
                email: {
                    required: "Please enter a email address",
                    email: "Please enter a <em>valid</em> email  address"
                },
                mobile: {
                    required: "Please enter your mobile number",
                },
                password: {
                    required: "Please provide a password",
                    minlength: "Your password must be at least 8 characters long"
                },
                confirmation_password: {
                    required: "Please enter confirm password",
                    equalTo: "Confirm password does not match"
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
