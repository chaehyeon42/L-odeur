$(document).ready(function(){
	fullset();
	quickClick();
});
function fullset(){
	var pageindex = $("#fullpage > .fullsection").length; //fullpage 안에 섹션이(.fullsection) 몇개인지 확인하기
	for(var i=1;i<=pageindex;i++){
		$("#fullpage > .quick > ul").append("<li></li>");
	}
	$("#fullpage .quick ul :first-child").addClass("on"); //일단 화면이 로드 되었을때는 퀵버튼에 1번째에 불이 들어오게
	//마우스 휠 이벤트
	$(window).bind("mousewheel", function(event){
		var page = $(".quick ul li.on");
		//alert(page.index()+1);  // 현재 on 되어있는 페이지 번호
		if($("body").find("#fullpage:animated").length >= 1) return false;
		//마우스 휠을 위로
		if(event.originalEvent.wheelDelta >= 0) {
			var before=page.index();
			if(page.index() >= 0) page.prev().addClass("on").siblings(".on").removeClass("on");//퀵버튼옮기기
			var pagelength=0;
			for(var i=1; i<(before); i++)
			{
				pagelength += $(".full"+i).height();
			}
			if(page.index() > 0){ //첫번째 페이지가 아닐때 (index는 0부터 시작임)
				page=page.index()-1;
				$("#fullpage").animate({"top": -pagelength + "px"},1000, "swing");
			}	
		}else{ // 마우스 휠을 아래로	
			var nextPage=parseInt(page.index()+1); //다음페이지번호
			var lastPageNum=parseInt($(".quick ul li").length); //마지막 페이지번호
			//현재페이지번호 <= (마지막 페이지 번호 - 1)
			//이럴때 퀵버튼옮기기
			if(page.index() <= $(".quick ul li").length-1){ 
				page.next().addClass("on").siblings(".on").removeClass("on");
			}
			
			if(nextPage < lastPageNum){ //마지막 페이지가 아닐때만 animate !
				var pagelength=0;
				for(var i = 1; i<(nextPage+1); i++){ 
					//총 페이지 길이 구하기
					//ex) 현재 1번페이지에서 2번페이지로 내려갈때는 1번페이지 길이 + 2번페이지 길이가 더해짐
					pagelength += $(".full"+i).height();
				}
				$("#fullpage").animate({"top": -pagelength + "px"},1000, "swing");
			}	
			
		}
	});
	$(window).resize(function(){ 
		//페이지가 100%이기때문에 브라우저가 resize 될때마다 스크롤 위치가 그대로 남아있는것을 방지하기 위해
		var resizeindex = $(".quick ul li.on").index()+1;
		
		var pagelength=0;
		for(var i = 1; i<resizeindex; i++){ 
			//총 페이지 길이 구하기
			//ex) 현재 1번페이지에서 2번페이지로 내려갈때는 1번페이지 길이 + 2번페이지 길이가 더해짐
			pagelength += $(".full"+i).height();
		}

		$("#fullpage").animate({"top": -pagelength + "px"},0);
	});
}
// 사이드 퀵버튼 클릭 이동
function quickClick(){
	$(".quick li").click(function(){
		var gnbindex = $(this).index()+1;
		var length=0;
		for(var i=1; i<(gnbindex); i++)
		{
			length+=$(".full"+i).height();
		}
		if($("body").find("#fullpage:animated").length >= 1) return false;
		$(this).addClass("on").siblings("li").removeClass("on");
		
		$("#fullpage").animate({"top": -length + "px"},800, "swing");
		return false;
	});
	

	/*메인 이미지*/
	$(".slide").slick({
		dots : false,
		infinite : true,		//dots 표시 대신
		autoplay : true,
		autoplaySpeed : 500,
	}
	);
	
	//날짜
	 $( function() {
		    $( "#datepicker" ).datepicker();
		  } );
	 $( function() {
		    $( "#CHECK-OUT" ).datepicker();
		  } );
	 
	 //방예약시 선택
	 $("#room1").on("change", function() {
			var s = $("#room1").val();
			console.log(s)

			$.getJSON("/main/" + s + ".json", function(data) {
				var str = "";
				str += "";

				for (var i = 0; i < data.length; i++) {
					str += "<option>" + data[i].room2 + "</option>"
				}
				$("#room2").html(str);
			})
	 });
	 
	 //예약 시 인원수 (어른)
	
		 $('#decreaseQuantity').click(function(){
		 var stat = ($('#numberUpDown').val())-1;
		$('#numberUpDown').val(stat)

		if(stat<=0){
			 alert('더이상 줄일수 없습니다.');
			 stat =0;
		 }
		 
		 $('#numberUpDown').val(stat);
		 });
		 
		 $('#increaseQuantity').click(function(){
		 var stat = Number($('#numberUpDown').val())+1;
		 if(stat>50){
			 alert('더이상 늘릴수 없습니다.');
			 stat=50;
		 }
		 	
		 $('#numberUpDown').val(stat);
		 });
		 
	 
	 //아이

	 $('#minus').click(function(){
	 var stat = ( $('.result').val())-1;
	$('.result').val(stat)

	if(stat<=0){
		 alert('더이상 줄일수 없습니다.');
		 stat =0;
	 }
	 
	 $('.result').val(stat);
	 });
	 
	 $('#plus').click(function(){
	 var stat = Number($('.result').val())+1;
	 if(stat>50){
		 alert('더이상 늘릴수 없습니다.');
		 stat=50;
	 }
	 	
	 $('.result').val(stat);
	 });
	 
	 

}
