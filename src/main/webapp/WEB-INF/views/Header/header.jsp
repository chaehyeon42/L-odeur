<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="../../../resources/CSS/header.css">

</head>
<body>
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
</body>
</html>