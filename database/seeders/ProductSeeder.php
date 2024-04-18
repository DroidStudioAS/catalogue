<?php

namespace Database\Seeders;

use App\Helpers\SeederHelper;
use App\Models\ProductModel;
use Illuminate\Database\Seeder;

class ProductSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $this->command->getOutput()->text("=====================Running Product Seeder =====================");

        $this->command->getOutput()->progressStart(17);
        foreach (SeederHelper::ProductModels as $index=>$product){
            ProductModel::create([
                "brand_id"=>$product["brand_id"],
                "name"=>$product["name"],
                "description"=>$product["description"],
                "price"=>$product["price"]
            ]);
            $this->command->getOutput()->progressAdvance(1);
        }
    }
}
