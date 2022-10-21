<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../Header/header.jsp" %>
<link rel="stylesheet" href="../../../resources/CSS/signup.css">

<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>

<!-- 페이지 전체 js -->
<script type="text/javascript" src="../../../resources/JS/signupmain.js"></script>
<!-- 주소 -->
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<!-- 주소를 적기위한 js -->
<script type="text/javascript" src="../../../resources/JS/signup.js"></script>


<div class="signupAll">
	<div class="signupheader">
	<p id="signup">회원가입</p>
	<p id="essential">모든 항목을 필수로 기입하셔야 합니다.</p>
	</div>
	
	<div class="inputsign">
	<form action="/signup" method="post" name="signupform" id="signupform">
		<ul> 
			<li class="memberli">
			<p id="membertext">이름</p>
			<p id="signtext"><input type="text" class="noname" id="textbox" name="membername" placeholder="이름을 입력하세요"></p>
			</li>
			
			<li class="memberli">
			<p id="membertext">아이디</p>
			<p id="signtext"><input type="text" class="noid"  id="textbox" name="memberid" placeholder="아이디를 입력하세요"></p>
			<div>
			<span class="memberidexist">아이디가 이미 존재합니다.</span>
			</div>
			<div>
			<span class="memberidFalse">아이디로는 영문과 숫자가 혼합된 8~16자만 허용합니다.</span>
			</div>
			<div>
			<span class="memberidpossible">사용 가능한 아이디입니다.</span>
			</div>
			
			</li>		
		
			<li class="memberli">
			<p id="membertext">비밀번호</p>
			<p id="signtext"><input type="password" class="nopw" id="textbox" name="memberpw" placeholder="비밀번호를 입력하세요"></p>
			</li>
			
			<li class="memberli">
			<p id="membertext">전화번호</p>
			<p id="signtext"><input type="text" class="nophonenumber" id="textbox" name="phonenumber" placeholder="전화번호를 입력하세요"></p>
				<div>
				<span class="phonenumberexist">번호가 이미 존재합니다.</span>
				</div>
				<div>
				<span class="phonenumberpossible">사용 가능한 휴대폰 번호입니다.</span>
				</div>
			</li>
			
			<li class="memberli">
			<p id="membertext">생년월일</p>
			<p id="signtext"><input type="text" class="nobirthday" id="textbox" name="birthday" placeholder="생년월일을 입력하세요"></p>
			</li>
			
			<li class="memberli">
			<p id="membertext">주소
			<button type="button" class="addrbtn" onclick="addrCode();">주소찾기</button>
			</p>
			<p id="signtext"><input type="text" class="noaddr"  id="textbox" name="addr" readonly="readonly" placeholder="도로명 주소"></p>
			<p id="signtext"><input type="text" class="nozipcode" id="textbox" name="zipcode" readonly="readonly" placeholder="우편번호"></p>
			<p id="signtext"><input type="text" class="noaddr2" id="textbox" name="addr2" placeholder="상세 주소"></p>
			</li>
			
			<li class="memberli">
			<button type="submit" id="signupbtn">회원가입 등록</button>
			</li>
		</ul>
	</form>	
	</div>
</div>
</body>
</html>