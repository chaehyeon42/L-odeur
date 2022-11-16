<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../Header/header.jsp"%>

<!-- 슬라이드 소스 -->
<link rel="stylesheet" type="text/css" href="slick/slick.css"/>
<script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script> 
<script type="text/javascript" src="slick/slick.min.js"></script>

<!-- css -->
<link rel="stylesheet" href="../../../resources/CSS/swimming.css">
<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>

<!-- JS -->
<script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>

<div class="swimmingAll">
	<div id="poolTitle">
		<p id="Hotelname">L'odeur</p>
		<p id="swimmingpool">실내 수영장</p>
	</div>
	<div id="slideShow">
   		<ul class="slides">
     	  <li><img src="../../../resources/img/HotelSwimming.jpg" id="slideimg"></li>
    	  <li><img src="../../../resources/img/HotelSwimming2.jpg" id="slideimg"></li>
    	  <li><img src="../../../resources/img/HotelSwimming3.jpg" id="slideimg"></li>
    	</ul>   
   </div>
   
   <div class="swimmingMain">
		<p id="poolexplan"> L'odeur 호텔 실내수영장은 낮과 밤의 실내 디자인이 달라지며, 편안하고 여유로운 시간을 즐기실 수 있습니다. <br>자동 필터링 관리 시스템으로 최상의 수질을 보증합니다.</p>   
   		<p id="poolexplansub">L'odeur Hotel's indoor swimming pool is designed to be colorful and exotic, and you can enjoy a relaxing and relaxing time.<br> The automatic filtering management system guarantees the best water quality.</p>
   </div>
   
   <div class="swimmingmiddle">
   <p id="operating">운영시간</p>   
   <div>
   		<table id="week">
   			<tr>
			<td id="swimmingday">주중</td>
				<td id="meal"><p>﻿♧ A.M 06:00 ~ P.M 20:00</p></td>
			</tr>
			<tr>
			<td id="swimmingday">주말</td>
				<td id="meal"><p>﻿♧ P.M 09:00 ~ P.M 21:00</p></td>
			</tr>
   		</table>
   </div>
   
   <p id="Precaution">추가정보</p>
   <div id="Precaut">
   		<ul>
   			<li id="pooladd">▶L'odeur 호텔 실내수영장은 객실 예약 손님 한해서 무료로 개장 합니다. </li>
   			<li id="pooladd">▶만 14세 이하 고객의 경우,단독 출입이 제한됩니다.</li>
  			<li id="pooladd">▶매월 마지막 주 일요일은 정기 휴관입니다.</li>
  			<li id="pooladd">▶음식물 반입이 제한됩니다.<br>(음료수,물 가능)</li>
  			<li id="pooladd">▶썬배드 및 타올 이용시 카운터에 문의 해주시면 이용 가능 합니다</li>
 			<li id="pooladd">▶썬배드 및 타올 추가 시 이용 요금 5000원이 발생함을 알려드립니다.</li>
   		</ul>
   </div>
</div>
</div>

<script type="text/javascript" src="../../../resources/JS/swimming.js"></script>
<%@ include file="../Footer/footer.jsp"%>
