$(document).ready(function(){
	$("#password").keyup(
			function(){
				var pass=$("#password").val();
				if(pass.length>=8){
					$("#msg").html(".....Strong.....");
					$("#msg").css("color", "green");
					$("#msg").css("font-style", "oblique");
				}
				else{
					$("#msg").html(".....Weak.....");
				    $("#msg").css("color", "red");
				    $("#msg").css("font-style", "oblique");
				}
			}
			);
});