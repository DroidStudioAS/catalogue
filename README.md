<h1 style="text-align: center">Catalogue App, SladIT Technical Assignment</h1>
<p>In this file, you will find:</p>
<ol>
    <li>Instructions on how to set up the app on your machine</li>
    <li>An overview of all the functions available in the app</li>
</ol>

<h2>1) Setup Guide</h2>
<p>Follow the next steps:</p>
<ol>
    <li>
        Create a new Database named "catalogue", OR import the database called database.sql from the root directory of this project
    </li>
    <li>
        Create a new file called .env in the project's root directory, and copy the contents of .env.example into it.
    </li>
    <li>
        Run the command <code>composer install</code> to install all project dependencies.
    </li>
    <li>
        IF YOU IMPORTED THE DATABASE SKIP TO STEP 5). If you did not import it, then:
        <ol>
            <li>
                Run the command <code>php artisan migrate</code>.
            </li>
            <li>
                Run the following set of commands IN THE EXACT ORDER, and follow their instructions:
                <ul>
                    <li><code>php artisan db:seed --class=adminseeder</code></li>
                    <li><code>php artisan db:seed --class=brandseeder</code></li>
                    <li><code>php artisan db:seed --class=productseeder</code></li>
                    <li><code>php artisan db:seed --class=commentseeder</code></li>
                </ul>
                At this point, your database is filled with mock data.
            </li>
        </ol>
    </li>
    <li>
        Move the <code>res</code> folder located in the root directory of the project to the location <code>storage/app/public</code>.
    </li>
    <li>
        Run the command <code>php artisan storage:link</code>.
    </li>
    <li>That's all! You can now run <code>php artisan serve</code> and browse the project fully set up! In the app footer, you will find the login link for admins. Just make sure you remember the credentials you entered in step 4). If you imported the database, your credentials are: email: admin@mail.com, password: 1234.</li>
</ol>

<h2>2) App Overview</h2>
<p>Regular Users can:</p>
<ul>
    <li>Browse products on the homepage or on the shop page. The homepage displays 9 products, while on the shop page all the products are displayed. The shop page also has a search function for filtering products, which you can access by clicking the "Show Filters" Button on the right side of the screen.</li>
    <li>When hovering over a product, the "show comments" button will be displayed. If clicked, it will display all the comments for that product, and at the bottom, there is a form where users can leave their own comment.</li>
    <li>ONLY comments approved by the admin will be displayed.</li>
</ul>
<p>Admins can:</p>
<ul>
    <li>Select which comments to approve by accessing the "comments" section in the app navigation. Comments can also be unapproved (banned) and deleted.</li>
    <li>The comment section of the website comes with a search function for admins, where they can filter out the comments they want to see.</li>
    <li>Admins also have full access to the website products, being able to delete, edit, and create new products through the "Edit Shop" section of the website (accessible through the navigation).</li>
    <li>Just keep in mind, only JPEG pictures are supported for the product image.</li>
</ul>

<h1>Thank you very much for your time!</h1>
