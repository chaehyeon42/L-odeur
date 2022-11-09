/**
 * 
 */


$(document).ready(function(){
	/* 이미지 삽입 */
	$(".quest").each(function(i, obj){
		
		const bobj = $(obj)
		const fileName = bobj.data("filename");
		const fileCallPath = encodeURIComponent(fileName);
		console.log(bobj);
		if(bobj.data("roomname")){

			
			$(this).find("img").attr('src', '/roomdisplay?fileName=' + fileCallPath);
		}
	
		
		window.onload = function(){
			var ary = $('.standardimg');
			var imgs=[];			// var imgs=['/resources/img/suite.jpg', '/resources/img/SUITE2.jpg', '/resources/img/hall.jpg']
			
			for(var i=0;i<ary.length;i++){
				imgs[i]=ary[i].getAttribute("src")			
			}
			j=1;
			setInterval(function(){
			var pic = document.getElementById('roimg')
			pic.setAttribute("src",imgs[j%3])
			j++;},8000);
		}
	
	})
})