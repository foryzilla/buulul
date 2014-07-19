<?php
class SubCategoryPage extends Page{
    private static $allowed_children = array('none');    
    static $db = array('Date'=>'Date',
                       'LinkTo'=>'Text',
                       'ThumbnailImage'=>'Text',
                       'FullSizeImage'=>'Text',                       
                       'Video'=>'Text',
                       'SocialMediaSharing'=>'HTMLVarchar'
                       );    
    static $has_one = array(
        'SingleImage' => 'Image'
    );                    
    public function getCMSFields() {
        $fields = parent::getCMSFields();
        
        $dateField = new DateField('Date');
        $dateField->setConfig('showcalendar', true);
        $dateField->setConfig('dateformat', 'dd/MM/YYYY');
        
        $fields->addFieldToTab('Root.Main', $dateField, 'Content');
        $fields->addFieldToTab('Root.Main', new TextField('LinkTo'), 'Content');
        $fields->addFieldToTab('Root.Main', new TextField('ThumbnailImage'), 'Content');
        $fields->addFieldToTab('Root.Main', new TextField('FullSizeImage'), 'Content');
        $fields->addFieldToTab('Root.Upload', $uploadField = new UploadField($name = 'SingleImage', $title = 'Upload a single image')); 
        $fields->addFieldToTab('Root.Main', new TextField('Video'), 'Content');
        $fields->addFieldToTab('Root.Main', new TextField('SocialMediaSharing'), 'Content');         
        return $fields;
    }    
}

class SubCategoryPage_Controller extends Page_Controller{
    
}

