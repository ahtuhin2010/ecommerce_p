<!DOCTYPE html>
<html lang="en">

<style class="text\css">
    .mytable tr td {
        padding: 10px;
    }
</style>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer Invoice</title>
</head>

<body>
    <center>
        <table class="mytable" width="900px" border="1">
            <tr style="text-align: center;">
                <td width="30%">
                    <img src="{{ url('upload/logo_images/'. $logo->image) }}" alt="IMG-LOGO">
                </td>
                <td width="40%">
                    <h4><strong>Furnish Furniture</strong></h4>
                    <span><strong>Mobile No : </strong>{{ $contact->mobile_no }}</span><br>
                    <span><strong>Email : </strong>{{ $contact->email }}</span><br>
                    <span><strong>Address : </strong>{{ $contact->address }}</span>
                </td>
                <td width="30%">
                    <strong>Order No : # {{ $order->order_no }}</strong>
                </td>
            </tr>
            <tr style="text-align: center;">
                <td><strong>Billing Info</strong></td>
                <td colspan="2" style="text-align: left;">
                    <strong>Name :</strong> {{ $order['shipping']['name'] }} &nbsp; &nbsp; &nbsp; &nbsp;
                    <strong>Mobile No :</strong> {{ $order['shipping']['mobile_no'] }} <br>
                    <strong>Email :</strong> {{ $order['shipping']['email'] }} &nbsp; &nbsp; &nbsp; &nbsp;
                    <strong>Address :</strong> {{ $order['shipping']['address'] }} <br>
                    <strong>Payment :</strong>
                    {{ $order['payment']['payment_method'] }}
                    @if ($order['payment']['payment_method'] == 'Bkash')
                    (Transaction No : {{ $order['payment']['transaction_no'] }})
                    @endif
                </td>
            </tr>
            <tr style="text-align: center;">
                <td colspan="3"><strong>Order Details</strong></td>
            </tr>
            <tr style="text-align: center;">
                <td><strong>Product name & Image</strong></td>
                <td><strong>Color & Size</strong></td>
                <td><strong>Quantity & Price</strong></td>
            </tr>
            @foreach ($order['order_details'] as $details)
            <tr style="text-align: center;">
                <td><img id="showImage" src="{{ url('upload/product_images/'.$details['product']['image']) }}" style="width: 100px; height:105px;">
                    <br><br> {{ $details['product']['name'] }}
                </td>
                <td>
                    {{ $details['color']['name'] }} & {{ $details['size']['name'] }}
                </td>
                <td>
                    @php
                    $sub_total = $details->quantity * $details['product']['price']
                    @endphp

                    {{ $details->quantity }} x {{ $details['product']['price'] }} = {{ $sub_total }} TK
                </td>
            </tr>
            @endforeach
            <tr>
                <td colspan="2" style="text-align: right;"><strong>Grand Total</strong></td>
                <td><strong>{{ $order->order_total }} TK</strong></td>
            </tr>
        </table>
    </center>

</body>

</html>
