<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../Header/header.jsp" %>
<link rel="stylesheet" href="../../../resources/CSS/bar.css">

<div class="barall"> 
	<div>
	<img id="buffetimg" src="../../../resources/img/Buffet.jpg">
	</div>

<div class="barmiddle">	
	<div class="foodexplan">
		<p id="Introduct">Best taste, fresh ingredients
        restaurant buffet</p>
		<p id="foodintro">한식,중식,양식,일식 등 전 세계 유명한 음식들을 선보이는 레스토랑으로,<br>
		직영 농장에서 직수입해온 재료들을 최상의 퀄리티를 만들어주실 셰프님께서 계십니다.
		</p>
	</div>
	
	<p id="BuffetTime">운영 시간</p>	
	<div class="foodTime">
		<table id="week">
			<tr>
				<td rowspan="3"  id="weekday">주중</td>
				<td id="meal">BreakFast:
				<p>﻿♧ A.M 06:00 ~ A.M 08:00
				</p></td>
			</tr>
			<tr>
				<td id="meal">Lunch:
				<p>﻿♧ P.M 12:00 ~ P.M 14:00
				</p></td>
			</tr>

			<tr>
				<td id="meal">Dinner:
				<p>﻿♧ P.M 18:30 ~ P.M 20:30
				</p></td>
			</tr>		
		
			<tr>
				<td rowspan="3" id="weekday">주말</td>
				<td id="meal">BreakFast:
				<p>﻿♧ 주말 아침 식사는 제공되지 않습니다.
				</p></td>
			</tr>
			<tr>
				<td id="meal">Lunch:
				<p>﻿♧ P.M 12:00 ~ P.M 14:00
				</p></td>
			</tr>

			<tr>
				<td id="meal">Dinner:
				<p>﻿♧  P.M 18:30 ~ P.M 20:00
				</p></td>
			</tr>	
		</table>
		
		<p id="BuffetTime">이용 금액</p>	
	
		<table id="week">
			<tr>
				<td rowspan="3"  id="weekday">주중/주말</td>
				<td id="buffetprice">BreakFast</td>
				<td id="meal">
				<p>성인 25,000원 / 청소년 15,000원 / 어린이 5,000원﻿
				</p></td>
			</tr>
			<tr>
				<td id="buffetprice">Lunch</td>
				<td id="meal"><p>성인 22,000원 / 청소년 14,000원 / 어린이 5,000원
				</p></td>
			</tr>

			<tr>
				<td  id="buffetprice">Dinner</td>
				<td id="meal"><p>성인 20,000원 / 청소년 13,000원 / 어린이 5,000원
				</p></td>
			</tr>		
		
		</table>
		
		<p id="BuffetTime">추가 정보</p>
		<div id="addBuffet">
			<ul>
				<li id="add">▶카운터 직원에게 문의하시거나 프론트로 전화 주시면 룸 서비스를 이용하실 수 있습니다.</li>
				<li id="add">▶룸서비스 이용시 서비스 비용 20,000원이 추가 됨을 알려드립니다.</li>
				<li id="add">▶레스토랑 사정에 따라 시간 변동이 있을 수 있습니다.</li>
				<li id="add">▶할인 쿠폰 및 무료 쿠폰은 직원에게 직접 제출해야 적용 가능합니다.</li>
				<li id="add">▶문의 및 예약 : 052-123-5678</li>
			</ul>
		</div>	
	</div>
</div>	
	<div class="Barborder">
	</div>
	
	<div class="Bar">
		<img id="buffetimg" src="../../../resources/img/BAR.jpg">

	
	</div>
</div>

<%@ include file="../Footer/footer.jsp"%>