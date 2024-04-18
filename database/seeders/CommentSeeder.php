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
        $this->command->getOutput()->text("=====================Running Comment Seeder =====================");

        $status="";
        $numOfComments = $this->command->getOutput()->ask("How many comments to you want to generate per post", 3);
        $choiceOfCommentStatus = intval($this->command->getOutput()->ask("Do you want to randomize the status of generated comments, or generate only approved or banned comments? [1,2,3]",0));
        if($choiceOfCommentStatus<1 || $choiceOfCommentStatus>3){
            $this->command->getOutput()->error("You must choose 0, 1 or 2");
            die();
        }
        if($choiceOfCommentStatus===2){
            $status="approved";
        }else if($choiceOfCommentStatus===3){
            $status="pending";
        }
        $faker = Factory::create();

        $this->command->getOutput()->progressStart($numOfComments*count(ProductModel::all()));

        foreach (ProductModel::all() as $product){
            for($i=0; $i<$numOfComments; $i++){
                if($choiceOfCommentStatus===1){
                    $status=rand(0,1)===1?"approved":"pending";
                }
                CommentModel::create([
                    "product_id"=>$product->id,
                    "name"=>$faker->name(),
                    "email"=>$faker->email(),
                    "comment"=>$faker->paragraph(1),
                    "status"=>$status
                ]);

                $this->command->getOutput()->progressAdvance(1);
            }
        }
        $this->command->getOutput()->progressFinish();

    }
}
