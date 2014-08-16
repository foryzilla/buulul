<?php

class RegistrationPage extends Page{

}

class RegistrationPage_Controller extends Page_Controller{
    //Allow our form as an action
    static $allowed_actions = array('RegistrationForm');
    //Generate the registration form
    function RegistrationForm(){
	$nameField = TextField::create('Name');//->addExtraClass('form-control');	
	$emailField = EmailField::create('Email');//->addExtraClass('form-control');
	$confirmPasswordField = ConfirmedPasswordField::create('Password');//->addExtraClass('form-control');
	
	$fields = new Fieldlist(
			$nameField,			
			$emailField,			
			$confirmPasswordField
                        );	
	
//	$fields = new Fieldlist(
//                        new TextField('Name', '<span>*</span> Name (or Nickname)'),
//			new EmailField('Email', '<span>*</span> Email'),
//			new ConfirmedPasswordField('Password', '<span>*</span> Password')
//                        );
        // Create action	
        $actions = new Fieldlist(
                    new FormAction('doRegister', 'Register')
        );
        // Create action
        $validator = new RequiredFields('FirstName', 'Email', 'Password');	
        return new Form($this, 'RegistrationForm', $fields, $actions, $validator);
    }
    //Submit the registration form
    function doRegister($data,$form)
    {
	    //Check for existing member email address
	    if($member = DataObject::get_one("Member", "`Email` = '". Convert::raw2sql($data['Email']) . "'")) 
	    {
		    //Set error message
		    $form->AddErrorMessage('Email', "Sorry, that email address already exists. Please choose another.", 'bad');
		    //Set form data from submitted values
		    Session::set("FormInfo.Form_RegistrationForm.data", $data);		
		    //Return back to form
		    return Director::redirectBack();;			
	    }	

	    //Otherwise create new member and log them in
	    $Member = new Member();
	    $form->saveInto($Member);			
	    $Member->write();
	    $Member->login();
	    
	    //Find or create the 'user' group
	    if(!$userGroup = DataObject::get_one('Group', "Code = 'users'"))
	    {
		    $userGroup = new Group();
		    $userGroup->Code = "users";
		    $userGroup->Title = "Users";
		    $userGroup->Write();
		    $userGroup->Members()->add($Member);
	    }
	    //Add member to user group
	    $userGroup->Members()->add($Member);
	    
	    //Get profile page
	    /*if($ProfilePage = DataObject::get_one('EditProfilePage'))
	    {
	    return Director::redirect($ProfilePage->Link('?success=1');
	    }*/
    }
    
}
