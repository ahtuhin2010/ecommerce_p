<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Shipping;
use App\Models\Payment;
use App\Models\Order;
use App\Models\OderDetail;

class OrderController extends Controller
{
    public function pendingList()
    {
        $data['orders'] = Order::where('status', 0)->get();
        return view('backend.order.pending-list', $data);
    }

    public function approvedList()
    {
        $data['orders'] = Order::where('status', 1)->get();
        return view('backend.order.approved-list', $data);
    }

    public function details($id)
    {
        $data['order'] = Order::find($id);
        return view('backend.order.order-details', $data);
    }

    public function approved(Request $request)
    {
        $order = Order::find($request->id);
        $order->status = 1;
        $order->save();
    }
}
