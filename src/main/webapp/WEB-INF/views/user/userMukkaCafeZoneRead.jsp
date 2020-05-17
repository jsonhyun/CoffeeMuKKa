<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../userInclude/header.jsp" %>
<%@ include file="../userInclude/subMenu.jsp" %>
<!-- bar-rating -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/fontawesome-stars2.css">
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/jquery.barrating.min.js"></script>

<style>
	.daeguIcon{
		background: url(/coffeemukka/resources/images/point_w.png) no-repeat;
	    background-size: 19px;
	    background-position: 5px center;
	    background-color: #ED7D31;
	    width: 60px;
	    height: 25px;
	    line-height: 25px;
	    text-align: right;
	    padding: 0 30px;
	    padding-right: 10px;
	    margin-right: 20px;
	    border-radius: 5px;
	    color: white;
	    display: inline;
	}
	.themeIcon{
		background-size: 19px;
	    background-position: 5px center;
	    background-color: #b038fa;
	    width: 60px;
	    height: 25px;
	    line-height: 25px;
	    text-align: right;
	    padding-right: 10px;
	    margin-right: 5px;
	    padding: 0 10px;
	    border-radius: 5px;
	    color: white;
	    display: inline;
	}
	.position{
		position: relative;
	}
	.modifyDate{
		color: #ED7D31;
		font-size: 14px;
		position: absolute;
		top: 0;
		right: 0;
	}
	#love{
		height: 30px;
	    position: absolute;
	    top: 26px;
	    right: 80px;
	}
	#like{
		height: 30px;
	    position: absolute;
	    top: 25px;
	    right: 20px;
	}
	#oneline{
		margin: 10px 40px;
	}
	.cafeInfo{
		height: 50px;
	    border-bottom: 1px solid #545454;
	    line-height: 50px;
	    padding-left: 10px;
	    clear: both;
	}
	.upAndDown{
		position: absolute;
    	right: 30px;
	}
	.infoIcon{
		height: 25px;
	    padding: 10px;
	    float: left;
	}
	#spoint{
		height: 45px;
	    line-height: 45px;
	    background-color: #f4f4f4;
	    border-radius: 10px;
	    width: 180px;
	    padding-left: 10px;
	    float: left;
	}
	#jumsu{
		height: 45px;
	    line-height: 45px;
	    float: left;
	    margin-left: -60px;
	}
</style>	
	<div class="content subPageContent position">
		<!-- 서브페이지 콘텐츠 -->
		<div class="contentArea">
			<!-- 서브페이지 공통적인 타이틀 -->
			<h2 class="subPageTitle">
				<span class="title">카르멜</span>
				<span class="subTit grayB"> <span style="font-size: 22px; vertical-align: text-bottom;">|</span> <a href="https://www.instagram.com/cafe_carmel/"><img src="${pageContext.request.contextPath }/resources/images/sns.png" style="height: 18px;"></a></span>
			</h2>
			
			<!-- 서브콘텐츠 시작 -->
			<div class="modifyDate">Update 2020/05/10</div>
			<img id="love" src="${pageContext.request.contextPath }/resources/images/key1.png">
			<img id="like" src="${pageContext.request.contextPath }/resources/images/like.png">
			<div class="daeguIcon">달성군</div>
			<c:set var="theme1" value="1"/>
			<c:choose>
				<c:when test="${theme1 == 1 }">
					<div class="themeIcon" style="background-color: #b038fa;">#데이트</div>
				</c:when>
				<c:when test="${theme1 == 2 }">
					<div class="themeIcon" style="background-color: #528236;">#뷰</div>
				</c:when>
				<c:when test="${theme1 == 3 }">
					<div class="themeIcon" style="background-color: #96814c;">#착한아메</div>
				</c:when>
				<c:when test="${theme1 == 4 }">
					<div class="themeIcon" style="background-color: #f2486f;">#디저트</div>
				</c:when>
				<c:when test="${theme1 == 5 }">
					<div class="themeIcon" style="background-color: #FFB232;">#댕댕이</div>
				</c:when>
				<c:when test="${theme1 == 6 }">
					<div class="themeIcon" style="background-color: #0170c2;">#작업</div>
				</c:when>
			</c:choose>
			
			<c:set var="theme2" value="3"/>
			<c:choose>
				<c:when test="${theme2 == 1 }">
					<div class="themeIcon" style="background-color: #b038fa;">#데이트</div>
				</c:when>
				<c:when test="${theme2 == 2 }">
					<div class="themeIcon" style="background-color: #528236;">#뷰</div>
				</c:when>
				<c:when test="${theme2 == 3 }">
					<div class="themeIcon" style="background-color: #96814c;">#착한아메</div>
				</c:when>
				<c:when test="${theme2 == 4 }">
					<div class="themeIcon" style="background-color: #f2486f;">#디저트</div>
				</c:when>
				<c:when test="${theme2 == 5 }">
					<div class="themeIcon" style="background-color: #FFB232;">#댕댕이</div>
				</c:when>
				<c:when test="${theme2 == 6 }">
					<div class="themeIcon" style="background-color: #0170c2;">#작업</div>
				</c:when>
			</c:choose>
			
			<c:set var="theme3" value="4"/>
			<c:choose>
				<c:when test="${theme3 == 1 }">
					<div class="themeIcon" style="background-color: #b038fa;">#데이트</div>
				</c:when>
				<c:when test="${theme3 == 2 }">
					<div class="themeIcon" style="background-color: #528236;">#뷰</div>
				</c:when>
				<c:when test="${theme3 == 3 }">
					<div class="themeIcon" style="background-color: #96814c;">#착한아메</div>
				</c:when>
				<c:when test="${theme3 == 4 }">
					<div class="themeIcon" style="background-color: #f2486f;">#디저트</div>
				</c:when>
				<c:when test="${theme3 == 5 }">
					<div class="themeIcon" style="background-color: #FFB232;">#댕댕이</div>
				</c:when>
				<c:when test="${theme3 == 6 }">
					<div class="themeIcon" style="background-color: #0170c2;">#작업</div>
				</c:when>
			</c:choose>
		</div>
		<div>
			<p id="oneline">
				<img src="${pageContext.request.contextPath }/resources/images/ssang-1.png">
				<span style="font-size: 20px;">논밭을 보며 즐기는 여유 한잔</span>
				<img src="${pageContext.request.contextPath }/resources/images/ssang-2.png" style="vertical-align: text-top;">
			</p>
			<p style="font-size: 20px; padding: 5px 25px;">
				편안한 휴식을 느낄 수 있는 베이커리 카페 카르멜. 스페셜티 싱글 오리진 에스프레소와 건강 우리밀빵, 푸른 전경을 선사합니다.
			</p>
			<div style="padding: 20px 65px;">
				<div class="bxslider" style="text-align: center;">
					<div><img src="${pageContext.request.contextPath }/resources/images/sumnail/carmel-1.jpg" style="height: 500px;"></div>
					<div><img src="${pageContext.request.contextPath }/resources/images/sumnail/carmel-2.jpg" style="height: 500px;"></div>
					<div><img src="${pageContext.request.contextPath }/resources/images/sumnail/carmel-3.jpg" style="height: 500px;"></div>
					<div><img src="${pageContext.request.contextPath }/resources/images/sumnail/carmel-4.jpg" style="height: 500px;"></div>
				</div>
			</div>
			<div class="cafeInfo" id="cafeInfo1">
				<span style="font-size: 20px;font-weight: bold;">기본 정보</span><span style="font-size: 20px;margin: 0 10px;"> | </span>
				<img style="height: 20px;vertical-align: middle;" src="${pageContext.request.contextPath }/resources/images/spaner.png">
				<a href="#"><span style="color: red;vertical-align: middle;">오류 제보</span></a><a class="upAndDown" href="#"></a>
			</div>
			<div id="cafeDefault">
				<img class="infoIcon" src="${pageContext.request.contextPath }/resources/images/point.png"> 
				<div style="height: 45px;line-height: 45px;">대구 달성군 다사읍 달구벌대로 616</div>
				
				<div id="map" style="width:100%;height:400px;"></div>
				<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=82c67a5c009ecc3de6e3c10d398c0061&libraries=services"></script>
				<script>
					// 주소-좌표 변환 객체를 생성합니다
					var geocoder = new kakao.maps.services.Geocoder();
					
					var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
						mapOption = {
							center : new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
							level : 3 // 지도의 확대 레벨
						};
	
					// 지도를 생성합니다    
					var map = new kakao.maps.Map(mapContainer, mapOption);
	
					// 주소로 좌표를 검색합니다
					geocoder.addressSearch('대구 달성군 다사읍 달구벌대로 616', function(result, status) {
						// 정상적으로 검색이 완료됐으면 
						if (status === kakao.maps.services.Status.OK) {
							var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
							// 결과값으로 받은 위치를 마커로 표시합니다
							var marker = new kakao.maps.Marker({
								map : map,
								position : coords
							});
							// 인포윈도우로 장소에 대한 설명을 표시합니다
							var infowindow = new kakao.maps.InfoWindow({
								content : '<div style="width:150px;text-align:center;padding:6px 0;">카르멜</div>'
							});
							infowindow.open(map, marker);
							// 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
							map.setCenter(coords);
						}
					});
				</script>
				
				<img class="infoIcon" src="${pageContext.request.contextPath }/resources/images/time.png"> 
				<div style="height: 45px;line-height: 45px;">평일 11:00~23:00 / 주말 12:00~23:00 | 연중무휴</div>
				
				<img class="infoIcon" src="${pageContext.request.contextPath }/resources/images/tel.png"> 
				<div style="height: 45px;line-height: 45px;">053-710-5090</div>
				
				<img class="infoIcon" src="${pageContext.request.contextPath }/resources/images/star.png"> 
				<div class="star" id="spoint">
					<select class="starPoint"> 
						<option value="1">1</option> 
						<option value="2">2</option> 
						<option value="3">3</option> 
						<option value="4">4</option> 
						<option value="5">5</option> 
					</select>
				</div>
				<div id="jumsu">4.7 / 5</div>
			</div>
			
			<div class="cafeInfo" id="cafeInfo2">
				<span style="font-size: 20px;font-weight: bold;">메뉴판</span><a class="upAndDown" href="#"></a>
			</div>
			<div class="closeInfo" id="cafeMenu">
				<img class="infoIcon" src="${pageContext.request.contextPath }/resources/images/point.png"> 
				<div style="height: 45px;line-height: 45px;">대구 달성군 다사읍 달구벌대로 616</div>
			</div>
			
			<div class="cafeInfo" id="cafeInfo3">
				<span style="font-size: 20px;font-weight: bold;">편의 정보</span><a class="upAndDown" href="#"></a>
			</div>
			<div class="closeInfo" id="cafeComfort">
				<img class="infoIcon" src="${pageContext.request.contextPath }/resources/images/point.png"> 
				<div style="height: 45px;line-height: 45px;">대구 달성군 다사읍 달구벌대로 616</div>
			</div>
			
			<div class="cafeInfo" id="cafeInfo4"">
				<span style="font-size: 20px;font-weight: bold;">상세 정보</span><a class="upAndDown" href="#"></a>
			</div>
			<div class="closeInfo" id="cafeDetail">
				<img class="infoIcon" src="${pageContext.request.contextPath }/resources/images/point.png"> 
				<div style="height: 45px;line-height: 45px;">대구 달성군 다사읍 달구벌대로 616</div>
			</div>
			<div style="margin-bottom: 50px;"></div>
		</div>
	</div>
	
<script>
	$(function() {
		$('.starPoint').barrating({
			theme: 'fontawesome-stars',
			initialRating: 3,
			readonly: true
		})
		
		$('.bxslider').bxSlider({
			auto : true,
			speed : 300,
			pause : 4000,
			mode : 'fade',
			pager : true,
			slideWidth : 800
		});

		$(".cafeInfo").addClass("open");
		$(".closeInfo").addClass("close");
		$("#cafeInfo1 .upAndDown").html('<i class="fas fa-angle-up"></i>');
		$("#cafeInfo2 .upAndDown").html('<i class="fas fa-angle-down"></i>');
		$("#cafeInfo3 .upAndDown").html('<i class="fas fa-angle-down"></i>');
		$("#cafeInfo4 .upAndDown").html('<i class="fas fa-angle-down"></i>');

		$("#cafeInfo1 .upAndDown").click(function(e) {
			e.preventDefault();

			if ($("#cafeDefault").hasClass("open")) {
				$("#cafeDefault").slideUp();
				$("#cafeDefault").removeClass("open");
				$(this).html('<i class="fas fa-angle-down"></i>');
			} else {
				$("#cafeDefault").slideDown();
				$("#cafeDefault").addClass("open");
				$(this).html('<i class="fas fa-angle-up"></i>');
			}
		})
		$("#cafeInfo2 .upAndDown").click(function(e) {
			e.preventDefault();

			if ($("#cafeMenu").hasClass("open")) {
				$("#cafeMenu").slideUp();
				$("#cafeMenu").removeClass("open");
				$(this).html('<i class="fas fa-angle-down"></i>');
			} else {
				$("#cafeMenu").slideDown();
				$("#cafeMenu").addClass("open");
				$(this).html('<i class="fas fa-angle-up"></i>');
			}
		})
		$("#cafeInfo3 .upAndDown").click(function(e) {
			e.preventDefault();

			if ($("#cafeComfort").hasClass("open")) {
				$("#cafeComfort").slideUp();
				$("#cafeComfort").removeClass("open");
				$(this).html('<i class="fas fa-angle-down"></i>');
			} else {
				$("#cafeComfort").slideDown();
				$("#cafeComfort").addClass("open");
				$(this).html('<i class="fas fa-angle-up"></i>');
			}
		})
		$("#cafeInfo4 .upAndDown").click(function(e) {
			e.preventDefault();

			if ($("#cafeDetail").hasClass("open")) {
				$("#cafeDetail").slideUp();
				$("#cafeDetail").removeClass("open");
				$(this).html('<i class="fas fa-angle-down"></i>');
			} else {
				$("#cafeDetail").slideDown();
				$("#cafeDetail").addClass("open");
				$(this).html('<i class="fas fa-angle-up"></i>');
			}
		})
	})
</script>
<%-- 지우면 안됨 subMenu.jsp에 container 시작 태그 있음 --%>
</div>
<!-- container end -->

<%@ include file="../userInclude/footer.jsp" %>