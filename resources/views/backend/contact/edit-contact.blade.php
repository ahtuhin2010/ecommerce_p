@extends('backend.layouts.master')

@section('content')
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0 text-dark">Manage Contact</h1>
                </div><!-- /.col -->
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="{{ route('home') }}">Home</a></li>
                        <li class="breadcrumb-item active">Contact</li>
                    </ol>
                </div><!-- /.col -->
            </div><!-- /.row -->
        </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">

            <!-- Main row -->
            <div class="row">
                <!-- Left col -->
                <section class="col-md-12">
                    <!-- Custom tabs (Charts with tabs)-->
                    <div class="card">
                        <div class="card-header">
                            <h3>Edit Contact
                                <a class="btn btn-success float-right btn-sm" href="{{ route('contacts.view') }}"><i class="fa fa-list"></i> Contact List</a>
                            </h3>
                        </div><!-- /.card-header -->
                        <div class="card-body">
                            <form method="post" action="{{ route('contacts.update', $editData->id) }}" id="myForm">
                                @csrf

                                <div class="form row">
                                    <div class="form-group col-md-4">
                                        <label for="address">Address</label>
                                        <input type="text" name="address" value="{{ $editData->address }}" class="form-control">
                                    </div>

                                    <div class="form-group col-md-4">
                                        <label for="mobile_no">Mobile No</label>
                                        <input type="text" name="mobile_no" value="{{ $editData->mobile_no }}" class="form-control">
                                    </div>

                                    <div class="form-group col-md-4">
                                        <label for="email">Email</label>
                                        <input type="email" name="email" value="{{ $editData->email }}" class="form-control">
                                    </div>

                                    <div class="form-group col-md-4">
                                        <label for="facebook">Facebook</label>
                                        <input type="text" name="facebook" value="{{ $editData->facebook }}" class="form-control">
                                    </div>

                                    <div class="form-group col-md-4">
                                        <label for="twitter">Twitter</label>
                                        <input type="text" name="twitter" value="{{ $editData->twitter }}" class="form-control">
                                    </div>

                                    <div class="form-group col-md-4">
                                        <label for="youtube">Youtube</label>
                                        <input type="text" name="youtube" value="{{ $editData->youtube }}" class="form-control">
                                    </div>

                                    <div class="form-group col-md-4">
                                        <label for="google_plus">Google Plus</label>
                                        <input type="text" name="google_plus" value="{{ $editData->google_plus }}" class="form-control">
                                    </div>

                                    <div class="form-group col-md-6" style=" padding-top: 30px">
                                        <input type="submit" value="Update" class="btn btn-primary">
                                    </div>

                                </div>
                            </form>
                        </div><!-- /.card-body -->
                    </div>
                    <!-- /.card -->
                </section>
                <!-- /.Left col -->
                <!-- right col (We are only adding the ID to make the widgets sortable)-->
                <section class="col-lg-5 connectedSortable">

                </section>
                <!-- right col -->
            </div>
            <!-- /.row (main row) -->
        </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
</div>
<!-- /.content-wrapper -->

<script type="text/javascript">
    $(document).ready(function() {
        $('#myForm').validate({
            rules: {
                address: {
                    required: true,
                },
                mobile_no: {
                    required: true,
                },
                email: {
                    required: true,
                    email: true,
                },
                facebook: {
                    required: true,
                },
                twitter: {
                    required: true,
                },
                youtube: {
                    required: true,
                },
                google_plus: {
                    required: true,
                }
            },
            messages: {
                address: {
                    required: "Please enter address",
                },
                mobile_no: {
                    required: "Please enter mobile_no",
                },
                email: {
                    required: "Please enter a email address",
                    email: "Please enter a <em>email</em>vaild  address"
                },
                facebook: {
                    required: "Please enter your facebook url",
                },
                twitter: {
                    required: "Please enter your twitter url",
                },
                youtube: {
                    required: "Please enter your youtube url",
                },
                google_plus: {
                    required: "Please enter your google plus url",
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
