<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.6.1.min.js"></script>


<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>

<link rel="stylesheet" href="../../../resources/CSS/main.css">
<script type="text/javascript" src="../../../resources/JS/main.js"></script>

<!-- 슬라이드를 위한 코드 -->
<link rel="stylesheet" type="text/css"
	href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
<link rel="stylesheet" type="text/css"
	href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick-theme.css" />
<script type="text/javascript"
	src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>

<!-- 햄버거메뉴 안 카테고리 폰트 코드 -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link
	href="https://fonts.googleapis.com/css2?family=Alfa+Slab+One&display=swap"
	rel="stylesheet">

<!-- 달력 아이콘 -->
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

</head>
<body>
	<div class="AllMain">
		<div class="firstmain">

			<!-- 헤더부분 -->
			<div class="mainheader">
				<h1 id="logo">
					<span>L'odeur</span>
				</h1>

				<div class="mainmanu">

					<div id="login">

						<c:if test="${empty sessionScope.memberid}">
							<a href="/login" class="logina"><p>Login</p></a>
						</c:if>

						<c:if test="${not empty sessionScope.memberid}">
							<span id="nameid">${sessionScope.memberid}</span>
							<a href="/logout" class="logina">logout</a>
						</c:if>
					</div>

					<div id="member">
						<a href="/reservation" class="logina"><p>reservation</p></a>
					</div>

					<input type="checkbox" id="icon"> <label for="icon">
						<!--label은 인라인 스타일--> <span></span> <span></span> <span></span>
					</label>

					<!-- 햄버거 메뉴 부분 -->
					<div id="header">
						<ul id="headerMenu">
							<li id="Menuhotel"><a href="/main" id="categryfont">About
									the hotel</a></li>

							<li id="Menuhotel"><a href="/Bar" id="categryfont">Buffet
									& Bar</a></li>

							<li id="Menuhotel"><a href="#" id="categryfont">Swimming
									pool</a></li>

							<li id="Menuhotel"><a href="#" id="categryfont">Sauna</a></li>

							<li id="Menuhotel"><a href="/signup" id="categryfont">Sign-up</a></li>
						</ul>
					</div>
				</div>
			</div>
			<!-- 헤더부분 끝 -->

			<!-- 이미지로 화면 full 채우는 부분 -->
			<div id="fullpage">
				<div class='quick'>
					<ul id="fullimg"></ul>
				</div>

				<div class="fullsection full1" pageNum="1">
					<div class="slide">
						<img src="../../../resources/img/Hotel.jpg" id="mainimg"> <img
							src="../../../resources/img/Hotel2.jpg" id="mainimg"> <img
							src="../../../resources/img/Hotel3.jpg" id="mainimg">
					</div>
				</div>

				<div class="fullsection full2" pageNum="2">
					<img src="../../../resources/img/suite.jpg" id="mainimg">

					<form action="/reservation" method="POST" name="reservationform"
						id="reservationform">
						<ul class="reservation">
							<!-- 방종류 -->
							<li id="room"><select id="room1" name="room1">
									<option selected>방 선택</option>
									<c:forEach items="${room1}" var="room">
										<option value="<c:out value="${room.room1}" />"><c:out
												value="${room.room1}" /></option>
									</c:forEach>
							</select></li>

							<!-- 달력 -->
							<li id="calender"><span id="CHECKIN" style="color: black">CHECK-IN</span>
								<span><input type="text" id="datepicker" name="checkin"></span>
								~ <span style="color: black">CHECK-OUT</span> <span><input
									type="text" id="CHECK-OUT" name="checkout"></span></li>

							<!-- 인원수 -->
							<li id="person"><span id="personnroom2"> <select
									id="room2" name="roomname">
										<option>"방을 선택해주세요"</option>
								</select>
							</span>

								<hr> <span id="personnel">어른(Adult) <input
									type="text" id="numberUpDown" name="adult" value="0">
									<button type="button" id="increaseQuantity">+</button>
									<button type="button" id="decreaseQuantity">-</button>
							</span>

								<hr> <span id="personnel">아이(Kid) <input type="text"
									class="result" name="kid" value="0">
									<button type="button" id="plus" class="but" value="+">+</button>
									<button type="button" id="minus" class="but" value="-">-</button>
							</span> <span id="personnel"> <input type="hidden"
									value="${sessionScope.memberid}" name="memberid">
							</span></li>
						</ul>
						<button id="reservation" type="submit">예약하러
							가기(reservation)</button>

					</form>
				</div>

				<div class="fullsection full3" pageNum="3">
					<img src="../../../resources/img/hall.jpg" id="mainimg">

					<div class="introduce">
						<p id="rooms">Rooms</p>
						<p id="roomtext">고객님의 편안한 휴식을 위한 공간</p>

						<div class="roomtype">
							<a href="/Room?room1=standard"><p>STANDARD</p></a> 
							<a href="/Room?room1=deluxe"><p>DELUXE</p></a> 
							<a href="/Room?room1=twin"><p>TWIN</p></a> 
							<a href="/Room?room1=suite"><p>SUITE</p></a>
						</div>
					</div>
				</div>

				<div class="fullsection full4" pageNum="4">
					<img src="../../../resources/img/page3main.jpg" id="mainimg">

					<div class="action">
						<div class="Explanation">
							<p id="text">"당신의 즐거운 여행 속 하나의 추억이 되길"</p>
							<p id="subtext">호텔을 이용하시는 모든 분들을 위해,</p>
							<p id="subtext">L'odeur에서 다양한 재미를 선사합니다.</p>
							<p>May it be a memory of your pleasant trip</p>
							<p>For everyone who uses the hotel,L'odeur offers lots of fun</p>
						</div>

						<ul id="actAll">
							<li>
								<div class="act">
									<img src="../../../resources/img/BAR2.jpg" id="actimg">
								</div>
								<p class="actType">BAR</p>
							</li>

							<li>
								<div class="act">
									<img src="../../../resources/img/Buffet2.jpg" id="actimg">
								</div>
								<p class="actType">Buffet</p>
							</li>

							<li>
								<div class="act">
									<img src="../../../resources/img/HotelSwimming.jpg" id="actimg">
								</div>
								<p class="actType">Swimming Pool</p>
							</li>

							<li>
								<div class="act">
									<img src="../../../resources/img/SAUNA.jpg" id="actimg">
								</div>
								<p class="actType">SAUNA</p>
							</li>
						</ul>
					</div>
				</div>
			</div>

		</div>
	</div>
</body>
</html>