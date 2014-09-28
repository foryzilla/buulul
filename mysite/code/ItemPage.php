<?php
class ItemPage extends SubPage{
    private static $allowed_children = array('none');
    
    static $db = array(
                       'Address'=>'VarChar',
                       'Telephone'=>'VarChar',
                       'City'=>'VarChar',
                       'State'=>'VarChar',
                       'Country'=>'VarChar',
                       'Latitude'=>'VarChar',
                       'Longitude'=>'VarChar'
                       );
    public function getCMSFields() {
        $fields = parent::getCMSFields();
        $fields->addFieldToTab('Root.Main', new TextField('Address'), 'Content');
        $fields->addFieldToTab('Root.Main', new TextField('Telephone'), 'Content');
        
        // Country drop options
        $city = new DropDownField('City', 'City', array('TJ'=>'Tijuana', 'SD'=>'San Diego'));
        $fields->addFieldToTab('Root.Main', $city, 'Content');
        
        // State drop options
        $state = new DropDownField('State', 'State', array('BC'=>'Baja California', 'CA'=>'California'));
        $fields->addFieldToTab('Root.Main', $state, 'Content');
        
        // Country drop options
        $country = new DropDownField('Country', 'Country', array('MX'=>'Mexico', 'US'=>'United States'));        
        $fields->addFieldToTab('Root.Main', $country,  'Content');
        
        $fields->addFieldToTab('Root.Main', new TextField('Latitude'), 'Content');
        $fields->addFieldToTab('Root.Main', new TextField('Longitude'), 'Content');
        return $fields;
    }
    
}
class ItemPage_Controller extends SubPage_Controller{
    
}
/**
 * Custom City Object
 *
 * @package mysite
 * @subpackage code
 */
class CustomCities extends DataObject{
    static $db = array('City' => 'Varchar(100)');
}
/**
 * Custom State Object
 *
 * @package mysite
 * @subpackage code
 */
class CustomStates extends DataObject{
    static $db = array('State' => 'Varchar(100)');
}
/**
 * Custom Country Object
 *
 * @package mysite
 * @subpackage code
 */
class CustomCountries extends DataObject{
    static $db = array('Country' => 'Varchar(100)');
}