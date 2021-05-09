jQuery(document).ready(function($){
    $("#phoneNo").focus(function(){
    	$("#submit").attr('disabled',false);
    	$("#phone_error_message").html("");
    });
});