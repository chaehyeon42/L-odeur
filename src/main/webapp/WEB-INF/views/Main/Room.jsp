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
			</li>
			<br>

			<li id="explan">
				<p>
					${room[0].explanation}<br> ${room[0].explanationadd}
				</p>
			</li>
		</ul>


		<ul id="imfor">
			<li><input type="hidden" value="${room[0].bno}"></li>

			<li>
				<p id="roomname">${room[0].roomname}</p>
			</li>

			<li>
				<p id="roomp">가격:</p>
				<p id="roomp">${room[0].price}</p>
			</li>

			<li>
				<p id="roomp">수용 인원:</p>
				<p id="roomp">${room[0].people}</p>
			</li>

			<li>
				<p id="roomp">방 구조:</p>
				<p id="roomp">${room[0].structure}</p>
			</li>

			<li>
				<p id="roomp">침대 수:</p>
				<p id="roomp">${room[0].bed}</p>
			</li>

			<li>
				<p id="roomp">checkin/checkout:</p>
				<p id="roomp">${room[0].checkin}/${room[0].checkout}</p>
			</li>
		</ul>

		<ul>
			<li><p id="roomfacility">객실 시설</p></li>
		</ul>
		
		<div class="facility">
			<ul class="type">
				<li id="typetitle">BASIC</li>
				<li id="factype">•디지털 금고</li>
				<li id="factype">•무료 생수/음료</li>
				<li id="factype">•100% 소독 가운</li>
				<li id="factype">•슬리퍼,신발 클리너</li>
				<li id="factype">•전기주전자 & 종이컵</li>
			</ul>

			<ul class="type">
				<li id="typetitle">BATH ROOM</li>
				<li id="factype">•헤어드라이기 및 고데기</li>
				<li id="factype">•페이스 타월</li>
				<li id="factype">•배스 세트 및 타월</li>
				<li id="factype">•비데</li>
			</ul>

			<ul class="type">
				<li id="typetitle">BED ROOM</li>
				<li id="factype">•프리미엄 침대</li>
				<li id="factype">•공기청정기</li>
				<li id="factype">•LED TV</li>
				<li id="factype">•전기장판 & 무풍시스템 에어컨</li>
			</ul>
		</div>
	</div>
	<div class="explanation">
		<ul class="notice">
			<li><p id="notitle">안내 사항</p></li>
			<li id="nottext"><p>• 체크인은 오후 18:00 , 체크 아웃은 오후 13:00 입니다.</p></li>
			<li id="nottext"><p>• 체크인 1일전 오후 12:00까지는 위약금 없이 취소 및 변경이
					가능합니다.</p>
				<p id="textadd">오후 12:00 이후 취소 및 변경 시 예약시 숙박 요금의 위약금 100%가
					부과됩니다.</p></li>
			<li id="nottext"><p>
					• 기후변화 또는 천재지변 등의 불가항력적 상황으로 <br>호텔의 영업이 불가한 경우, 예약이 취소 되거나 호텔
					업장 이용이 제한 될 수 있습니다.
				</p></li>
			<li id="nottext"><p>• 객실 및 영업장을 포함한 호텔 내 모든 구역은 금연입니다.</p></li>
			<li id="nottext"><p>• 예약 문의 번호: 052-1234-5678</p></li>
		</ul>
	</div>
</div>


<script type="text/javascript" src="../../../resources/JS/room.js"></script>
<%@ include file="../Footer/footer.jsp"%>