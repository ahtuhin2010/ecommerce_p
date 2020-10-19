@extends('backend.layouts.master')

@section('content')
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0 text-dark">Manage Approved Orders</h1>
                </div><!-- /.col -->
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="{{ route('home') }}">Home</a></li>
                        <li class="breadcrumb-item active">Orders Details Information</li>
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
                            <h3>Orders Details Information
                                <a class="btn btn-success float-right btn-sm" href="{{ route('orders.approved.list') }}"><i class="fa fa-list"></i> Order Approved List</a>
                            </h3>
                        </div><!-- /.card-header -->
                        <div class="card-body">
                            <table class="txt-center mytable" width="100%" border="1">
                                <tr>
                                    <td width="30%"><strong>&nbsp; &nbsp; Billing Info</strong></td>
                                    <td width="70%" colspan="2" style="text-align: left;">
                                        <strong>&nbsp; &nbsp; Name :</strong> {{ $order['shipping']['name'] }} &nbsp; &nbsp; &nbsp; &nbsp;
                                        <strong> Mobile No :</strong> {{ $order['shipping']['mobile_no'] }} <br>
                                        <strong>&nbsp; &nbsp; Email :</strong> {{ $order['shipping']['email'] }} &nbsp; &nbsp; &nbsp; &nbsp;
                                        <strong> Address :</strong> {{ $order['shipping']['address'] }} <br>
                                        <strong>&nbsp; &nbsp; Payment :</strong>
                                        {{ $order['payment']['payment_method'] }}
                                        @if ($order['payment']['payment_method'] == 'Bkash')
                                        (Transaction No : {{ $order['payment']['transaction_no'] }})
                                        @endif &nbsp; &nbsp; &nbsp; &nbsp;
                                        <strong>Order No : # {{ $order->order_no }}</strong>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3"><strong>&nbsp; &nbsp; Order Details</strong></td>
                                </tr>
                                <tr>
                                    <td><strong>&nbsp; &nbsp; Product name & Image</strong></td>
                                    <td><strong>&nbsp; &nbsp; Color & Size</strong></td>
                                    <td><strong>&nbsp; &nbsp; Quantity & Price</strong></td>
                                </tr>
                                @foreach ($order['order_details'] as $details)
                                <tr>
                                    <td>&nbsp; &nbsp; <img id="showImage" src="{{ url('upload/product_images/'.$details['product']['image']) }}" style="width: 100px; height:105px;">
                                        <br><br> &nbsp; &nbsp; {{ $details['product']['name'] }}
                                    </td>
                                    <td>
                                        &nbsp; &nbsp; {{ $details['color']['name'] }} & {{ $details['size']['name'] }}
                                    </td>
                                    <td>
                                        @php
                                        $sub_total = $details->quantity * $details['product']['price']
                                        @endphp

                                        &nbsp; &nbsp; {{ $details->quantity }} x {{ $details['product']['price'] }} = {{ $sub_total }} TK
                                    </td>
                                </tr>
                                @endforeach
                                <tr>
                                    <td colspan="2" style="text-align: right;"><strong>Grand Total &nbsp; &nbsp;</strong></td>
                                    <td><strong>&nbsp; &nbsp; {{ $order->order_total }} TK</strong></td>
                                </tr>
                            </table>
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

@endsection
