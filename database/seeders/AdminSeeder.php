<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Support\Facades\Validator;
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
        $email = $this->command->getOutput()->ask("Set An Email For 1 Admin For Easier Access??", "admin@mail.com");

        $validator = Validator::make([
            "password"=>$passwordToSet,
            "email"=>$email
        ],[
            "password"=>"required|string",
            "email"=>"required|email"
        ]);

        if($validator->fails()){
            foreach ($validator->errors()->all() as $error){
                $this->command->getOutput()->error($error);
            }
            die();
        }

        $faker = Factory::create();

        $this->command->getOutput()->progressStart($numberOfAdmins);
        for($i=0; $i<$numberOfAdmins; $i++){
            User::create([
                "name"=>$faker->name(),
                "email"=>$i===0?$email:$faker->email(),
                "password"=>Hash::make($passwordToSet),
                "role"=>"admin"
            ]);
            $this->command->getOutput()->progressAdvance(1);
        }
        $this->command->getOutput()->progressFinish();

    }
}
