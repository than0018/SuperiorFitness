# Superior Fitness Website

This is the Git repository for Superior Fitness, an e-commerce website for gym equipment. This platform is developed
using the CakePHP framework.


## Compatibility Requirements

- PHP version: `7.4.x`
- CakePHP version: `4.4.x`
- MySQL: `5.7.x`
- Apache web server
- Composer
- Server version: 10.4.28-MariaDB

For detailed requirements, check the `composer.json` file.


## Installation

#### 1. Install XAMPP
Download the latest version of [XAMPP](https://www.apachefriends.org/index.html) suitable for your OS. During installation, ensure that PHP, Apache, and MySQL services are selected.

#### 2. Clone the repository.
If you don’t already have the repository, clone it using
```bash
git clone [repo-link]
```

#### 3. Move/copy the project
Copy or move it to the htdocs directory of your XAMPP installation. For instance, if your project is named myapp, the path might look like `C:\xampp\htdocs\myapp` on Windows.

#### 4. Start XAMPP
Launch the XAMPP Control Panel and start the Apache and MySQL services.

#### 5. Database configuration
Open [phpMyAdmin](http://localhost/phpmyadmin) when XAMPP is running, to set up the databases and users. Run the SQL queries in `Superior Fitness Database.sql` in phpMyAdmin.

#### 6. Open the project in you preferred IDE
In this case, the preferred IDE is [PhpStorm](https://www.jetbrains.com/phpstorm/download/?source=google&medium=cpc&campaign=APAC_en_AU_PhpStorm_Branded&term=phpstorm&content=604024580601&gad=1&gclid=Cj0KCQjwhL6pBhDjARIsAGx8D58K6x2OCObxIAX7xUJzFu2zATR1Qdfc4UZZp2Y0BY1o0874oZcli3EaAqV8EALw_wcB#section=windows).
Open the project and locate the `config/app_local.php` file. Modify the 'Datasources' section to ensure it has the correct database details (database name, username, password, etc.).

#### 7. Run the migrations (if needed)
Using the command prompt or terminal, navigate to the root directory of the project (`C:\xampp\htdocs\myapp` in our example) and run
```bash
bin/cake migrations migrate
```

#### 8. Install [composer](https://getcomposer.org/) (if not installed)

#### 9. Install Dependencies
Using the command prompt or terminal, navigate to the root directory of the project (C:\xampp\htdocs\myapp in our example) and run
```bash
composer install
```

#### 10. Visit `http://localhost` to see the website.


### Debugging & Errors
If you encounter issues, make sure the value of `debug` mode is `true` in `config/app_local.php`.
Check `logs/debug.log` for debug details and `logs/error.log` for error details.


## Database Schema

The database consists of multiple tables like `cart`, `categorys`, `contact_infos`, `products`, `orders`, `users`, etc.
A detailed schema can be found at `team109-app_fit3047/Superior Fitness Database.sql`.


## Directory Structure

Below is a high-level overview of our repository's structure:

```bash
team109-app_fit3047/
│
├── config/             # Contains configuration files and settings for the application
│
├── logs/               # Contains log files for debugging and monitoring purposes
│
├── src/                 # Main application source code
│   ├── Console/         # Contains command-line utilities, such as for installation hooks
│   ├── Controller/      # Contains the main logic for handling the incoming requests, invoking the corresponding model
│   │                     # methods and rendering the appropriate view.
│   ├── Mailer/          # Contains main logic for Mailer (sending emails to user)
│   ├── Model/           # Contains database behaviors, entities, and tables and related operations
│   ├── View/            # Templates and view files
│
├── templates/           # Contains the view files for the content and presentation of the application.
│
├── tests/              # Contains unit, feature, and integration tests for ensuring code quality and functionality.
│
└── webroot/            # Contains JS, CSS, and media assets (images, etc)
```


## Packages and Their Usage

- **cakephp/authentication**: For handling user authentication
- **cakephp/cakephp**: The core package of the CakePHP framework
- **cakephp/migrations**: Provides a set of tools to handle database migrations in CakePHP applications
- **cakephp/plugin-installer**: For handling the installation and setup of plugins in CakePHP applications
- **hakito/cakephp-paypal-rest-plugin**: Provides integration between CakePHP applications and PayPal's REST API
- **mobiledetect/mobiledetectlib**: A lightweight PHP class for detecting mobile devices (including tablets)
- **paypal/paypal-checkout-sdk**: An external plugin added for managing checkout and payment functionalities.
It provides tools and utilities to integrate and interact with PayPal's Checkout services.


## Coding Guidelines

1. **Naming Conventions**: Use PascalCase for class names, camelCase for methods/functions, and snake_case for variables/attributes and table names.
2. **Commenting**: Properly comment on the code. Use doc blocks for classes and methods.
3. **Error Handling**: Always handle exceptions and provide useful error messages.
4. **Consistency**: Maintain consistency throughout the code. If you're updating or adding new features, make sure it matches the current code style.
