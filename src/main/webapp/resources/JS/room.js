/**
 * 
 */


$(document).ready(function(){
	/* 이미지 삽입 */
	$(".quest").each(function(i, obj){
		
		const bobj = $(obj)
		console.log(bobj);
		if(bobj.data("roomname")){

			const fileName = bobj.data("filename");
			
			const fileCallPath = encodeURIComponent(fileName);
			
			$(this).find("img").attr('src', '/roomdisplay?fileName=' + fileCallPath);
		}
	})
	
	var ary = $('#standardimg') ;
	window.onload = function(){
	  i=1;
	  setInterval(function(){
	    var pic = document.getElementById('standardimg')
	    pic.setAttribute("src",ary(i%3+1))
	    i++;},2000);
	}
})