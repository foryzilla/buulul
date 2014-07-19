<?php

global $project;
$project = 'mysite';

global $databaseConfig;
$serverName = $_SERVER['SERVER_NAME'];

//echo $serverName; 

switch ($serverName) {
    //variables for developer environment
    case "localhost":
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
        break;
    //variables for live site environment
    case "www.buulul.com":
        $databaseConfig = array(
            "type" => 'MySQLDatabase',
            "server" => 'localhost',
            "username" => 'insectov_buulul',
            "password" => 'naufrago',	
            "database" => 'insectov_buulul',
            "path" => '',
        );
        break;
    default:
            //variables for developer environment
            $databaseConfig = array(
                "type" => 'MySQLDatabase',
                "server" => 'localhost',        
                "username" => 'buulul',        
                "password" => 'naufrago',
                "database" => 'SS_buulul',        
                "path" => '',
            );
            // Turn off when going live.
            Director::set_environment_type("dev");
        break;
}
// Director::set_environment_type("dev");
// Set the site locale
i18n::set_locale('en_US');

SiteTree::add_extension('Translatable');
SiteConfig::add_extension('Translatable'); // 2.4 or newer only