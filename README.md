<h1 style="text-align: center">
Catalogue App, SladIT Technichal Assigment
</h1>
<p>In this file you will find: </p>
<ol>
    <li>Instructions on how to set up the app on your machine</li>
    <li>An overview of all the functions available in the app</li>
</ol>

<h2>1)Setup Guide</h2>
<p>Follow the next steps:</p>
<ol>
    <li>
        Create a new Database named "catalogue", OR import the database called database.sql from the root directory on this project
    </li>
    <li>
        Create a new file, called .env, in the projects root directory, and copy the contents of .env.example into it (root directory of the project)
    </li>
    <li>
        Run the command "composer install", to install all project dependencies
    </li>
    <li>
        IF YOU IMPORTED THE DATABASE SKIP TO STEP 5). If you did not import it, then:
        <ol>
            <li>
                    Run the command "php artisan migrate"
            </li>
            <li>
            Run The following set of commands IN THE EXACT ORDER, and follow there instructions:
            <ul>
            <li>php artisan db:seed --class=adminseeder</li>
            <li>php artisan db:seed --class=brandseeder</li>
            <li>php artisan db:seed --class=productseeder</li>
            <li>php artisan db:seed --class=commentseeder</li>
            </ul>
            At this point your database is filled with mock data
            </li>
        </ol>
    </li>
    <li>
        Move the res folder, located in the root directory of the project, to the location "storage/app/public"
    </li>
    <li>
        Run the command "php artisan storage:link"
    </li>
    <li>Thats All! You can now run php artisan serve, and browse the project fully set up! In the app footer you will find the login link for admins, just make sure you remember the credentials you entered in step 4) If you imported the database, your credentials are: email:admin@mail.com, password:1234</li>
</ol>
<h2>2)App Overview</h2>
    <p>Regular Users can:</p>
    <ul>
        <li>Browse products on the homepage, or on the shop page. The homepage displays 9 products, while on the shop page all the products are displayed. The shop page also has a search function, for filtering products, which you can access by clicking the "Show Filters" Button on the right side of the screen</li>
        <li>When hovering over a product, the show comments button will be displayed. If clicked, it will display all the comments for that product, and at the bottom there is a form where users can leave there own comment</li>
        <li>ONLY comments approved by the admin will be displayed</li>
    </ul>
    <p>Admins can:</p>
       <ul>
           <li>Select which comments to approve, by accessing the "comments" section in the app navigation. Comments can also be unapproved (baned) and deleted</li>
           <li>The Comment section of the website comes with a search function for admins, where they can filter out the comments they want to see</li>
           <li>Admins also have full access of the website products, being able to delete, edit and create new products, through the "Edit Shop" section of the website (accessible through the navigation)</li>
            <li>Just keep in mind, only JPEG pictures are supported for the product image</li>
        </ul>

<h1>Thank you very much for your time</h1>
    
