/**
 * 
 */


//예약취소 버튼 클릭시
//	    const onDelete = () => {
//	        $(".cancel").click(() => {
//	            let cancel = confirm("예약취소 하시겠습니까?")
//
//	            if (cancel) {
//	                $.ajax({
//	                    type: 'delete',
//	                    url: "/reservation",
//	                    data: JSON.stringify({"data": $("#bno").val()}),
//	                    contentType: "application/json; charset=utf-8",
//	                    success: (data) => {
//	                        alert("삭제되었습니다.");
//	                        location.href = "/reservation";
//	                    }
//	                })
//	            } else {
//	                location.href = "/reservation"
//	            }
//	        })
//	    }

//댓글 삭제 버튼을 클릭하면
	$(".cancel").on("click",".remove",function(){
		//댓글번호를 수집해서
		var bno = $(this).data("bno");
		//댓글 삭제를 하기 위한 함수 호출(댓글번호)
		remove(rno);
		
	})

	function remove(rno){
		  let cancel = confirm("예약취소 하시겠습니까?")
	console.log(bno);
	$.ajax({
		type:"delete",
		url:"/reservation/"+bno,
		success : function(result) {
			if (result == "sucess") {
				alert("댓글삭제 성공")
			}
		}		
	})
}


		
/*$(".cancel").on("click",function(){
	var bno = $(this).data("bno");
	cancel(bno);
	
    let cancel = confirm("예약취소 하시겠습니까?")

    if (cancel) {
        $.ajax({
            type: 'delete',
            url: "/reservation/"+bno,
            contentType: "application/json; charset=utf-8",
            success : function(result) {
    			if (result == "sucess") {
    				alert("댓글삭제 성공")
    			}
    		}		
        })
    } else {
        location.href = "/reservation"
    }
})
*/