<?php

$params = require(__DIR__ . '/params.php');

$config = [
    'id' => 'basic',
    'basePath' => dirname(__DIR__),
    'bootstrap' => ['log'],
    'modules' => [
        'user' => [
            'class' => 'dektrium\user\Module',
            'admins' => ['admin2'],
                'mailer' => [
        'sender'                => 'no-reply@myhost.com', // or ['no-reply@myhost.com' => 'Sender name']
        'welcomeSubject'        => 'Welcome subject',
        'confirmationSubject'   => 'Confirmation subject',
        'reconfirmationSubject' => 'Email change subject',
        'recoverySubject'       => 'Recovery subject']
        ]
    ],
    'components' => [
        'authClientCollection' => [
            'class' => yii\authclient\Collection::className(),
            'clients' => [
                'facebook' => [
                    'class'        => 'dektrium\user\clients\Facebook',
                    'clientId'     => '474327099373950',
                    'clientSecret' => '9917a1e5591b8e1cda02e22d89f9cd9f',
                ],
            ],
        ],    
        'request' => [
            // !!! insert a secret key in the following (if it is empty) - this is required by cookie validation
            'cookieValidationKey' => 'JJ1alWN21cbJbAL-FFseMy8nqaWjioao',
        ],
        'cache' => [
            'class' => 'yii\caching\FileCache',
        ],
        //'user' => [
        //    'identityClass' => 'app\models\User',
        //    'enableAutoLogin' => true,
        //],
        'urlManager' => [
            'enablePrettyUrl' => true,
            //'showScriptName' => false,
        ],
        'errorHandler' => [
            'errorAction' => 'site/error',
        ],
        'mailer' => [
            'class' => 'yii\swiftmailer\Mailer',
            'viewPath' => '@app/mail',
            // send all mails to a file by default. You have to set
            // 'useFileTransport' to false and configure a transport
            // for the mailer to send real emails.
            'transport' => [
                'class' => 'Swift_SmtpTransport',
                'host' => 'smtp.gmail.com',
                'username' => 'syungkeaw@gmail.com',
                'password' => '22854609',
                'port' => '587',
                'encryption' => 'tls',
            ],
        ],
        'log' => [
            'traceLevel' => YII_DEBUG ? 3 : 0,
            'targets' => [
                [
                    'class' => 'yii\log\FileTarget',
                    'levels' => ['error', 'warning'],
                ],
            ],
        ],
        'db' => require(__DIR__ . '/db.php'),
    ],
    'params' => $params,
];

if (YII_ENV_DEV) {
    // configuration adjustments for 'dev' environment
    $config['bootstrap'][] = 'debug';
    $config['modules']['debug'] = 'yii\debug\Module';

    $config['bootstrap'][] = 'gii';
    $config['modules']['gii'] = 'yii\gii\Module';
}

return $config;
