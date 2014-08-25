<?php

global $project;
$project = 'mysite';

global $databaseConfig;
$serverName = $_SERVER['SERVER_NAME'];

//echo $serverName; 

if ($serverName === 'localhost'){
   //variables for developer environment
    $databaseConfig = array(
        "type" => 'MySQLDatabase',
        "server" => 'localhost',        
        "username" => 'naufrago',        
        "password" => 'naufrago',
        "database" => 'SS_buulul',        
        "path" => '',
    );
    // Turn off when going live.
    Director::set_environment_type("dev"); 
}else{
    $databaseConfig = array(
        "type" => 'MySQLDatabase',
        "server" => 'localhost',
        "username" => 'insectov_buulul',
        "password" => 'naufrago',	
        "database" => 'insectov_buulul',
        "path" => '',
    );
}

// Director::set_environment_type("dev");
// Set the site locale
i18n::set_locale('en_US');

SiteTree::add_extension('Translatable');
SiteConfig::add_extension('Translatable'); // 2.4 or newer only