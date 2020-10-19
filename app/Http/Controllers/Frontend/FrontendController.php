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
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\DB;

class FrontendController extends Controller
{
    public function index()
    {
        $data['logo'] = Logo::first();
        $data['sliders'] = Slider::all();
        $data['contact'] = Contact::first();
        $data['categories'] = Product::select('category_id')->groupBy('category_id')->get();
        $data['brands'] = Product::select('brand_id')->groupBy('brand_id')->get();
        $data['products'] = Product::orderBy('id', 'desc')->paginate(12);
        return view('frontend.layouts.home', $data);
    }

    public function productList()
    {
        $data['logo'] = Logo::first();
        $data['contact'] = Contact::first();
        $data['categories'] = Product::select('category_id')->groupBy('category_id')->get();
        $data['brands'] = Product::select('brand_id')->groupBy('brand_id')->get();
        $data['products'] = Product::orderBy('id', 'desc')->paginate(12);
        return view('frontend.single_pages.product-list', $data);
    }

    public function categoryWiseProduct($category_id)
    {
        $data['logo'] = Logo::first();
        $data['contact'] = Contact::first();
        $data['categories'] = Product::select('category_id')->groupBy('category_id')->get();
        $data['brands'] = Product::select('brand_id')->groupBy('brand_id')->get();
        $data['products'] = Product::where('category_id', $category_id)->orderBy('id', 'desc')->paginate(12);
        return view('frontend.single_pages.category-wise-product', $data);
    }

    public function brandWiseProduct($brand_id)
    {
        $data['logo'] = Logo::first();
        $data['contact'] = Contact::first();
        $data['categories'] = Product::select('category_id')->groupBy('category_id')->get();
        $data['brands'] = Product::select('brand_id')->groupBy('brand_id')->get();
        $data['products'] = Product::where('brand_id', $brand_id)->orderBy('id', 'desc')->paginate(12);
        return view('frontend.single_pages.brand-wise-product', $data);
    }

    public function productDetails($slug)
    {
        $data['logo'] = Logo::first();
        $data['contact'] = Contact::first();
        $data['product'] = Product::where('slug', $slug)->first();
        $data['product_sub_imges'] = ProductSubImage::where('product_id', $data['product']->id)->get();
        $data['product_colors'] = ProductColor::where('product_id', $data['product']->id)->get();
        $data['product_sizes'] = ProductSize::where('product_id', $data['product']->id)->get();
        return view('frontend.single_pages.product-details', $data);
    }

    public function shoppingCart()
    {
        $data['logo'] = Logo::first();
        $data['contact'] = Contact::first();
        return view('frontend.single_pages.shopping-cart', $data);
    }

    public function aboutUs()
    {
        $data['logo'] = Logo::first();
        $data['contact'] = Contact::first();
        $data['about'] = About::first();
        return view('frontend.single_pages.about-us', $data);
    }

    public function contactUs()
    {
        $data['logo'] = Logo::first();
        $data['contact'] = Contact::first();
        return view('frontend.single_pages.contact', $data);
    }

    public function contactStore(Request $request)
    {
        $contact = new Communicate();
        $contact->name = $request->name;
        $contact->email = $request->email;
        $contact->mobile = $request->mobile;
        $contact->address = $request->address;
        $contact->msg = $request->msg;

        $contact->save();

        $data = array(
            'name' => $request->name,
            'email' => $request->email,
            'mobile' => $request->mobile,
            'address' => $request->address,
            'msg' => $request->msg,
        );

        Mail::send('frontend.emails.contact',$data, function($message) use($data){
            $message->from('xpfun420@gmail.com', 'E-Commerce BD');
            $message->to($data['email']);
            $message->subject('Thanks for contact us');
        });

        return redirect()->back()->with('success', 'Your message successfully send');
    }

    public function findProduct(Request $request)
    {
        $slug = $request->slug;
        $data['product'] = Product::where('slug', $slug)->first();

        if ($data['product']) {
            $data['logo'] = Logo::first();
            $data['contact'] = Contact::first();
            $data['product'] = Product::where('slug', $slug)->first();
            $data['product_sub_imges'] = ProductSubImage::where('product_id', $data['product']->id)->get();
            $data['product_colors'] = ProductColor::where('product_id', $data['product']->id)->get();
            $data['product_sizes'] = ProductSize::where('product_id', $data['product']->id)->get();
            return view('frontend.single_pages.find-product', $data);

        } else {
            return redirect()->back()->with('error', 'No product does not match!');
        }

    }

    public function getProduct(Request $request)
    {
        $slug = $request->slug;
        $productData = DB::table('products')
                                ->where('slug', 'LIKE', '%'.$slug.'%')
                                ->get();
        $html = '';
        $html .= '<div><ul>';
        if ($productData) {
            foreach ($productData as $v) {
                $html .= '<li>'.$v->slug.'</li>';
            }
        }
        $html .= '</ul></div>';
        return response()->json($html);
    }


}
