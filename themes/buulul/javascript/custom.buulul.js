//jQuery.noConflict();
//
//(function($){
//
//    
//
//}(jQuery));

$(document).ready(function() {        
        $("img.lazy").lazyload({
                effect : "fadeIn"
        });
        //client side form validation
        $("#Form_RegistrationForm").validate();
        
});