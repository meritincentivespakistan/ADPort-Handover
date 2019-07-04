<?php

namespace Modules\Reward\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use Maatwebsite\Excel\Facades\Excel;
use Modules\Reward\Imports\CategoryImport;
use Modules\Reward\Models\Product;
use Modules\Reward\Models\ProductCatalog;
use Modules\Reward\Models\ProductCategory;

class ImportsController extends Controller
{
    public function import(Request $request, $program_id)
    {

        //todo move uploaded file to a folder
        $file = $request->file('products');

        $uploaded = $file->move(public_path('uploaded/'.$program_id.'/products/csv/'), $file->getClientOriginalName());

        $products = Excel::toCollection(new CategoryImport(), $uploaded->getRealPath());


        $products = array_slice($products[0]->toArray(), 1);


        $validated_data = \Validator::make($products, [
//            "21.*" => 'required',
//            "22.*" => 'required',
//            "1.*" => "required|string",
//            "59.*" => "required|url",
        ]);

        if ($validated_data->fails()){
            return response()->json($validated_data->errors());
        }

        foreach ($products as $product){

            $catalog = ProductCatalog::updateOrCreate([
                'name' => $product[2],
            ]);

            if ($product[3] !== NULL){
                $category = ProductCategory::updateOrCreate([
                    'name' => $product[3],
                    'catalog' => $catalog->id
                ]);
            }

            Product::updateOrCreate([
                'name' => $product[0] ?? '',
                'image' => $product[1] ?? '',
                'sku' => $product[4] ?? '',
                'value' => $product[5] ?? '',
                'base_price' => NULL,
                'quantity' => 'available',

                'category_id' => $category->id ?? NULL,
                'catalog_id' => $catalog->id,
            ]);
        }

        return response()->json([
            'uploaded_file' => url('uploaded/'.$program_id.'/users/csv/'.$uploaded->getFilename()),
            'message' => 'Data Imported Successfully'
        ]);
    }
}
