<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../Header/header.jsp"%>


<link rel="stylesheet" href="../../../resources/CSS/room.css">


<div class="Roomall">
	<div class="roomhallway">

		<div class="roommain">
		<c:forEach items="${room}" var="room">
			<ul>
				<li id="standard">
					<div id="stan">
						<div class="quest" data-name="${room.roomname}" data-filename="${room.filename}">
						<img id="standardimg" src="/Room?fileName=${room.filename}">
						</div>
					</div>

					<ul id="imfor">
						<li>
						<input type="hidden" value="${room.bno}">
						</li>
						
						<li>
						<p>${room.roomname}</p>
						</li>
						
						<li>
						<p>가격:</p>
						<p>${room.price}</p>
						</li>
						
						<li>
						<p>수용 인원:</p>
						<p>${room.people}</p>
						</li>
						
						<li>
						<p>방 구조:</p>
						<p>${room.structure}</p>
						</li>
						
						<li>
						<p>침대 수:</p>
						<p>${room.bed}</p>
						</li>
						
						<li>
						<p>checkin/checkout:</p>
						<p>P.M${room.checkin}/P.M ${room.checkout}</p>
						</li>
					</ul>
				</li>
			</ul>
			</c:forEach>
		</div>

	</div>


</div>
<script type="text/javascript" src="../../../resources/JS/room.js"></script>
</body>
</html>