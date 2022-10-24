<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../Header/header.jsp" %>
<link rel="stylesheet" href="../../../resources/CSS/reservation.css">

<div class="reservationfull">
	<div class="Allscreen">
		<p class="Title">예약 조회 및 확인</p>
	<div class="lookup">
		<ul id="checkmenu">
			<li id="checksub">Detail</li>
			<li id="checksub">Information</li>
		</ul>
		
		<c:forEach items="${reser}" var="reser">
		<ul id="information">
			<li>
				
				<ul id="inform">
					<li id="informmenu">예약자 명: <span id="Lookup">${reser.membername}</span></li>
					<li id="informmenu">예약자 아이디: <span id="Lookup">${reser.memberid}</span></li>
					<li id="informmenu">Checkin/Checkout:
					<span id="Lookup">${reser.checkin}</span>
					~
					<span id="Lookup">${reser.checkout}</span>
					</li>
					<li id="informmenu">
					Adult: <span id="Lookup">${reser.adult}</span>
					Kid: <span id="Lookup">${reser.kid}</span>
					</li>
					<li id="informmenu">
					<button class="cancel" type="submit">예약취소</button>
					</li>
				</ul>
			</li>
			
			<li>
			<ul id="inform2">
				
				<p class="RN">
				RoomName:
				<span id="Lookup">${reser.roomname}</span>
				</p>
				
				<p class="RN">
				entrance/exit:
				<span id="Lookup">P.M 14:00 ~ A.M 12:00</span> 
				</p>
			</ul>
			</li>
		</ul>
		</c:forEach>
	</div>
	</div>
</div>
</body>
</html>