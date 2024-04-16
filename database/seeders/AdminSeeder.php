<?php

namespace Database\Seeders;

use App\Models\User;
use Faker\Factory;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class AdminSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $numberOfAdmins = intval($this->command->getOutput()->ask("How Many Admins Do You Want To Create?", 1));
        if ($numberOfAdmins<=0) {
            $this->command->getOutput()->error("Number of admins must be an unsigned integer.");
            die();
        }
        $passwordToSet =  $this->command->getOutput()->ask("What Do You Want There Password To Be?", "12345678");

        $faker = Factory::create();

        $this->command->getOutput()->progressStart($numberOfAdmins);
        for($i=0; $i<$numberOfAdmins; $i++){
            User::create([
                "name"=>$faker->name(),
                "email"=>$faker->email(),
                "password"=>Hash::make($passwordToSet),
                "role"=>"admin"
            ]);
            $this->command->getOutput()->progressAdvance(1);
        }
        $this->command->getOutput()->progressFinish();

    }
}
