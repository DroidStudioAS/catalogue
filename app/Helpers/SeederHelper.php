<?php

namespace App\Helpers;

class SeederHelper{
    const BrandModels = array(
        0=>"Audi",
        1=>"Mercedes",
        2=>"Alfa Romeo",
        3=>"Lada"
    );
    const ProductModels = array(
        0 => array("brand_id" => 1, "name" => "M3", "description" => "Powerful sports sedan with precise handling.", "price" => 60000),
        1 => array("brand_id" => 1, "name" => "X5", "description" => "Luxurious SUV with advanced technology.", "price" => 75000),
        2 => array("brand_id" => 1, "name" => "Z4", "description" => "Sleek convertible designed for performance.", "price" => 55000),
        3 => array("brand_id" => 1, "name" => "i8", "description" => "Futuristic hybrid supercar with striking design.", "price" => 150000),
        4 => array("brand_id" => 2, "name" => "A4", "description" => "Elegant sedan offering comfort and sophistication.", "price" => 45000),
        5 => array("brand_id" => 2, "name" => "Q7", "description" => "Spacious SUV with cutting-edge features.", "price" => 85000),
        6 => array("brand_id" => 2, "name" => "TT", "description" => "Iconic coupe known for its sporty performance.", "price" => 60000),
        7 => array("brand_id" => 2, "name" => "RS5", "description" => "High-performance coupe with dynamic styling.", "price" => 95000),
        8 => array("brand_id" => 3, "name" => "C-Class", "description" => "Refined sedan delivering luxury and performance.", "price" => 50000),
        9 => array("brand_id" => 3, "name" => "E-Class", "description" => "Executive sedan with unparalleled comfort.", "price" => 65000),
        10 => array("brand_id" => 3, "name" => "GLC", "description" => "Versatile SUV blending style and practicality.", "price" => 60000),
        11 => array("brand_id" => 3, "name" => "S-Class", "description" => "Flagship luxury sedan setting new standards.", "price" => 90000),
        12 => array("brand_id" => 4, "name" => "Giulia", "description" => "Sporty sedan with Italian flair and performance.", "price" => 55000),
        13 => array("brand_id" => 4, "name" => "Stelvio", "description" => "Dynamic SUV combining style and agility.", "price" => 70000),
        14 => array("brand_id" => 5, "name" => "Niva", "description" => "Robust off-road vehicle built for adventure.", "price" => 25000),
        15 => array("brand_id" => 5, "name" => "Granta", "description" => "Compact sedan offering practicality and value.", "price" => 15000),
        16 => array("brand_id" => 5, "name" => "Vesta", "description" => "Modern sedan with sleek design and comfort.", "price" => 20000)
    );

}
