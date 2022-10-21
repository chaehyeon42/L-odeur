/**
 * 
 */

var memberidCheck = false;
var memberpwCheck = false;

$(document).ready(function(){
	
	$("#rsvd").click(function(){
		
		var id = $(".id").val();
		var pw = $(".pw").val();
		
		if(id == ""){
			$(".id").css("display","block");
		}else{
			$(".id").css("display","none");
			memberidCheck = true;
		}
		
		if(pw == ""){
			$(".pw").css("display", "block");
		}else{
			$(".pw").css("display","none");
			memberpwCheck = false;
		}
		
	})
})