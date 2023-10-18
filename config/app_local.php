<?php
/*
 * Local configuration file to provide any overrides to your app.php configuration.
 * Copy and save this file as app_local.php and make changes as required.
 * Note: It is not recommended to commit files with credentials such as app_local.php
 * into source code version control.
 */
return [
    /*
     * Debug Level:
     *
     * Production Mode:
     * false: No error messages, errors, or warnings shown.
     *
     * Development Mode:
     * true: Errors and warnings shown.
     */
    'debug' => filter_var(env('DEBUG', true), FILTER_VALIDATE_BOOLEAN),

    /*
     * Security and encryption configuration
     *
     * - salt - A random string used in security hashing methods.
     *   The salt value is also used as the encryption key.
     *   You should treat it as extremely sensitive data.
     */
    'Security' => [
        'salt' => env('SECURITY_SALT', 'cb3a92d0370d812a77b517362733c6bc01942f7c06f517d9d458c22ce5747c93'),
    ],

    /*
     * Connection information used by the ORM to connect
     * to your application's datastores.
     *
     * See app.php for more configuration options.
     */
    'Datasources' => [
        'default' => [
            'host' => 'localhost',
            /*
             * CakePHP will use the default DB port based on the driver selected
             * MySQL on MAMP uses port 8889, MAMP users will want to uncomment
             * the following line and set the port accordingly
             */
            //'port' => 'non_standard_port_number',

            'username' => 'superior_fitness',
            'password' => 'password',

            'database' => 'superior_fitness',
            /*
             * If not using the default 'public' schema with the PostgreSQL driver
             * set it here.
             */
            //'schema' => 'myapp',

            /*
             * You can use a DSN string to set the entire configuration
             */
            'url' => env('DATABASE_URL', null),
        ],

        /*
         * The test connection is used during the test suite.
         */
        'test' => [
            'host' => 'localhost',
            //'port' => 'non_standard_port_number',
            'username' => 'root',
            'password' => '123456',

            'database' => 'superior_fitness',
            //'schema' => 'myapp',
            'url' => env('DATABASE_TEST_URL', 'sqlite://127.0.0.1/tests.sqlite'),
        ],
    ],

    /*
     * Email configuration.
     *
     * Host and credential configuration in case you are using SmtpTransport
     *
     * See app.php for more configuration options.
     */
    'EmailTransport' => [
        'default' => [
            'className' => 'Smtp',
            'host' => 'smtp.gmail.com',
            'port' => 587,
            'timeout' => 30,
            'username' => 'no.reply.globalcfosolutions@gmail.com',
            'password' => 'lamp wotf envs hvcy',

            'tls' => true,
        ],
    ],
    'PayPal' => [
        'currency' => 'USD',
        'tax' => '0.2',
        'liveCredentials' => [
            'ClientId' => 'clientId',    // client id obtained from the developer portal
            'ClientSecret' => 'clientSecret' // client secret obtained from the developer portal
        ],
        'sandboxCredentials' => array(
            'ClientId' => 'ARRbSZAFMzKHwiIVQP13c6JKhGx8Hm3LkLOfF8Z2lJotQcmhcnZmQFvtk2lcbVzT5KtRcI71Uzx11CZ6',    // client id obtained from the developer portal
            'ClientSecret' => 'EKH8zAEVXF8vAek5amrmveaYFaC09yOUYFrWUe1mzWgIkP7xJS_YjgfaPQWtgycs0r93pxc7tuogWsc4' // client secret obtained from the developer portal
        ),
        'rest-api' => [
            'mode' => 'sandbox',    // can be set to sandbox / live
            'http.ConnectionTimeOut' => '30',
            'http.Retry' => '1',
            //'http.Proxy'='http://[username:password]@hostname[:port][/path]',
            'log.LogEnabled' => TRUE,
            'log.FileName' => LOGS . 'PayPal.log',
            'log.LogLevel' => 'FINE' // FINE, INFO, WARN or ERROR
        ],
        'conditions' => [
            'fee' => 35,              // paypal fixed fee in cents
            'fee_relative' => '0.034' // relative paypal fee
        ]
    ],

];
