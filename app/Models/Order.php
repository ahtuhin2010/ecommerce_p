<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    public function payment()
    {
        return $this->belongsTo(Payment::class,'payment_id','id');
    }

    public function shipping()
    {
        return $this->belongsTo(Shipping::class, 'shipping_id', 'id');
    }

    public function order_details()
    {
        return $this->hasMany(OderDetail::class, 'order_id', 'id');
    }
}
