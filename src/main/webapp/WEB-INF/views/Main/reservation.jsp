<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../Header/header.jsp" %>
<link rel="stylesheet" href="../../../resources/CSS/reservation.css">

<div class="reservationfull">
	<div class="Allscreen">
		<p>예약 조회 및 확인</p>
	<div class="lookup">
		<ul id="checkmenu">
			<li id="checksub">detail</li>
			<li id="checksub">information</li>
		</ul>
		
		<ul id="information">
			<li>
				<ul>
					<li>"예약자 명:" <span></span></li>
					<li>"Checkin/Checkout"
					<span></span>
					~
					<span></span>
					</li>
					<li>
					"Adult:" <span></span>
					"Kid:" <span></span>
					</li>
					<li>
					<button class="cancel" type="submit">예약취소</button>
					</li>
				</ul>
			</li>
			
			<li>
				<p>
				"RoomName:"
				<span></span>
				</p>
				<p>
				"entrance/exit:"
				<span>P.M 14:00 ~ A.M 12:00</span> 
				</p>
			</li>
		</ul>
	</div>
	</div>
</div>
</body>
</html>