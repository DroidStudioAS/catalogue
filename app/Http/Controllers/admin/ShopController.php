<?php

namespace App\Http\Controllers\admin;

use App\Helpers\ProductHelper;
use App\Http\Controllers\Controller;
use App\Http\Requests\AddProductRequest;
use App\Http\Requests\EditProductRequest;
use App\Models\BrandModel;
use App\Models\ProductModel;
use Illuminate\Http\RedirectResponse;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;
use Illuminate\View\View;

class ShopController extends Controller
{
    public function index(): View
    {
        $products = ProductModel::all();

        return view("admin.admin_shop", compact("products"));
    }
    public function deleteProduct(ProductModel $product): RedirectResponse
    {
        //delete product image from server storage
        $directoryToDelete = $product->image_route();
        if (Storage::exists($directoryToDelete)) {
            Storage::deleteDirectory($directoryToDelete);
        }

        $product->delete();

        return redirect()->back()->with("message","deleted {$product->brand->name} {$product->name}");
    }
    public function editProduct(ProductModel $product, EditProductRequest $request): RedirectResponse
    {
        //handle image upload
        $file = $request->file('image_name');

        if ($file) {
            ProductHelper::updateProductImage($file,$product);
        }
        //rename image directory
        if($request->name!==$product->name || intval($request->brand_id)!==$product->brand_id) {
            ProductHelper::updateImageDirectory($request, $product);
        }
        $product->update($request->except("_token","image_name"));


        return redirect()->back()->with("message", "Product Updated");
    }

    public function addProduct(AddProductRequest $request): RedirectResponse
    {
        $product = ProductModel::create($request->except("_token","image_name"));
        //upload file
        $file = $request->file('image_name');
        if ($file) {
           ProductHelper::uploadProductImage($file, $product);
        }

        return redirect()->back()->with("message","Created {$product->brand->name} {$product->name}");
    }

    public function pushToAddPage(): View
    {
        $categories = BrandModel::all();
        return view("admin.admin_add_product",compact("categories"));
    }
    public function pushToEditPage(ProductModel $product): View
    {
        $categories = BrandModel::all();
        return view("admin.admin_edit_shop",compact("product","categories"));
    }
}
