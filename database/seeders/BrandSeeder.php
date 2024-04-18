<?php

namespace Database\Seeders;

use App\Helpers\SeederHelper;
use App\Models\BrandModel;
use Illuminate\Database\Seeder;

class BrandSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $this->command->getOutput()->text("=====================Running Brand Seeder =====================");

        $this->command->getOutput()->progressStart(5);
        foreach (SeederHelper::BrandModels as $key=>$brand){
            BrandModel::create([
                "name"=>$brand
            ]);
            $this->command->getOutput()->progressAdvance(1);
        }
        $this->command->getOutput()->progressFinish();

    }
}
