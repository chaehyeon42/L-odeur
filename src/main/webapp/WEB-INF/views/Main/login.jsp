<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="../../../resources/CSS/login.css">
<script type="text/javascript" src="../../../resources/JS/login.js"></script>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
</head>
<body>
<!-- 헤더부분 -->
			<div class="mainheader">
				<h1 id="logo">
					<span>L'odeur</span>
				</h1>

				<div class="mainmanu">

					<div id="login">
					<a href="/login" class="logina"><p>login</p></a>
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
									
							<li id="Menuhotel"><a href="#" id="categryfont">Rooms</a></li>		

							<li id="Menuhotel"><a href="#" id="categryfont">Buffet &
									Bar</a></li>

							<li id="Menuhotel"><a href="#" id="categryfont">Swimming
									pool</a></li>

							<li id="Menuhotel"><a href="#" id="categryfont">Sauna</a></li>
							
							<li id="Menuhotel"><a href="/signup"  id="categryfont">Sign-up</a></li>
						</ul>
					</div>
				</div>
			</div>
		<!-- 헤더부분 끝 -->



<div class="loginview">
	<h2 id="login-css">로그인</h2>	
	<div class="memberlogin">
		<div id="member-css">
			<h3>회원 로그인</h3>
			<h5 id="memberh5">로그인을 하시면 예약 정보를 알 수 있습니다.</h5>
			<form action="/login" method="post">
				<div class="loginMenu">
					<input name="memberid" type="text" placeholder="아이디를 입력해주세요." id="logintext" class="id">
					<input name="memberpw" type="password" placeholder="비밀번호를 입력해주세요." id="logintext" class="pw">
				</div>
				<button type="submit" id="rsvd">로그인 확인</button>	
				
				<c:if test = "${session.setAttribute != result} ">
				<div class = "login_warn"><p>사용자 ID 또는 비밀번호를 잘못 입력하셨습니다.</p></div>
				</c:if>
						
			</form>
		</div>	
		
		<div id="nomember-css">
			<h3>비회원 로그인</h3>
			<h5 id="memberh5">비회원 예약을 하신 분들은 예약시 작성하셨던 이름과 핸드폰번호를 통해 예약 정보를 알수있습니다.</h5>	
				<form>
					<div class="loginMenu2">
						<input name="membername" type="text" placeholder="이름을 입력해주세요." id="logintext">
						<input name="phonenumber" type="text" placeholder="핸드폰 번호를 입력해주세요." id="logintext">
					</div>
					<button type="submit" id="rsvd">예약 확인</button>			
				</form>
		</div>
	</div>	
</div>
</body>
</html>