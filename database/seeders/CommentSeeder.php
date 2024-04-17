<?php

namespace Database\Seeders;

use App\Models\CommentModel;
use App\Models\ProductModel;
use Faker\Factory;
use Illuminate\Database\Seeder;

class CommentSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $numOfComments = $this->command->getOutput()->ask("How many comments to you want to generate per post", 3);
        $faker = Factory::create();
        foreach (ProductModel::all() as $product){
            for($i=0; $i<$numOfComments; $i++){
                CommentModel::create([
                    "product_id"=>$product->id,
                    "name"=>$faker->name(),
                    "email"=>$faker->email(),
                    "comment"=>$faker->paragraph(1),
                    "status"=>"approved"
                ]);
            }
        }
    }
}
