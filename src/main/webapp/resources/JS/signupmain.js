/**
 * 
 */// 유효성 검사 체크용
var membernameCheck = false;			// 이름 체크
var memberidCheck = false;			// 아이디
var memberidckCheck = false;			// 아이디 중복 검사
var memberpwCheck = false;			// 비번
var zipcodeCheck = false; 		// 우편번호
var addrCheck = false;			// 도로명주소
var addr2Check = false;			// 세부주소
var phonenumberCheck = false; 		// 휴대폰
var birthdayCheck = false; 		// 생년월일

//정규식 모음
//아이디
function memberidFormCheck(memberid){
	var memberidForm =  /^(?=.*\d)(?=.*[a-zA-Z])[0-9a-zA-Z]{8,16}$/;
	return memberidForm.test(memberid);
}
//비밀번호
function memberpwFormCheck(memberpw){
	var memberpwForm = /^[A-Za-z0-9`\-=\\\[\];',\./~!@#\$%\^&\*\(\)_\+|\{\}:"<>\?]{8,16}$/;
	return memberpwForm.test(memberpw);		
}
//이름
function membernameFormCheck(membername){
	var membernameForm = /^[가-힣a-zA-Z0-9]/gi;
	return membernameForm.test(membername);
}

//전화번호
function phonenumberFormCheck(phonenumberphone){
	var phonenumberForm = /^((01[1|6|7|8|9])[1-9][0-9]{6,7})$|(010[1-9][0-9]{7})$/;;
	return phonenumberForm.test(phonenumberphone);
}



 
$(document).ready(function(){
	
	//회원가입 버튼
	$("#signupbtn").click(function(){
		
		var memberid = $("#memberid").val(); 			
		var memberpw = $("#memberpw").val();				
		var membername = $("#membername").val();			
		var zipcode = $("#zipcode").val();		
		var addr = $("#addr").val();
		var addr2 = $("#addr2").val();
		var phonenumber = $("#phonenumber").val();
		var birthday = $("#birthday").val();
		
		
		
		/* 아이디 유효성검사 */
		if(memberid == ""){
			$(".noid").css("display","block");
			memberidCheck = false;
		}else{
			memberidCheck = true;
		}
		
		/* 비밀번호 유효성 검사 */
		if(memberpw == ""){
			$(".nopw").css("display","block");
			memberpwCheck = false;
		}else{
			$(".nopw").css("display", "none");
			memberpwCheck = true;
		}
		
		/* 이름 유효성 검사 */
		if(membername == ""){
			$(".noname").css("display","block");
			membernameCheck = false;
		}else{
			$(".noname").css("display", "none");
			membernameCheck = true;
		}
		
		/* 생일 유효성 검사 */
		if(birthday == ""){
			$(".nobirthday").css("display","block");
			birthdayCheck = false;
		}else{
			$(".nobirthday").css("display", "none");
			birthdayCheck = true;
		}
		
		/* 주소 유효성 검사 */
		if(addr == ""){
			$(".noaddr").css("display","block");
			addrCheck = false;
		}else{
			$(".noaddr").css("display", "none");
			addrCheck = true;
		}
		
		if(addr2 == ""){
			$(".noaddr2").css("display","block");
			addr2Check = false;
		}else{
			$(".noaddr2").css("display", "none");
			addr2Check = true;
		}
		
		/*휴대폰 검사*/
		if(phonenumber == ""){
			$(".nophonenumber").css("display","block");
			phonenumberCheck = false;
		}else{
			$(".nophonenumber").css("display", "none");
			phonenumberCheck = true;
		}
		
		
		/* 최종 유효성 검사 */
		if(memberidCheck && memberpwCheck && membernameCheck && birthdayCheck && addrCheck && addr2Check && phonenumberCheck){
			$("#signupform").attr("action", "/signup");
			$("#signupform").submit();		
			
		}
		

		return false;
	});
		
});


// 형식 검사
$("#phonenumber").on("blur", function(){

	var phonenumber = $("#phonenumber").val();			
	var data = {phonenumber : phonenumber}			
	
	$.ajax({
		type : "post",
		url : "/phonenumberCheck",
		data : data,
		success : function(result){
			// 중복되지 않고 휴대폰 형식도 맞을 때
			if(result != "fail" && phonenumberFormCheck(phonenumber)){
				$(".phonenumberpossible").css("display","inline-block");
				$(".phonenumberexist").css("display","none");
				phonenumberCheck = true;
			
			}
			// 휴대폰 형식은 맞으나 중복될 때		
			else if(result == "fail" && phonenumberFormCheck(phonenumber)){
				$(".phonenumberpossible").css("display","none");
				$(".phonenumberexist").css("display","inline-block");
				phonenumberCheck = false;
			// 둘 다 틀렸을 때	
			}
		}
	}); // ajax 종료
});

$("#memberid").on("blur", function(){

	var memberid = $("#memberid").val();			// .id_input에 입력되는 값
	var data = {memberid : memberid}				// "컨트롤에 넘길 데이터 이름" : "데이터(.id_input에 입력되는 값)"

	$.ajax({
		type : "post",
		url : "/memberidCheck",
		data : data,
		success : function(result){
			// 중복되지 않고 아이디 형식도 맞을 때
			if(result != "fail" && memberidFormCheck(memberid)){
				$(".memberidpossible").css("display","inline-block");
				$(".memberidexist").css("display","none");
				$(".memberidFalse").css("display","none");
				memberidCheck = true;
			// 중복되지 않으나 아이디 형식이 틀렸을 때
			}else if(result != "fail" && !memberidFormCheck(memberid)){
				$(".memberidpossible").css("display","none");
				$(".memberidexist").css("display","none");
				$(".memberidFalse").css("display","inline-block");
				memberidCheck = false;
			// 아이디 형식은 맞으나 중복될 때		
			}else if(result == "fail" && memberidFormCheck(memberid)){
				$(".memberidpossible").css("display","none");
				$(".memberidexist").css("display","inline-block");
				$(".memberidFalse").css("display","none");
				memberidCheck = false;
			// 둘 다 틀렸을 때	
			}else{
				$(".memberidpossible").css("display","none");
				$(".memberidexist").css("display","inline-block");
				$(".memberidFalse").css("display","inline-block");
				memberidCheck = false;
			}
		}
	}); // ajax 종료
	



});







 


