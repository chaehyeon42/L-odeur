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
		<p> L'odeur 호텔 실내수영장은 화려하고 이국적으로 설계되었으며, 편안하고 여유로운 시간을 즐기실 수 있습니다. <br>자동 필터링 관리 시스템으로 최상의 수질을 보증합니다.</p>   
   		<p>L'odeur Hotel's indoor swimming pool is designed to be colorful and exotic, and you can enjoy a relaxing and relaxing time.<br> The automatic filtering management system guarantees the best water quality.</p>
   </div>
</div>

<script type="text/javascript" src="../../../resources/JS/swimming.js"></script>
<%@ include file="../Footer/footer.jsp"%>
