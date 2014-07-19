<?php
class SubPage extends Page{
    
    static $db = array('Date'=>'Date',
                       'LinkTo'=>'Text',
                       'Video'=>'Text',
                       'SocialMediaSharing'=>'HTMLVarchar'
                       );    
    static $has_one = array(
        'ThumbnailImage' => 'Image'
    );                    
    public function getCMSFields() {
        //set default width and height to the image upload previou file.
        $uploadField = new UploadField('ThumbnailImage');        
        $uploadField->setPreviewMaxWidth(100);
        $uploadField->setPreviewMaxHeight(100);
        
        $fields = parent::getCMSFields();
        $dateField = new DateField('Date');
        $dateField->setConfig('showcalendar', true);
        $dateField->setConfig('dateformat', 'dd/MM/YYYY');
        $fields->addFieldToTab('Root.Main', $dateField, 'Content');
        $fields->addFieldToTab('Root.Main', new TextField('LinkTo'), 'Content');
        $fields->addFieldToTab("Root.Images", $uploadField);
        $fields->addFieldToTab('Root.Main', new TextField('Video'), 'Content');
        $fields->addFieldToTab('Root.Main', new TextField('SocialMediaSharing'), 'Content');
        //$form->dataFieldByName("FieldName")->addExtraClass("myclass");
        return $fields;
    }    
}

class SubPage_Controller extends Page_Controller{
    
}