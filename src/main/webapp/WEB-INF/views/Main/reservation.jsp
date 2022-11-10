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
					<li id="informmenu"><input type="hidden" id="bno" name="bno" value="${reser.bno}"></li>
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
						<div id="chat">
						<ul id="replyUL">
						<li>
						<input class='remove' type='button' value='예약 취소' data-bno="${reser.bno}">
						</li> 
						</ul>
						</div>
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
				<span id="Lookup">P.M 18:00 ~ P.M 13:00</span> 
				</p>
			</ul>
			</li>
		</ul>
		</c:forEach>
	</div>
	</div>
</div>
<script type="text/javascript" src="../../../resources/JS/reservation.js"></script>
<%@ include file="../Footer/footer.jsp"%>