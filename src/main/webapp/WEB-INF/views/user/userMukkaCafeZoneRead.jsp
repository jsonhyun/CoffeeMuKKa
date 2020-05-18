<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../userInclude/header.jsp" %>
<%@ include file="../userInclude/subMenu.jsp" %>
<!-- bar-rating -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/fontawesome-stars.css">
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/jquery.barrating.min.js"></script>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>

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
		position: absolute;
	    top: 25px;
	    right: 20px;
	    font-size: 30px;
	    color: darkgrey;
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
	.br-theme-fontawesome-stars .br-widget a.br-selected:after {
		color: red;
	}
	#jumsu{
		height: 45px;
	    line-height: 45px;
	    float: left;
	    margin-left: -60px;
	    margin-bottom: 20px;
	}
	td, th {
	padding: 5px;
	border: 1px solid white;
	text-align: center;
	}
	
	th {
		background-color: white;
	}
	#menuImg{
		background-image:url("${pageContext.request.contextPath }/resources/images/sumnail/carmel-menu.jpg");
		background-repeat: no-repeat;
		background-size: cover;
		clear: both;
    	width: 800px;
		height: 400px;
		margin: 0px 70px 30px;
	}
	.cafeInfoIcon{
	    border-radius: 100px;
	    width: 50px;
	    padding: 10px;
	    box-shadow: 3px 3px 10px #ccc;
	}
	#detailInfo{
	    float: left;
	    margin: 30px;
	    width: 880px;
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
			<i class="far fa-thumbs-up" id="like"></i>
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

				<h4 style="clear: both; margin-left: 50px;">기간별 별점 변화 그래프</h4>

				<div id="Line_Controls_Chart">
					<!-- 라인 차트 생성할 영역 -->
					<div id="lineChartArea" style="padding: 0px 20px 0px 0px;margin-bottom: 30px;"></div>
					<!-- 컨트롤바를 생성할 영역 -->
					<div id="controlsArea" style="padding: 0px 20px 0px 0px; height: 130px;"></div>
				</div>
	
			</div>
			
			<div class="cafeInfo" id="cafeInfo2">
				<span style="font-size: 20px;font-weight: bold;">메뉴판</span><a class="upAndDown" href="#"></a>
			</div>
			<div class="closeInfo" id="cafeMenu">
				<div>
					<table style="float: left;margin: 30px;width: 250px;">
						<tr>
							<th>COFFEE</th>
							<th>HOT</th>
							<th>ICED</th>
						</tr>
						<tr>
							<td style="text-align: center;">Americano</td>
							<td style="text-align: center;" colspan="2">4000</td>
						</tr>
						<tr>
							<td>Cafe Lattee</td>
							<td colspan="2">5000</td>
						</tr>
						<tr>
							<td>Vanilla Latte</td>
							<td colspan="2">4000</td>
						</tr>
					</table>
					<table style="float: left;margin: 30px;width: 250px;">
						<tr>
							<th>COFFEE</th>
							<th>HOT</th>
							<th>ICED</th>
						</tr>
						<tr>
							<td style="text-align: center;">Americano</td>
							<td style="text-align: center;" colspan="2">4000</td>
						</tr>
						<tr>
							<td>Cafe Lattee</td>
							<td colspan="2">5000</td>
						</tr>
						<tr>
							<td>Vanilla Latte</td>
							<td colspan="2">4000</td>
						</tr>
					</table>
					<table style="float: left;margin: 30px;width: 250px;">
						<tr>
							<th>COFFEE</th>
							<th>HOT</th>
							<th>ICED</th>
						</tr>
						<tr>
							<td style="text-align: center;">Americano</td>
							<td style="text-align: center;" colspan="2">4000</td>
						</tr>
						<tr>
							<td>Cafe Lattee</td>
							<td colspan="2">5000</td>
						</tr>
						<tr>
							<td>Vanilla Latte</td>
							<td colspan="2">4000</td>
						</tr>
					</table>
					<table style="float: left;margin: 30px;width: 250px;">
						<tr>
							<th>COFFEE</th>
							<th>HOT</th>
							<th>ICED</th>
						</tr>
						<tr>
							<td style="text-align: center;">Americano</td>
							<td style="text-align: center;" colspan="2">4000</td>
						</tr>
						<tr>
							<td>Cafe Lattee</td>
							<td colspan="2">5000</td>
						</tr>
						<tr>
							<td>Vanilla Latte</td>
							<td colspan="2">4000</td>
						</tr>
					</table>
					<table style="float: left;margin: 30px;width: 250px;">
						<tr>
							<th>COFFEE</th>
							<th>HOT</th>
							<th>ICED</th>
						</tr>
						<tr>
							<td style="text-align: center;">Americano</td>
							<td style="text-align: center;" colspan="2">4000</td>
						</tr>
						<tr>
							<td>Cafe Lattee</td>
							<td colspan="2">5000</td>
						</tr>
						<tr>
							<td>Vanilla Latte</td>
							<td colspan="2">4000</td>
						</tr>
					</table>
					<table style="float: left;margin: 30px;width: 250px;">
						<tr>
							<th>COFFEE</th>
							<th>HOT</th>
							<th>ICED</th>
						</tr>
						<tr>
							<td style="text-align: center;">Americano</td>
							<td style="text-align: center;" colspan="2">4000</td>
						</tr>
						<tr>
							<td>Cafe Lattee</td>
							<td colspan="2">5000</td>
						</tr>
						<tr>
							<td>Vanilla Latte</td>
							<td colspan="2">4000</td>
						</tr>
					</table>
					<table style="float: left;margin: 30px;width: 250px;">
						<tr>
							<th>COFFEE</th>
							<th>HOT</th>
							<th>ICED</th>
						</tr>
						<tr>
							<td style="text-align: center;">Americano</td>
							<td style="text-align: center;" colspan="2">4000</td>
						</tr>
						<tr>
							<td>Cafe Lattee</td>
							<td colspan="2">5000</td>
						</tr>
						<tr>
							<td>Vanilla Latte</td>
							<td colspan="2">4000</td>
						</tr>
					</table>
					<div id="menuImg"></div>
				</div>
			</div>
			
			<div class="cafeInfo" id="cafeInfo3">
				<span style="font-size: 20px;font-weight: bold;">상세 정보</span><a class="upAndDown" href="#"></a>
			</div>
			<div class="closeInfo" id="cafeComfort">
				<div>
					<table id="detailInfo">
						<tr>
							<td>
								<div><img class="cafeInfoIcon" src="${pageContext.request.contextPath }/resources/images/tableNum.png"></div>
							</td>
							<td>테이블 수 10개</td>
							<td>
								<div><img class="cafeInfoIcon" src="${pageContext.request.contextPath }/resources/images/socketNum.png"></div>
							</td>
							<td>콘센트 수 10개</td>
						</tr>
						<tr>
							<td>
								<div><img class="cafeInfoIcon" src="${pageContext.request.contextPath }/resources/images/toilet.png"></div>
							</td>
							<td>화장실 청결해요</td>
							<td>
								<div><img class="cafeInfoIcon" src="${pageContext.request.contextPath }/resources/images/socketNum.png"></div>
							</td>
							<td>디저트 직접 만들어요 </td>
						</tr>
						<tr>
							<td>
								<div><img class="cafeInfoIcon" src="${pageContext.request.contextPath }/resources/images/terras.png"></div>
							</td>
							<td>루프탑/테라스 있어요</td>
							<td>
								<div><img class="cafeInfoIcon" src="${pageContext.request.contextPath }/resources/images/reservation.png"></div>
							</td>
							<td>예약룸 있어요</td>
						</tr>
						<tr>
							<td>
								<div><img class="cafeInfoIcon" src="${pageContext.request.contextPath }/resources/images/coffeeBeans.png"></div>
							</td>
							<td>원두 구매 가능해요</td>
							<td>
								<div><img class="cafeInfoIcon" src="${pageContext.request.contextPath }/resources/images/books.png"></div>
							</td>
							<td>도서를 보유하고 있어요</td>
						</tr>
						<tr>
							<td>
								<div><img class="cafeInfoIcon" src="${pageContext.request.contextPath }/resources/images/alcohol.png"></div>
							</td>
							<td>술 판매해요</td>
							<td>
								<div><img class="cafeInfoIcon" src="${pageContext.request.contextPath }/resources/images/goods.png"></div>
							</td>
							<td>굿즈를 판매해요</td>
						</tr>
					</table>
				</div>
			</div>
			
			<div class="cafeInfo" id="cafeInfo4"">
				<span style="font-size: 20px;font-weight: bold;">편의 정보</span><a class="upAndDown" href="#"></a>
			</div>
			<div class="closeInfo" id="cafeDetail">
				<div>
					<table id="detailInfo">
						<tr>
							<td style="width: 135px;">
								<div><img class="cafeInfoIcon" src="${pageContext.request.contextPath }/resources/images/wifi.png"></div>
							</td>
							<td style="width: 281px;">와이파이 있어요</td>
							<td>
								<div><img class="cafeInfoIcon" src="${pageContext.request.contextPath }/resources/images/puppy.png"></div>
							</td>
							<td style="width: 305px;">애견 동반 가능해요</td>
						</tr>
						<tr>
							<td>
								<div><img class="cafeInfoIcon" src="${pageContext.request.contextPath }/resources/images/reservation.png"></div>
							</td>
							<td>예약 가능해요</td>
							<td>
								<div><img class="cafeInfoIcon" src="${pageContext.request.contextPath }/resources/images/parking.png"></div>
							</td>
							<td>주차공간 있어요 </td>
						</tr><tr>
							<td>
								<div><img class="cafeInfoIcon" src="${pageContext.request.contextPath }/resources/images/nokids.png"></div>
							</td>
							<td>노키즈존 맞아요</td>
						</tr>
					</table>
				</div>
			</div>
			<div style="margin-bottom: 50px;"></div>
		</div>
	</div>
	
<script>
	$(function() {
		<!-- 카페 세부정보 별점 -->
		$('.starPoint').barrating({
			theme: 'fontawesome-stars',
			initialRating: 3,
			readonly: true
		})
		
		<!-- 카페 세부정보 이미지 변경 -->
		$('.bxslider').bxSlider({
			auto : true,
			speed : 300,
			pause : 4000,
			mode : 'fade',
			pager : true,
			slideWidth : 800
		});
		
		<!-- 카페 상세정보, 메뉴판, 편의정보, 상세정보 -->
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
		
		var chartDrowFun = {
			chartDrow : function(){
				var chartData = '';
 
		        //날짜형식 변경하고 싶으시면 이 부분 수정하세요.
		        var chartDateformat     = 'yyyy년MM월dd일';
		        //라인차트의 라인 수
		        var chartLineCount    = 10;
		        //컨트롤러 바 차트의 라인 수
		        var controlLineCount    = 10;
 
        		function drawDashboard() {
        			var data = new google.visualization.DataTable();
			        //그래프에 표시할 컬럼 추가
			        data.addColumn('datetime' , '날짜');
			        data.addColumn('number'   , '별점');
			 
			        //그래프에 표시할 데이터
			        var dataRow = [];
 
		            for(var i = 0; i <= 30; i++){ //랜덤 데이터 생성
		            	var star   = Math.floor(Math.random() * 5) + 1;
		 
		            	dataRow = [new Date('2020', '04', i ), star];
		            	data.addRow(dataRow);
		          	}
 
		            var chart = new google.visualization.ChartWrapper({
		              chartType   : 'LineChart',
		              containerId : 'lineChartArea', //라인 차트 생성할 영역
		              options     : {
		            	  isStacked   : 'percent',
		                  focusTarget : 'category',
		                  height      : 300,
		                  width       : '100%',
		                  legend      : { position: "top", textStyle: {fontSize: 13}},
		                  pointSize   : 5,
		                  tooltip     : {textStyle : {fontSize:12}, showColorCode : true,trigger: 'both'},
		                  hAxis       : {format: chartDateformat, gridlines:{count:chartLineCount,units: {
		                	  years : {format: ['yyyy년']},
		                      months: {format: ['MM월']},
		                      days  : {format: ['dd일']},
		                      hours : {format: ['HH시']}}
		                  },
		                  textStyle   : {fontSize:12}},
		                  vAxis       : {minValue: 5,viewWindow:{min:0},gridlines:{count:-1},textStyle:{fontSize:12}},
		                  animation   : {startup: true,duration: 1000,easing: 'in' },
		                  annotations : {pattern: chartDateformat,
		                	  textStyle: {
		                		  fontSize: 15,
		                		  bold: true,
		                		  italic: true,
		                		  color: '#871b47',
		                		  auraColor: '#d799ae', 
		                		  opacity: 0.8,
		                		  pattern: chartDateformat
		                	  }
		                  },
		                  colors: ['red']
		              }
		            });
 
           			var control = new google.visualization.ControlWrapper({
           				controlType: 'ChartRangeFilter',
           				containerId: 'controlsArea',  //control bar를 생성할 영역
           				options: {
           					ui:{
           						chartType: 'LineChart',
           						chartOptions: {
           							chartArea: {'width': '60%','height' : 80},
           							hAxis: {'baselineColor': 'none', format: chartDateformat, textStyle: {fontSize:12},
           								gridlines:{count:controlLineCount,units: {
           									years : {format: ['yyyy년']},
           									months: {format: ['MM월']},
           									days  : {format: ['dd일']},
           									hours : {format: ['HH시']}}
           							}},
           						 	colors: ['red']
           						}
           					},
	           				filterColumnIndex: 0
           				}
           			});
           			
		            var date_formatter = new google.visualization.DateFormat({ pattern: chartDateformat});
		            date_formatter.format(data, 0);
		 
		            var dashboard = new google.visualization.Dashboard(document.getElementById('Line_Controls_Chart'));
		            window.addEventListener('resize', function() { dashboard.draw(data); }, false); //화면 크기에 따라 그래프 크기 변경
		            dashboard.bind([control], [chart]);
		            dashboard.draw(data);
 
        		}
          		google.charts.setOnLoadCallback(drawDashboard);
      		}
	    }
 
		$(document).ready(function(){
		  google.charts.load('current', {'packages':['line','controls']});
		  chartDrowFun.chartDrow(); //chartDrow() 실행
		});
		
	})
</script>
<%-- 지우면 안됨 subMenu.jsp에 container 시작 태그 있음 --%>
</div>
<!-- container end -->

<%@ include file="../userInclude/footer.jsp" %>