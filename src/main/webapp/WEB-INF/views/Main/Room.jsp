<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../Header/header.jsp"%>


<link rel="stylesheet" href="../../../resources/CSS/room.css">


<div class="Roomall">
	<div class="roomhallway">
		<img src="../../../resources/img/hall.jpg" id="roomimg">

		<div class="introduce">
			<p id="rooms">Rooms</p>
			<p id="roomtext">고객님의 편안한 휴식을 위한 공간</p>

			<div class="roomtype">
				<p>STANDARD</p>
				<p>DELUXE</p>
				<p>TWIN</p>
				<p>SUITE</p>
			</div>
		</div>


		<div class="roommain">
			<ul>
				<li id="standard">
					<div id="stan">
						<img src="../../../resources/img/Standard.jpg" id="standardimg">
					</div>

					<div id="imfor">
						<p>STANDARD</p>
						<p>가격:</p>
						<p>190,000₩ (1박 기준)</p>
						<p>수용 인원:</p>
						<p>2~3인</p>
						<p>방 구조:</p>
						<p>거실1,침실1,욕실1</p>
						<p>침대 수:</p>
						<p>킹1</p>
						<p>checkin/checkout:</p>
						<p>P.M 18:00/P.M 13:00</p>
					</div>
				</li>

				<li id="deluxe">
					<div id="del">
						<img src="../../../resources/img/Deluxe.jpg" id="deluxeimg">
					</div>
					<div id="imfor">
						<p>DELUXE</p>
						<p>가격:</p>
						<p>230,000₩ (1박 기준)</p>
						<p>수용 인원:</p>
						<p>2~4인</p>
						<p>방 구조:</p>
						<p>거실1,침실3,욕실2</p>
						<p>침대 수:</p>
						<p>퀸1,싱글1,패밀리1</p>
						<p>checkin/checkout:</p>
						<p>P.M 18:00/P.M 13:00</p>
					</div>
				</li>

				<li id="twin">
					<div id="tw">
						<img src="../../../resources/img/TWIN.jpg" id="twinimg">
					</div>
					<div id="imfor">
						<p>TWIN</p>
						<p>가격:</p>
						<p>210,000₩ (1박 기준)</p>
						<p>수용 인원:</p>
						<p>3~4인</p>
						<p>방 구조:</p>
						<p>거실1,침실2,욕실2</p>
						<p>침대 수:</p>
						<p>트윈1,킹1</p>
						<p>checkin/checkout:</p>
						<p>P.M 18:00/P.M 13:00</p>
					</div>
				</li>

				<li id="suite">
					<div id="sui">
						<img src="../../../resources/img/suite.jpg" id="suiteimg">
					</div>
					<div id="imfor">
						<p>SUITE</p>
						<p>가격:</p>
						<p>300,000₩ (1박 기준)</p>
						<p>수용 인원:</p>
						<p>2~6인</p>
						<p>방 구조:</p>
						<p>거실1,침실4,욕실2</p>
						<p>침대 수:</p>
						<p>킹1,퀸1,싱글1,슈퍼싱글1</p>
						<p>checkin/checkout:</p>
						<p>P.M 18:00/P.M 13:00</p>
					</div>
				</li>
			</ul>
		</div>

	</div>


</div>
<script type="text/javascript" src="../../../resources/JS/room.js"></script>
</body>
</html>