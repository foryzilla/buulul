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
        $fields->addFieldToTab('Root.Main', new TextField('City'), 'Content');
        $fields->addFieldToTab('Root.Main', new TextField('State'), 'Content');
        $fields->addFieldToTab('Root.Main', new TextField('Country'), 'Content');
        $fields->addFieldToTab('Root.Main', new TextField('Latitude'), 'Content');
        $fields->addFieldToTab('Root.Main', new TextField('Longitude'), 'Content');
        return $fields;
    }
    
}
class ItemPage_Controller extends SubPage_Controller{
    
}