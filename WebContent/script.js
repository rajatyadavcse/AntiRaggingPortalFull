$(function(){

	$("#retype_password_error_message").hide();

	var error_retype_password=false;

	$("#cnfpassword").focusout(function(){
		check_retype_password();
	});
	

	function check_retype_password(){
		
		var  password = $("#password").val();
		var  retype_password = $("#cnfpassword").val();
		if(password!=retype_password){
			$("#retype_password_error_message").html("...passwords did not match...");
			$("#retype_password_error_message").css("color", "Red");
			$("#retype_password_error_message").css("font-style", "oblique");
			$("#retype_password_error_message").show();
			error_retype_password=true;
			$("#submit").attr('disabled',true);
		}
		else{
			$("#retype_password_error_message").hide();
			$("#submit").attr('disabled',false);
		}
		
	}
});