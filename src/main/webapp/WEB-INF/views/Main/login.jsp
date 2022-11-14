<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../Header/header.jsp" %>
<link rel="stylesheet" href="../../../resources/CSS/login.css">
<script type="text/javascript" src="../../../resources/JS/login.js"></script>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


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
<%@ include file="../Footer/footer.jsp"%>