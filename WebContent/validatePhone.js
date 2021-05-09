jQuery(document).ready(function($){
    $cf = $('#phoneNo');
    $cf.blur(function(e){
        phone = $(this).val();
        phone = phone.replace(/[^0-9]/g,'');
        if (phone.length != 10)
        {
        	$("#phone_error_message").html("Phone number is not valid");
			$("#phone_error_message").css("color", "Red");
			$("#phone_error_message").css("font-style", "oblique");
            $('#phoneNo').val('');
            $("#submit").attr('disabled',true);
        }
    });
});