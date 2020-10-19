<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Communicate;
use App\Models\Logo;
use App\Models\Slider;
use App\Models\Contact;
use App\Models\About;
use App\Models\Product;
use App\Models\ProductSubImage;
use App\Models\ProductColor;
use App\Models\ProductSize;
use App\Models\Size;
use App\Models\Color;
use Illuminate\Support\Facades\Mail;

use Cart;

class CartController extends Controller
{
    public function addToCart(Request $request)
    {
        $this->validate($request, [
            'size_id' => 'required',
            'color_id' => 'required',
        ]);

        $product = Product::where('id', $request->id)->first();
        $product_size = Size::where('id', $request->size_id)->first();
        $product_color = Color::where('id', $request->color_id)->first();

        Cart::add([
            'id' => $product->id,
            'qty' => $request->qty,
            'price' => $product->price,
            'name' => $product->name,
            'weight' => 550,
            'options' => [
                'size_id' => $request->size_id,
                'size_name' => $product_size->name,
                'color_id' => $request->color_id,
                'color_name' => $product_color->name,
                'image' => $product->image
            ],

        ]);

        return redirect()->route('show.cart')->with('success', 'Product added successfully');
    }

    public function showCart()
    {
        $data['logo'] = Logo::first();
        $data['contact'] = Contact::first();
        return view('frontend.single_pages.shopping-cart', $data);
    }

    public function updateCart(Request $request)
    {
        Cart::update($request->rowId,$request->qty);
        return redirect()->route('show.cart')->with('success', 'Product updated successfully');

    }

    public function deleteCart($rowId)
    {
        Cart::remove($rowId);
        return redirect()->route('show.cart')->with('success', 'Product deleted successfully');
    }
}
