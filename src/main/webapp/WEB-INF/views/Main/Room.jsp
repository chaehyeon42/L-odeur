<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../Header/header.jsp"%>


<link rel="stylesheet" href="../../../resources/CSS/room.css">

<img id="roimg" src="${room[0].filename}">
<div class="Roomall">
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
		
		<ul class="roomex">
			<li>
				<p id="context">${room[0].context}</p>	
			</li><br>
		
			<li>
				<p>
				${room[0].explanation}<br>
				${room[0].explanationadd}
				</p>
			</li>	
		</ul>
		
			
			<ul id="imfor">
				<li><input type="hidden" value="${room[0].bno}"></li>

				<li>
					<p>${room[0].roomname}</p>
				</li>

				<li>
					<p id="roomp">가격:</p>
					<p>${room[0].price}</p>
				</li>

				<li>
					<p id="roomp">수용 인원:</p>
					<p>${room[0].people}</p>
				</li>

				<li>
					<p id="roomp">방 구조:</p>
					<p>${room[0].structure}</p>
				</li>

				<li>
					<p id="roomp">침대 수:</p>
					<p>${room[0].bed}</p>
				</li>

				<li>
					<p id="roomp">checkin/checkout:</p>
					<p>${room[0].checkin}/ ${room[0].checkout}</p>
				</li>
			</ul>
		</div>
	<div class="explanation">
		<ul class="notice">
			<li><p id="notitle">안내 사항</p></li>
			<li><p>• 체크인은 오후 18:00 , 체크 아웃은 오후 13:00 입니다.</p></li>
			<li><p>• 체크인 1일전 오후 12:00까지는 위약금 없이 취소 및 변경이 가능합니다.<br> 오후 12:00 이후 취소 및 변경 시 예약시 숙박 요금의 위약금 100%가 부과됩니다.</p></li>
			<li><p>• 기후변화 또는 천재지변 등의 불가항력적 상황으로 <br>호텔의 영업이 불가한 경우, 예약이 취소 되거나 호텔 업장 이용이 제한 될 수 있습니다.</p></li>
			<li><p>• 객실 및 영업장을 포함한 호텔 내 모든 구역은 금연입니다.</p></li>
			<li><p>• 예약 문의 번호: 052-1234-5678</p></li>
		</ul>
	</div>
	</div>


<script type="text/javascript" src="../../../resources/JS/room.js"></script>
</body>
</html>