# CodeRed | A Platform for Holding Coding Contests

This application is based on the MVC Framework and the backend is on PHP.
The application uses [ToroPHP](https://github.com/anandkunal/ToroPHP) for routing and [Twig](https://github.com/twigphp/Twig) for templates.

### Set Up : 
- Clone the repository.
- Copy over `config/config.example.php` to `config/config.php` and edit the values.
- Copy over `config/codered.local.conf` to `/etc/apache2/sites-available/codered.local.conf`, edit it and enable it(`sudo a2ensite codered.local.conf`), and add entry in hosts file(`/etc/hosts`).
- Enable mod_rewrite(`sudo a2enmod rewrite`) and restart apache(`sudo service apache2 restart`).
- Import schema `schema/codered.sql`.
- Install composer (`curl -sS https://getcomposer.org/installer | php`) and run `composer install` to install all the dependencies.

### TO-DOs :
- Login and session storage.
- Hold multiple contests at once.
- Timer and Announcement.

### Website :
 - Home page :

![Home](/docs/home.png)

 - Problems page :

![Home](/docs/problem_set.png)

 - Announcement page :

![Home](/docs/announcements.png)

 - Leaderboard :

![Home](/docs/leaderboard.png)
