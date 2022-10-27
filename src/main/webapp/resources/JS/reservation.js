/**
 * 
 */


// 댓글 삭제 버튼을 클릭하면
$(document).ready(function() {

$("#chat").on("click", ".remove", function() {
		// 예약번호를 수집해서
		var bno = $(this).data("bno");
		// 예약 삭제를 하기 위한 함수 호출(예약번호)
		remove(bno);
	
		})

function remove(bno) {
	let remove = confirm("예약취소 하시겠습니까?")
	console.log(bno);

$.ajax({
		type : "DELETE",
		url : "/reservation/remove/" + bno,
		data : JSON.stringify(bno),
		success : function(result) {
					console.log(result)
					if (result == "success"){
					alert("댓글삭제 성공")
					// 새로고침
					location.reload();
					}else if(result != "success"){
						alert("예약취소를 실패했습니다.");
					}
				}
			})
		}

})
