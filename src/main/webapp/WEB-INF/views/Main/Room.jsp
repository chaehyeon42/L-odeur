<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../Header/header.jsp"%>


<link rel="stylesheet" href="../../../resources/CSS/room.css">

<img id="roimg" src="/resources/img/Standard.jpg">
<div class="Roomall">
	<div class="roomhallway">

		<div class="roommain">
			<c:forEach items="${room}" var="room">
				<ul>
					<li id="standard">
						<div id="stan">
							<div class="quest" data-name="${room.roomname}"
								data-filename="${room.filename}">
								<img class="standardimg" src="/${room.filename}">
							</div>
						</div>

					</li>
				</ul>
			</c:forEach>
			<ul id="imfor">
				<li><input type="hidden" value="${room[0].bno}"></li>

				<li>
					<p>${room[0].roomname}</p>
				</li>

				<li>
					<p>가격:</p>
					<p>${room[0].price}</p>
				</li>

				<li>
					<p>수용 인원:</p>
					<p>${room[0].people}</p>
				</li>

				<li>
					<p>방 구조:</p>
					<p>${room[0].structure}</p>
				</li>

				<li>
					<p>침대 수:</p>
					<p>${room[0].bed}</p>
				</li>

				<li>
					<p>checkin/checkout:</p>
					<p>P.M${room[0].checkin}/P.M ${room[0].checkout}</p>
				</li>
			</ul>
		</div>

	</div>


</div>

<script type="text/javascript" src="../../../resources/JS/room.js"></script>
</body>
</html>