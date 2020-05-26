<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../userInclude/header.jsp" %>
<%@ include file="../userInclude/subMenu.jsp" %>
<!-- bar-rating -->
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/w3.css">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/fontawesome-stars.css">
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/jquery.barrating.min.js"></script>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>

<style>
	/* 위치 아이콘 */
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
	/* 테마 아이콘 */
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
	/* update 날짜 */
	.modifyDate{
		color: #ED7D31;
		font-size: 14px;
		position: absolute;
		top: 0;
		right: 0;
	}
	/* 위시(wish) 아이콘 */
	#love{
		height: 30px;
	    position: absolute;
	    top: 26px;
	    right: 80px;
	}
	/* 추천 아이콘 */
	#like{
		position: absolute;
	    top: 25px;
	    right: 20px;
	    font-size: 30px;
	    color: darkgrey;
	}
	/* 한줄소개 */
	#oneline{
		margin: 10px 40px;
	}
	/* 카페 기본정보 */
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
	/* 카페 별점 관련 */
	#spoint{
		height: 45px;
	    line-height: 45px;
	    background-color: #f4f4f4;
	    border-radius: 10px;
	    width: 180px;
	    padding-left: 10px;
	    float: left;
	}
	#spointComment{
		height: 45px;
	    line-height: 45px;
	    background-color: #f4f4f4;
	    border-radius: 10px;
	    width: 110px;
	    padding-left: 10px;
	    float: left;
	}
	/* 카페 별점의 별 색상 */
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
	max-height: 35px;
	}
	
	th {
		background-color: white;
	}
	/* 메뉴 이미지 */
	#menuImg{
		background-image:url("${pageContext.request.contextPath }/resources/images/sumnail/carmel-menu.jpg");
		background-repeat: no-repeat;
		background-size: cover;
		clear: both;
    	width: 800px;
		height: 400px;
		margin: 0px 70px 30px;
	}
	/* 카페 상세 정보 아이콘 관련 */
	.cafeInfoIcon{
	    border-radius: 100px;
	    width: 50px;
	    padding: 10px;
	    box-shadow: 3px 3px 10px #ccc;
	}
	#detailInfo{
	    margin: 30px;
	}
	.iconExplain{
		list-style: none;
	    float: left;
	    width: 200px;
	    height: 100px;
	    line-height: 70px;
	    text-align: center;
	}
	.iconExplain2{
		list-style: none;
	    float: left;
	    width: 180px;
	    height: 100px;
	    line-height: 70px;
	    text-align: left;
	}
	/* 카페 평점 관련 */
	#commentTitle{
		font-size: 20px;
	    font-weight: bold;
	    display: inline;
	    margin: 0 10px;
	}
	#commentRegiBtn{
		width: 150px;
	    height: 35px;
	    margin-bottom: 20px;
	    font-size: 17px;
	    border-radius: 10px;
	    background-color: white;
	    border-style: none;
	    border: 2px solid #929292;
	    cursor: pointer;
	    outline: 0;
	}
	#commentBoxHeader{
		height: 52px;
	    line-height: 52px;
	    padding-left: 20px;
	    font-size: 18px;
	    color: white;
	    background-color: #001e5a;
	}
	/* 카페 평점 페이징 관련 */
	.pagination {
		display: inline-block;
	  	padding-left: 0;
	  	margin: 20px 0;
	  	border-radius: 4px;
	}
	.pagination > li {
  		display: inline;
	}
	.pagination > li > a,
	.pagination > li > span {
		position: relative;
		float: left;
		padding: 6px 12px;
		margin-left: -1px;
		line-height: 1.42857143;
		color: #303A50;
		text-decoration: none;
		background-color: #fff;
		border: 1px solid #ddd;
	}
	.pagination > li:first-child > a,
	.pagination > li:first-child > span {
		margin-left: 0;
		border-top-left-radius: 4px;
		border-bottom-left-radius: 4px;
	}
	.pagination > li:last-child > a,
	.pagination > li:last-child > span {
		border-top-right-radius: 4px;
		border-bottom-right-radius: 4px;
	}
	.pagination > li > a:hover,
	.pagination > li > span:hover,
	.pagination > li > a:focus,
	.pagination > li > span:focus {
		color: #23527c;
		background-color: #eee;
		border-color: #ddd;
	}
	.pagination > .active > a,
	.pagination > .active > span,
	.pagination > .active > a:hover,
	.pagination > .active > span:hover,
	.pagination > .active > a:focus,
	.pagination > .active > span:focus {
		z-index: 2;
		color: #fff;
		cursor: default;
		background-color: #303A50;
		border-color: #303A50;
	}
	.pagination > .disabled > span,
	.pagination > .disabled > span:hover,
	.pagination > .disabled > span:focus,
	.pagination > .disabled > a,
	.pagination > .disabled > a:hover,
	.pagination > .disabled > a:focus {
		color: #777;
		cursor: not-allowed;
		background-color: #fff;
		border-color: #ddd;
	}
	.pagination-lg > li > a,
	.pagination-lg > li > span {
		padding: 10px 16px;
		font-size: 18px;
	}
	.pagination-lg > li:first-child > a,
	.pagination-lg > li:first-child > span {
		border-top-left-radius: 6px;
		border-bottom-left-radius: 6px;
	}
	.pagination-lg > li:last-child > a,
	.pagination-lg > li:last-child > span {
		border-top-right-radius: 6px;
		border-bottom-right-radius: 6px;
	}
	.pagination-sm > li > a,
	.pagination-sm > li > span {
		padding: 5px 10px;
		font-size: 12px;
	}
	.pagination-sm > li:first-child > a,
	.pagination-sm > li:first-child > span {
       border-top-left-radius: 3px;
	   border-bottom-left-radius: 3px;
	}
	.pagination-sm > li:last-child > a,
	.pagination-sm > li:last-child > span {
		border-top-right-radius: 3px;
		border-bottom-right-radius: 3px;
	}
	
	/* 카페 탐방기 list */
	.cafeR_sameList {
		margin-top: 50px;
		overflow: hidden;
	}
	
	.cafeR_sameList .cafeR_sameTitle {
		font-size: 20px;
	}
	
	.cafeR_sameList .cafeR_sameTitle .sameBtn {
		width: 30px;
	    height: 30px;
	    border: 1px solid #aaa;
	    line-height: 30px;
	    text-align: center;
	    margin-left: 10px;
	    cursor: pointer;
	}

	.cafeR_sameList .a_cafeReview {
		display: block;
		float: left;
		width: 447px;
		border: 1px solid #545454;
		margin-bottom: 20px;
	}
	
	.cafeR_sameList .cafeR_box:hover .cafe_title{
		text-decoration: underline;
	}
	
	.cafeR_sameList .a_cafeReview {
		margin-right: 22px;
	}
	
	.cafeR_sameList .cafeR_titleBox {
		height: 200px;
		padding: 15px 10px;
		position: relative;
		color: #fff;
	}
	
	.cafeR_sameList .cafeR_titleBox .cafeR_titleImg {
		position: absolute;
	    top: 0;
	    left: 0;
	    width: 100%;
	    height: 100%;
	    z-index: -1;
	    overflow: hidden;
	}
	
	.cafeR_sameList .cafeR_titleBox .cafeR_titleImg .bg {
		width: 100%;
	    height: 100%;
	    position: absolute;
	    top: 0;
	    left: 0;
	    background: rgba(0,0,0,0.4);
	}
	
	.cafeR_sameList .cafeR_titleBox .cafeR_titleImg img {
		width: 100%;
    	min-height: 100%;
	}
	
	.cafeR_sameList .cafeR_writer {
		line-height: 50px;
		float: left;
	}
		
	.cafeR_sameList .cafeR_writer img {
		width: 50px;
		display: block;
		float: left;
		margin-right: 10px;
	}
	
	.cafeR_sameList .cafeR_writer span {
		display: block;
		float: left;
		color: #fff;
		font-size: 18px;
	}
	
	.cafeR_sameList .cafeR_recomCnt {
		float: right;
		width: 30px;
		height: 30px;
		border-radius: 40px;
		margin: 10px;
		text-align: center;
		line-height: 30px;
		font-weight: 700;
	}
	
	.cafeR_sameList .cafeR_titleBox h2 {
		position: absolute;
	    top: 50%;
	    left: 50%;
	    transform: translate(-50%, -50%);
	    width: 85%;
	    text-align: center;
	}
	
	.cafeR_sameList .cafeR_date {
		position: absolute;
	    top: 85%;
	    left: 50%;
	    transform: translate(-50%, -50%);
	    width: 85%;
	    text-align: right;
	    font-size: 20px;
	}	
	
	.cafeR_sameList .cafeR_infoBox {
		padding: 10px;
		padding-bottom: 0;
	}
	
	.cafeR_sameList .cafeR_infoTop {
		padding-bottom: 10px;
	}
	
	.cafeR_sameList .cafeR_infoTop h2{
		text-align: right;
		padding: 10px 0;
	}
	
	.cafeR_sameList .cafeR_text {
		overflow: hidden; 
		text-overflow: ellipsis;
		display: -webkit-box;
		-webkit-line-clamp: 4; /* 라인수 */
		-webkit-box-orient: vertical;
		word-wrap: break-word;
	}
	
	.cafeR_sameList .cafeR_replyCdtWrap {
		float: right;
		padding: 10px;
		padding-right: 0;
	}
	
	.cafeR_sameList .cafeR_replyCdt .cafeR_btns {
		border: 1px solid #545454;
		padding: 5px 10px;
		border-radius: 10px;
		float: left;
		margin-right: 10px;
	}
	/* 추천 카페 리스트 */
	.RC_sameList {
		margin-top: 30px;
	}
	
	.RC_sameList .RC_sameTitle {
		font-size: 20px;
	}
	
	.RC_sameList .RC_sameTitle .RC_sameBtn {
		width: 30px;
	    height: 30px;
	    border: 1px solid #aaa;
	    line-height: 30px;
	    text-align: center;
	    margin-left: 10px;
	    cursor: pointer;
	}
	
	.RC_sameList .RC_noImgList{
		text-align: center;
		margin-bottom: 50px;
	}
	.RC_noImgList p.RC_noListMent{
		color: #5D5D5D;
	}
	.RC_noImgList span.hotpink{
		color:#FF007F;
		font-size: 18px;
	}
	
	.RC_banner{
		width: 918px;
		height: 265px;
	}
	.RC_bannerWrap{
		width: 918px;
		height: 265px;
		overflow: hidden;
	}
	.RC_banner .RC_bannerWrap li {
		float: left;
		width: 222px;
		height: 260px;
		margin: 3px;
		border: 1px solid #545454;
	}
	.RC_banner .RC_bannerWrap li div.RC_listBtnImgWrap{
		width: 100%;
		height: 160px;
		overflow: hidden;
	}
	.RC_banner .RC_bannerWrap li div.RC_listBtnImgContainer img{
		width: 100%;
		height: 160px;
		transition:all 1s;
		transform-origin:left-top;
	}
	
	.RC_banner .RC_bannerWrap li div.RC_listBtnImgContainer img:hover{
		transform:scale(1.2);
	}		
	.RC_banner .RC_bannerWrap li div.RC_listBtnTitle1{
		width: 90%;
		height: 33px;
		padding: 8px;
	}
	.RC_banner .RC_bannerWrap li div.RC_listBtnTitle1 div.zoneBtn,div.themeKeySmall{
		font-size: 16px;
		margin-top: 5px;
	}
 	.RC_banner .RC_bannerWrap li div.RC_listBtnTitle2{
		width: 90%;
		height: 45px;
		padding: 8px;
	}
</style>	

<script>
	$(function() {
	// 카페 세부정보 별점 
		$('.starPoint').barrating({
			theme: 'fontawesome-stars',
			initialRating: ${starpointSelect},
			readonly: true
		})
	//카페 세부정보 이미지 변경
		$('.bxslider').bxSlider({
			auto : true,
			speed : 300,
			pause : 4000,
			mode : 'fade',
			pager : true,
			slideWidth : 800,
			adaptiveHeight : true
		});
		
		//카페 상세정보, 메뉴판, 편의정보, 상세정보
		$('.cafeInfo').addClass('open');
		$('.closeInfo').addClass('close');
		$('#cafeInfo1 .upAndDown').html('<i class="fas fa-angle-up"></i>');
		$('#cafeInfo2 .upAndDown').html('<i class="fas fa-angle-down"></i>');
		$('#cafeInfo3 .upAndDown').html('<i class="fas fa-angle-down"></i>');
		$('#cafeInfo4 .upAndDown').html('<i class="fas fa-angle-down"></i>');

		$('#cafeInfo1 .upAndDown').click(function(e) {
			e.preventDefault();

			if ($('#cafeDefault').hasClass('open')) {
				$('#cafeDefault').slideUp();
				$('#cafeDefault').removeClass('open');
				$(this).html('<i class="fas fa-angle-down"></i>');
			} else {
				$('#cafeDefault').slideDown();
				$('#cafeDefault').addClass('open');
				$(this).html('<i class="fas fa-angle-up"></i>');
			}
		})
		$('#cafeInfo2 .upAndDown').click(function(e) {
			e.preventDefault();

			if ($('#cafeMenu').hasClass('open')) {
				$('#cafeMenu').slideUp();
				$('#cafeMenu').removeClass('open');
				$(this).html('<i class="fas fa-angle-down"></i>');
			} else {
				$('#cafeMenu').slideDown();
				$('#cafeMenu').addClass('open');
				$(this).html('<i class="fas fa-angle-up"></i>');
			}
		})
		$('#cafeInfo3 .upAndDown').click(function(e) {
			e.preventDefault();

			if ($('#cafeComfort').hasClass('open')) {
				$('#cafeComfort').slideUp();
				$('#cafeComfort').removeClass('open');
				$(this).html('<i class="fas fa-angle-down"></i>');
			} else {
				$('#cafeComfort').slideDown();
				$('#cafeComfort').addClass('open');
				$(this).html('<i class="fas fa-angle-up"></i>');
			}
		})
		$('#cafeInfo4 .upAndDown').click(function(e) {
			e.preventDefault();

			if ($('#cafeDetail').hasClass('open')) {
				$('#cafeDetail').slideUp();
				$('#cafeDetail').removeClass('open');
				$(this).html('<i class="fas fa-angle-down"></i>');
			} else {
				$('#cafeDetail').slideDown();
				$('#cafeDetail').addClass('open');
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
 					
		            for(var i = 0; i <= 12; i++){ //랜덤 데이터 생성
		            	var star   = ${pointList}[i];
		            	if(star==0){
		            		break;
		            	}
		            	dataRow = [new Date('2020', i), star];
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
		
		$('#starPointCheck').barrating({
			theme: 'fontawesome-stars',
			onSelect: function(value, text, event){
				$('#hiddenStarpoint').val(value);
			} 
		});
		
		$('.changeColor').click(function() {
			var colorArr = new Array();
			for(var i=0;i<6;i++){
				colorArr[i] = $('.changeColor').eq(i).css("color");
			}
			var color = $(this).css("color");
			var backgroundColor = $(this).css("background-color");
			
			if(color != "rgb(255, 255, 255)"){
				for(var i=0;i<colorArr.length;i++){
					if(colorArr[i]=="rgb(255, 255, 255)"){
						return false;
					}
				}
				$(this).css("background-color", color);
				$(this).css("color", "white");
				for(var i=0;i<6;i++){
					if($('.changeColor').eq(i).css("color")=="rgb(255, 255, 255)"){
						$('#hiddenTheme').val(i+1);
					}
				}
				
			}else{
				$(this).css("background-color", "white");
				$(this).css("color", backgroundColor);
				$(this).css("border-color",backgroundColor);
			}
		})
	})
</script>

	<div class="content subPageContent position">
		<!-- 서브페이지 콘텐츠 -->
		<div class="contentArea">
			<!-- 서브페이지 공통적인 타이틀 -->
			<h2 class="subPageTitle">
				<span class="title">${cafe.cafeName }</span>
				<span class="subTit grayB"> <span style="font-size: 22px; vertical-align: text-bottom;">|</span> <a href="${cafe.sns }"><img src="${pageContext.request.contextPath }/resources/images/sns.png" style="height: 18px;"></a></span>
			</h2>
			
			<!-- 서브콘텐츠 시작 -->
			<div class="modifyDate">Update <fmt:formatDate value="${cafe.updateDate }" pattern="yyyy-MM-dd"/> </div>
			<img id="love" src="${pageContext.request.contextPath }/resources/images/key1.png">
			<i class="far fa-thumbs-up" id="like"></i>
			<div class="daeguIcon keyword">${cafe.zoneNo.zoneName }</div>
			
			<!-- 카페 테마 아이콘 관련 코드 -->
			<c:choose>
				<c:when test="${cafe.themeNo.themeNo == 1 }">
					<div class="themeIcon keyword" style="background-color: #b038fa;">#데이트</div>
				</c:when>
				<c:when test="${cafe.themeNo.themeNo == 2 }">
					<div class="themeIcon keyword" style="background-color: #528236;">#뷰</div>
				</c:when>
				<c:when test="${cafe.themeNo.themeNo == 3 }">
					<div class="themeIcon keyword" style="background-color: #96814c;">#착한아메</div>
				</c:when>
				<c:when test="${cafe.themeNo.themeNo == 4 }">
					<div class="themeIcon keyword" style="background-color: #f2486f;">#디저트</div>
				</c:when>
				<c:when test="${cafe.themeNo.themeNo == 5 }">
					<div class="themeIcon keyword" style="background-color: #FFB232;">#댕댕이</div>
				</c:when>
				<c:when test="${cafe.themeNo.themeNo == 6 }">
					<div class="themeIcon keyword" style="background-color: #0170c2;">#작업</div>
				</c:when>
			</c:choose>
			<c:forEach var="theme" items="${themeRank }">
				<c:if test="${cafe.themeNo.themeNo != theme.themeNo}">
					<c:choose>
						<c:when test="${theme.themeNo == 1 }">
							<div class="themeIcon keyword" style="background-color: #b038fa;">#데이트</div>
						</c:when>
						<c:when test="${theme.themeNo == 2 }">
							<div class="themeIcon keyword" style="background-color: #528236;">#뷰</div>
						</c:when>
						<c:when test="${theme.themeNo == 3 }">
							<div class="themeIcon keyword" style="background-color: #96814c;">#착한아메</div>
						</c:when>
						<c:when test="${theme.themeNo == 4 }">
							<div class="themeIcon keyword" style="background-color: #f2486f;">#디저트</div>
						</c:when>
						<c:when test="${theme.themeNo == 5 }">
							<div class="themeIcon keyword" style="background-color: #FFB232;">#댕댕이</div>
						</c:when>
						<c:when test="${theme.themeNo == 6 }">
							<div class="themeIcon keyword" style="background-color: #0170c2;">#작업</div>
						</c:when>
					</c:choose>
				</c:if>
			</c:forEach>
		</div>
		<div>
			<p id="oneline">
				<img src="${pageContext.request.contextPath }/resources/images/ssang-1.png">
				<span style="font-size: 20px;">${cafe.oneline }</span>
				<img src="${pageContext.request.contextPath }/resources/images/ssang-2.png" style="vertical-align: text-top;">
			</p>
			<p style="font-size: 20px; padding: 5px 25px;">${cafe.content }</p>
			<div style="padding: 20px 65px;">
				<div class="bxslider" style="text-align: center;">
					<c:forEach var="images" items="${imgList }">
						<div><img src="${pageContext.request.contextPath }/resources/images/sumnail/${images.imageName}"></div>
					</c:forEach>
				</div>
			</div>
			<!-- 카페 기본정보 -->
			<div class="cafeInfo" id="cafeInfo1">
				<span style="font-size: 20px;font-weight: bold;">기본 정보</span><span style="font-size: 20px;margin: 0 10px;"> | </span>
				<img style="height: 20px;vertical-align: middle;" src="${pageContext.request.contextPath }/resources/images/spaner.png">
				<a href="#"><span style="color: red;vertical-align: middle;">오류 제보</span></a><a class="upAndDown" href="#"></a>
			</div>
			<div id="cafeDefault">
				<img class="infoIcon" src="${pageContext.request.contextPath }/resources/images/point.png"> 
				<div style="height: 45px;line-height: 45px;">${cafe.address } ${cafe.detailAddress }</div>
				
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
					geocoder.addressSearch('${cafe.address } ${cafe.detailAddress }', function(result, status) {
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
								content : '<div style="width:150px;text-align:center;padding:6px 0;">${cafe.cafeName }</div>'
							});
							infowindow.open(map, marker);
							// 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
							map.setCenter(coords);
						}
					});
				</script>
				
				<img class="infoIcon" src="${pageContext.request.contextPath }/resources/images/time.png"> 
				<div style="height: 45px;line-height: 45px;">평일 ${cafe.wkdOpentime } / 주말 ${cafe.wkndOpentime } | ${cafe.closedDay }</div>
				
				<img class="infoIcon" src="${pageContext.request.contextPath }/resources/images/tel.png"> 
				<div style="height: 45px;line-height: 45px;">${cafe.tel }</div>
				
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
				<div id="jumsu">${starpoint } / 5</div>

				<h4 style="clear: both; margin-left: 50px;">기간별 별점 변화 그래프</h4>

				<div id="Line_Controls_Chart">
					<!-- 라인 차트 생성할 영역 -->
					<div id="lineChartArea" style="padding: 0px 20px 0px 0px;margin-bottom: 30px;"></div>
					<!-- 컨트롤바를 생성할 영역 -->
					<div id="controlsArea" style="padding: 0px 20px 0px 0px; height: 130px;"></div>
				</div>
	
			</div>
			<!-- 카페 메뉴판 정보 -->
			<div class="cafeInfo" id="cafeInfo2">
				<span style="font-size: 20px;font-weight: bold;">메뉴판</span><a class="upAndDown" href="#"></a>
			</div>
			<div class="closeInfo" id="cafeMenu">
				<div>
					<c:forEach var="menuName" items="${menuName }">
						<table style="float: left;margin: 30px;width: 250px; ">
							<tr>
								<th>${menuName.sortName }</th>
								<th>HOT</th>
								<th>ICED</th>
							</tr>
							<c:set var="row_sum" value="0"/>
							<c:forEach var="menuList" items="${menuList }">
								<c:if test="${menuName.sortNo == menuList.menukinds.sortNo }">
									<tr>
										<td>${menuList.menuName }</td>
										<c:if test="${menuList.hI == 0 }">
											<td>${menuList.price }</td>
											<td>${menuList.icedMenuPrice }</td>
										</c:if>
										<c:if test="${menuList.hI == 1 }">
											<td colspan="2">${menuList.price }</td>
										</c:if>
										<c:set var="row_sum" value="${row_sum + 1 }"/>
									</tr>
								</c:if>
							</c:forEach>
							<c:if test="${row_sum <= 5 }">
								<c:forEach begin="0" end="3">
									<tr>
										<td style="color: white;">.</td>
									</tr>
								</c:forEach>
							</c:if>
						</table>
					</c:forEach>
					<div id="menuImg"></div>
				</div>
			</div>
			
			<!-- 카페 상세 정보 관련 -->
			<div class="cafeInfo" id="cafeInfo3">
				<span style="font-size: 20px;font-weight: bold;">상세 정보</span><a class="upAndDown" href="#"></a>
			</div>
			<div class="closeInfo" id="cafeComfort">
				<div>
					<ul id="detailInfo">
						<li class="iconExplain"><img class="cafeInfoIcon" src="${pageContext.request.contextPath }/resources/images/tableNum.png"></li>
						<li class="iconExplain2">테이블 수 ${cafe.tableNumber }개</li>
						<li class="iconExplain"><img class="cafeInfoIcon" src="${pageContext.request.contextPath }/resources/images/socketNum.png"></li>
						<li class="iconExplain2">콘센트 수  ${cafe.socketNumber }개</li>
						<c:if test="${cafe.toiletCdt == 0 }">
							<li class="iconExplain"><img class="cafeInfoIcon" src="${pageContext.request.contextPath }/resources/images/toilet.png"></li>
							<li class="iconExplain2">화장실 청결해요</li>
						</c:if>
						<c:if test="${cafe.mkdessertCdt == 0 }">
							<li class="iconExplain"><img class="cafeInfoIcon" src="${pageContext.request.contextPath }/resources/images/socketNum.png"></li>
							<li class="iconExplain2">디저트 직접 만들어요</li>
						</c:if>
						<c:if test="${cafe.terrasCdt == 0 }">
							<li class="iconExplain"><img class="cafeInfoIcon" src="${pageContext.request.contextPath }/resources/images/terras.png"></li>
							<li class="iconExplain2">루프탑/테라스 있어요</li>
						</c:if>
						<c:if test="${cafe.reservationCdt == 0 }">
							<li class="iconExplain"><img class="cafeInfoIcon" src="${pageContext.request.contextPath }/resources/images/reservation.png"></li>
							<li class="iconExplain2">예약룸 있어요</li>
						</c:if>
						<c:if test="${cafe.wondooBuyCdt == 0 }">
							<li class="iconExplain"><img class="cafeInfoIcon" src="${pageContext.request.contextPath }/resources/images/coffeeBeans.png"></li>
							<li class="iconExplain2">원두 구매 가능해요</li>
						</c:if>
						<c:if test="${cafe.bookCdt == 0 }">
							<li class="iconExplain"><img class="cafeInfoIcon" src="${pageContext.request.contextPath }/resources/images/books.png"></li>
							<li class="iconExplain2">도서를 보유하고 있어요</li>
						</c:if>
						<c:if test="${cafe.beerCdt == 0 }">
							<li class="iconExplain"><img class="cafeInfoIcon" src="${pageContext.request.contextPath }/resources/images/alcohol.png"></li>
							<li class="iconExplain2">술 판매해요</li>
						</c:if>
						<c:if test="${cafe.goodsCdt == 0 }">
							<li class="iconExplain"><img class="cafeInfoIcon" src="${pageContext.request.contextPath }/resources/images/goods.png"></li>
							<li class="iconExplain2">굿즈를 판매해요</li>
						</c:if>
						
					</ul>
				</div>
			</div>
			
			<!-- 카페 편의정보 관련 -->
			<div class="cafeInfo" id="cafeInfo4">
				<span style="font-size: 20px;font-weight: bold;">편의 정보</span><a class="upAndDown" href="#"></a>
			</div>
			<div class="closeInfo" id="cafeDetail">
				<div>
					<ul id="detailInfo">
						<c:if test="${cafe.wifiCdt == 0 }">
							<li class="iconExplain"><img class="cafeInfoIcon" src="${pageContext.request.contextPath }/resources/images/wifi.png"></li>
							<li class="iconExplain2">와이파이 있어요</li>
						</c:if>
						<c:if test="${cafe.puppyCdt == 0 }">
							<li class="iconExplain"><img class="cafeInfoIcon" src="${pageContext.request.contextPath }/resources/images/puppy.png"></li>
							<li class="iconExplain2">애견 동반 가능해요</li>
						</c:if>
						<c:if test="${cafe.reserveokCdt == 0 }">
							<li class="iconExplain"><img class="cafeInfoIcon" src="${pageContext.request.contextPath }/resources/images/reservation.png"></li>
							<li class="iconExplain2">예약 가능해요</li>
						</c:if>
						<c:if test="${cafe.parkingCdt == 0 }">
							<li class="iconExplain"><img class="cafeInfoIcon" src="${pageContext.request.contextPath }/resources/images/parking.png"></li>
							<li class="iconExplain2">주차공간 있어요</li>
						</c:if>
						<c:if test="${cafe.nokidsCdt == 0 }">
							<li class="iconExplain"><img class="cafeInfoIcon" src="${pageContext.request.contextPath }/resources/images/nokids.png"></li>
							<li class="iconExplain2">노키즈존이에요</li>
						</c:if>
					</ul>
				</div>
			</div>
			<div style="margin-bottom: 50px;clear: both;"></div>
			
			<!-- 카페 평점 관련 -->
			<div>
				<div id="commentTitle">
					<span style="color: #2e75b6;">${cafe.cafeName }</span>에 대한 <span id="spointNum" style="color: #FF5722;"></span>개의 이야기가 있어요!
				</div>
				<button id="commentRegiBtn" onclick="document.getElementById('starPointModal').style.display='block'">내 <span style="color: red; font-weight: bold; ">평점</span> 등록</button>
			</div>

			<div id="starPointModal" class="w3-modal">
				<div class="w3-modal-content w3-card-4 w3-animate-zoom" style="max-width:600px">
					<div>
						<div id="commentBoxHeader">내 평점 등록</div>
					</div>
					<div class="w3-center"><br>
						<span style="color: white;" onclick="document.getElementById('starPointModal').style.display='none'" class="w3-button w3-xlarge w3-hover-red w3-display-topright" title="Close Modal">&times;</span>
						<div style="font-size: 25px;font-weight: bold;margin-bottom: 10px;">${cafe.cafeName }</div>
						<select id="starPointCheck"> 
							<option value="1">1</option> 
							<option value="2">2</option> 
							<option value="3">3</option> 
							<option value="4">4</option> 
							<option value="5">5</option> 
						</select>
						<input type="hidden" id="hiddenStarpointNo">
						<input type="hidden" id="hiddenStarpoint">
						<div style="color: #949494;">평점을 선택해주세요.</div>
						<div style="width: 90%;border-bottom: 1px solid #ccc;margin: 0px 30px 10px;height: 20px;"></div>
					</div>
					<div style="margin: 0px 30px;font-size: 18px;margin-bottom: 15px;">${cafe.cafeName }의 키워드를 선택해주세요! <span style="color: red;font-size: 14px;">중복 선택 불가</span></div>
					<div class="w3-container">
						<div>
							<div class="themeIcon keyword changeColor" style="background-color: white;color: #b038fa;border: 2px solid;margin-left: 15px; cursor: pointer;">#데이트</div>
							<div class="themeIcon keyword changeColor" style="background-color: white;color: #528236;border: 2px solid;cursor: pointer;">#뷰</div>
							<div class="themeIcon keyword changeColor" style="background-color: white;color: #96814c;border: 2px solid;cursor: pointer;">#착한아메</div>
							<div class="themeIcon keyword changeColor" style="background-color: white;color: #f2486f;border: 2px solid;cursor: pointer;">#디저트</div>
							<div class="themeIcon keyword changeColor" style="background-color: white;color: #FFB232;border: 2px solid;cursor: pointer;">#댕댕이</div>
							<div class="themeIcon keyword changeColor" style="background-color: white;color: #0170c2;border: 2px solid;cursor: pointer;">#작업</div>
						</div>
						<input type="hidden" id="hiddenTheme">
						<div style="width: 540px;border-bottom: 1px solid #ccc;margin: 0px 15px 10px;height: 20px;"></div>
						<div class="w3-section">
							<textarea id="comment" style="margin: 0px 0px 0px 15px;width: 540px;height: 210px;"placeholder=" ${cafe.cafeName }에서 즐거우셨나요? 어떤 점이 좋았는지 이야기해주세요."></textarea>
							<div style="text-align: center;">
								<button onclick="document.getElementById('starPointModal').style.display='none'" id="btnStarpointCancel" type="button" class="w3-button w3-text-grey w3-border" style="width: 100px;margin-right: 10px;">취소</button>
								<div id="btnAddDiv" style="display: inline;">
								<button class="w3-button w3-red w3-section w3-padding" id="btnStarpointAdd" style="width: 100px;">등록</button>
								</div>
								<div id="btnModDiv" style="display: none;">
								<button class="w3-button w3-red w3-section w3-padding" id="btnStarpointMod" style="width: 100px;">수정</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div>
				<table style="width: 900px; margin: 0px 20px;" id="spointList">
					<tr>
						<td colspan="7" style="text-align: left;border-top: 3px solid #ccc;border-bottom: 1px solid #949494;">
							<i class="fas fa-check" style="color: #ccc;"></i><span style="margin-left: 10px;margin-right: 20px;">별점순</span>
							<i class="fas fa-check" style="color: #ccc;"></i><span style="margin-left: 10px;">최신순</span>
						</td>
					</tr>
				</table>
				<div class="spointPage" style="text-align: center;">
					<ul id="pagination" class="pagination"></ul>
				</div>
				<div style="margin-bottom: 50px;clear: both;"></div>
			</div>
			<!-- 해당 카페의 탐방기 list -->
			<div class="cafeR_sameList">
				<c:if test="${sameCnt > 0 }">
					<div class="cafeR_sameTitle bottomLine clearfix">
							<p class="f_left"><span class="blue bold">${cafe.cafeName }</span>에 대한 <span class="orange bold"><fmt:formatNumber type="number" maxFractionDigits="3" value="${sameCnt }"/></span>개의 <span class="red bold">탐방기</span>가 더 있어요!</p>
						<c:if test="${sameCnt > 2 }">
							<div class="sameListBtn f_right">
								<div class="f_left orange"><span class="pageNum">1</span> / <span class="pageTotal">0</span></div>
								<div id="prevBtn" class="sameBtn f_left"><i class="fas fa-angle-left"></i></div>
								<div id="nextBtn" class="sameBtn f_left"><i class="fas fa-angle-right"></i></div>
							</div>
						</c:if>
					</div>
				</c:if>
				<div class="cafeR_List clearfix mb30">
					<c:forEach var="sameItem" items="${sameBoard }">
					<a href="${pageContext.request.contextPath }/user/community/cafeReview/read?boardNo=${sameItem.boardNo}" class="a_cafeReview">
						<div class="cafeR_box">
							<div class="cafeR_titleBox">
								<div class="cafeR_titleImg">	
									<div class="bg"></div>						
									<img class="titleImg" src="" alt="카페대표이미지" />
									<script>
										// 같은 카페 다른 탐방기 list 대표이미지
										var imgPath = '${pageContext.request.contextPath }/user/displayFile?filename=';
										var sImgName = '${sameItem.files[0].imageName}';
										var imgName = sImgName.replace("s_", "");
										
										$(".cafeR_sameList .titleImg").attr("src", imgPath+imgName);
									</script>
								</div>
								<div class="cafeR_titleTop clearfix" >
									<div class="cafeR_writer clearfix">
										<img src="${pageContext.request.contextPath }/resources/images/${sameItem.userNo.userGrade.userGradeImage }" alt="등급아이콘" />
										<span class="cafeR_name bold">${sameItem.userNo.nick }</span>
										<span class="cafeR_id bold">(${sameItem.userNo.userId })</span>
									</div>
									<div class="cafeR_recomCnt bgRed">${sameItem.voteNumber }</div>						
								</div>
								<h2 class="classSec cafe_title">${sameItem.writingTitle }</h2>
								<div class="cafeR_date bold"><fmt:formatDate value="${sameItem.registrationDate }" pattern="yyyy/MM/dd"/></div>
							</div>
							<div class="cafeR_infoBox">
								<div class="cafeR_infoTop clearfix">
									<div class="zoneBtn zoneOrangeIconSmall">${sameItem.cafeNo.zoneNo.zoneName }</div>
									<div class="themeKeySmall themeName">#${sameItem.cafeNo.themeNo.themeName }</div>
									<h2>${sameItem.cafeNo.cafeName }</h2>
								</div>
								<%-- <p class="cafeR_text">
									${item.writingContent }
								</p> --%>
							</div>
							<div class="cafeR_replyCdt clearfix">
								<div class="cafeR_replyCdtWrap">
									<div class="cafeR_btns">
										<img src="${pageContext.request.contextPath }/resources/images/icon_reply.png" alt="icon" />
										<span class="cafeR_replyCnt">${sameItem.replyCnt }</span>
									</div>
									<div class="cafeR_btns">
										<img src="${pageContext.request.contextPath }/resources/images/icon_view.png" alt="icon" />
										<span class="cafeR_viewCnt">${sameItem.viewNumber }</span>
									</div>
								</div>
							</div>
						</div>
					</a>
					</c:forEach>
				</div>
			</div>
			<div class="RC_sameList">
            <!-- (1) 제목 & 게시글나머지숫자 --> 
            		
			<!-- 관련추천글 X : 제목 + noImg + 여러분의 소중한 추천 카페 후기를 기다리고 있어요! -->
				<c:if test="${sameKeywordCnt == 0 }">
					<div class="RC_sameTitle bottomLine clearfix">
						<p class="f_left">
							<span style="color: navy" class="bold">#${cafe.zoneNo.zoneName} #${cafe.themeNo.themeName}</span>에 대한 
							<span class="orange bold">관련된</span> 
							<span class="red bold">추천글</span>이 아직 없습니다.
						</p>
					</div>
				</c:if>
				<c:if test="${sameKeywordCnt == 0 }">
					<div class="RC_noImgList">
						<img src="${pageContext.request.contextPath}/resources/images/rc_noImg.png" alt="NoImg">
						<p class="RC_noListMent bold">
							여러분의 소중한 <span class="hotpink">추천 카페 후기</span>를 기다리고 있어요!
						</p>
					</div>
				</c:if>
	
				<!-- 관련추천글 O : 제목 + 나머지 추천카페 게시물 숫자 -->
				<c:if test="${sameKeywordCnt > 0 }">
					<div class="RC_sameTitle bottomLine clearfix">
						<p class="f_left">
							<span style="color:navy" class="bold">#${cafe.zoneNo.zoneName} #${cafe.themeNo.themeName}</span>에 대한 
							<span class="orange bold"><fmt:formatNumber type="number" maxFractionDigits="3" value="${sameKeywordCnt }"/></span>개의 
							<span class="red bold">추천글</span>이 있어요!
						</p>
						
						<!-- 페이징 버튼생성 -->
						<c:if test="${sameKeywordCnt > 4 }">
							<div class="RC_sameListBtns f_right">
								<div class="f_left orange"><span class="pageNum2">1</span> / <span class="pageTotal2">0</span></div>
								<div class="RC_sameBtn f_left" id="prevBtn2"><i class="fas fa-angle-left"></i></div>
								<div class="RC_sameBtn f_left" id="nextBtn2"><i class="fas fa-angle-right"></i></div>
							</div>
						</c:if>
					</div>
				</c:if>
			</div>
			
			<!-- 관련추천글 O : 이미지배너 -->
			<c:if test="${sameKeywordCnt > 0 }">
				<div class="RC_banner mb30">
					<div class="RC_bannerWrap">
						<ul id="banner2">
							<c:forEach var="sameKeyword" items="${sameKeyword}">
								<a href="${pageContext.request.contextPath}/user/community/cafeRecommend/read?boardNo=${sameKeyword.boardNo}">
									<li>
										<div class="RC_listBtnImgWrap">
											<div class="RC_listBtnImgContainer">
								                <!-- 이미지 이름 꺼내서 삽입하기 -->		
												<c:forEach var="img" items="${klistImg}">
													 <c:if test="${img.boardNo.boardNo == sameKeyword.boardNo }">
														<img src = "${pageContext.request.contextPath }/user/displayFile?filename=${img.imageName}" class="thumbNailImg" onerror="this.src='${pageContext.request.contextPath}/resources/images/rc_noImg.png'">										
													</c:if>
												</c:forEach>								
											</div>
										</div>
										<div class="RC_listBtnTitle1">
											<!-- 위치 -->
											<div class="zoneBtn zoneOrangeIconSmall keyword">${sameKeyword.zoneNo.zoneName}</div>
											<!-- 키워드 -->
											<c:choose>
												<c:when test="${sameKeyword.themeNo.themeNo == 1}">
													<div class="date themeKeySmall keyword">#${sameKeyword.themeNo.themeName}</div>
												</c:when>
												<c:when test="${sameKeyword.themeNo.themeNo == 2}">
													<div class="view themeKeySmall keyword">#${sameKeyword.themeNo.themeName}</div>
												</c:when>
												<c:when test="${sameKeyword.themeNo.themeNo == 3}">
													<div class="ame themeKeySmall keyword">#${sameKeyword.themeNo.themeName}</div>
												</c:when>
												<c:when test="${sameKeyword.themeNo.themeNo == 4}">
													<div class="dessert themeKeySmall keyword">#${sameKeyword.themeNo.themeName}</div>
												</c:when>
												<c:when test="${sameKeyword.themeNo.themeNo == 5}">
													<div class="dog themeKeySmall keyword">#${sameKeyword.themeNo.themeName}</div>
												</c:when>
												<c:otherwise>
													<div class="work themeKeySmall keyword">#${sameKeyword.themeNo.themeName}</div>
												</c:otherwise>
											</c:choose>
										</div>
										<div class="RC_listBtnTitle2">
											<h3>${sameKeyword.writingTitle}</h3>
										</div>
									</li>
								</a>
							</c:forEach>
						</ul>
					</div>
				</div>
			</c:if>		
		</div>
	</div>
	
<script id="template" type="text/x-handlebars-template">
	{{#each list}}
	<tr class="spointBoard" data-spno="{{starPointNo}}">
		<td style="width: 120px;border-bottom: 1px solid #dadada;">
			<div class="star" id="spointComment">
				<select class="starPointWrite">
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
				</select>
			</div>
		</td>
		<td style="font-weight: bold;width: 25px;text-align: center;border-bottom: 1px solid #dadada;">{{starPoint}}</td>
		<td style="width: 115px;border-bottom: 1px solid #dadada;">
			<div class="themeIcon keyword spThemeIcon" style="background-color: #f2486f;"><span>#</span>{{themeNo.themeName}}</div>
		</td>
		<td style="border-bottom: 1px solid #dadada;">{{starPointComment}}</td>
		
		<td style="width: 140px;border-bottom: 1px solid #dadada;">| {{dateHelper registrationDate}}</td>
		<td style="border-bottom: 1px solid #dadada;text-align: left;">
			<img src="${pageContext.request.contextPath }/resources/images/{{userNo.userGrade.userGradeImage}}" style="width: 25px;vertical-align: bottom;margin-right: 10px;">
			<span>{{userNo.nick}}</span>
		</td>
		<td style="border-bottom: 1px solid #dadada;">
			<div class="replyBtn f_right">
				<a class="replyModify blueBtn off" href="#" data-spNo="{{starPointNo}}" data-sp="{{starPoint}}" data-spTheme="{{themeNo.themeNo}}" data-spComment="{{starPointComment}}">수정</a>
				<a class="replyRemove redBtn" href="#"  data-spNo="{{starPointNo}}">삭제</a>
			</div>
		</td>
	</tr>
	{{/each}}
</script>

<script>
	/*---- starpoint -----------------------------------------------------------------------------------------------------*/
	var no = 1;
	Handlebars.registerHelper ("dateHelper", function(value){
		var d = new Date(value);
		var year = d.getFullYear();
		var month = d.getMonth() + 1;
		var day = d.getDate();
		return year + "/" + month + "/" + day;
	})
	
	/* 평점 리스트 */
	function getPageList( page ){
		var cafeNo = ${cafe.cafeNo};
		
		$.ajax({
			url:"${pageContext.request.contextPath}/rest/starpoint/"+cafeNo+"/"+page,
			type:"get",
			datatype:"json",
			success:function(res){
				var starpoint = new Array();
				var backColor = new Array();
				for(var i=0;i<res.list.length;i++){
					starpoint[i] = res.list[i].starPoint;
					backColor[i] = res.list[i].themeNo.themeNo;
				}
				
				$(".spointBoard").remove();
				var source = $("#template").html();
				var func = Handlebars.compile(source);
				$("#spointList").append(func(res));				
				
				for(var i=0;i<res.list.length;i++){
					$('.starPointWrite').eq(i).barrating({
						theme: 'fontawesome-stars', 
						initialRating: starpoint[i], 
						readonly: true
					})
				}
				
				for(var i=0;i<res.list.length;i++){
					var colorNum = backColor[i];
					switch(colorNum){
					case 1:
						$('.spThemeIcon').eq(i).css("background-color","#b038fa");
						break;
					case 2:
						$('.spThemeIcon').eq(i).css("background-color","#528236");
						break;
					case 3:
						$('.spThemeIcon').eq(i).css("background-color","#96814c");
						break;
					case 4:
						$('.spThemeIcon').eq(i).css("background-color","#f2486f");
						break;
					case 5:
						$('.spThemeIcon').eq(i).css("background-color","#FFB232");
						break;
					case 6:
						$('.spThemeIcon').eq(i).css("background-color","#0170c2");
						break;
					}
				}

				var startPage = res.pageMaker.startPage;
				var endPage = res.pageMaker.endPage;
				$("#pagination").empty();
				for(var i = startPage; i <= endPage; i++){
					var $li = $("<li>");
					if(i == no) {
						$li.addClass("active");
					}
					var $a = $("<a>").html(i);
					$a.css("cursor", "pointer");
					$li.append($a);
					$("#pagination").append($li);
				}
				
				var totalCnt = res.pageMaker.totalCount;
				$("#spointNum").text(totalCnt);
			}
		})
		
		
	}
	
	/* 평점 리스트 show */
	getPageList(1);
	
	/* 평점 페이징 */
	$(document).on("click", "#pagination a", function(){
		no = $(this).text();
		getPageList(no);
	})
	
	/* 평점 추가 */
	$("#btnStarpointAdd").click(function(){
		// login 기능 구현 후 수정해야함
		var userNo = 1;
		var cafeNo = ${cafe.cafeNo};
		var themeNo = $('#hiddenTheme').val();
		var starPoint = $('#hiddenStarpoint').val();
		var starPointComment = $('#comment').val();
		
		if(starPointComment == "") {
			alert("코멘트를 남겨주세요.");
			return false;
		}
		
		var json = JSON.stringify({"cafeNo":{"cafeNo":cafeNo}, "themeNo":{"themeNo":themeNo}, "userNo": {"userNo" : userNo}, "starPoint":starPoint, "starPointComment":starPointComment});
		$.ajax({
			url:"${pageContext.request.contextPath}/rest/starpoint/",
			type:"post",
			headers: {"Content-Type":"application/json"},
			data: json,
			dataType : "text",
			success: function(res){
				if(res == "SUCCESS"){
					alert("평점이 등록되었습니다.");
					getPageList(no);
					$("#starPointModal").css("display", "none");
					$('#comment').val("");
					var color = $('.changeColor').eq(themeNo-1).css("background-color");
					$('.changeColor').eq(themeNo-1).css("background-color","white");
					$('.changeColor').eq(themeNo-1).css("border-color",color);
					$('.changeColor').eq(themeNo-1).css("color",color);
					$('#starPointCheck').barrating('set', 1);
				}
			}
		})		
	})
	/* 평점 취소 */
	$('#btnStarpointCancel').click(function() {
		$("#starPointModal").css("display", "none");
		$('#comment').val("");
		$('#starPointCheck').barrating('set', 1);
		for(var i=0;i<6;i++){
			switch(i){
			case 0:
				$('.changeColor').eq(0).css("background-color","white");
				$('.changeColor').eq(0).css("color","#b038fa");
				$('.changeColor').eq(0).css("border-color","#b038fa");
			case 1:
				$('.changeColor').eq(1).css("background-color","white");
				$('.changeColor').eq(1).css("color","#528236e");
				$('.changeColor').eq(1).css("border-color","#528236e");
			case 2:
				$('.changeColor').eq(2).css("background-color","white");
				$('.changeColor').eq(2).css("color","#96814c");
				$('.changeColor').eq(2).css("border-color","#96814c");
			case 3:
				$('.changeColor').eq(3).css("background-color","white");
				$('.changeColor').eq(3).css("color","#f2486f");
				$('.changeColor').eq(3).css("border-color","#f2486f");
			case 4:
				$('.changeColor').eq(4).css("background-color","white");
				$('.changeColor').eq(4).css("color","#FFB232");
				$('.changeColor').eq(4).css("border-color","#FFB232");
			case 5:
				$('.changeColor').eq(5).css("background-color","white");
				$('.changeColor').eq(5).css("color","#0170c2");
				$('.changeColor').eq(5).css("border-color","#0170c2");
			}
			$("#btnAddDiv").css("display","inline");
			$("#btnModDiv").css("display","none");
		}
	})
	/* 평점 수정 */
	$(document).on("click",".replyModify", function(){
		var starPointNo = $(this).attr("data-spNo");
		var themeNo = $(this).attr("data-spTheme");
		var starPoint = $(this).attr("data-sp");
		var starPointComment = $(this).attr("data-spComment");
		
		$("#hiddenStarpointNo").val(starPointNo);
		$("#hiddenTheme").val(themeNo);
		
		$("#starPointModal").css("display", "block");
		$('#starPointCheck').barrating('set', starPoint);

		switch(themeNo){
			case "1":
				$('.changeColor').eq(0).css("background-color","#b038fa");
				$('.changeColor').eq(0).css("color","white");
				break;
			case "2":
				$('.changeColor').eq(1).css("background-color","#528236");
				$('.changeColor').eq(1).css("color","white");
				break;
			case "3":
				$('.changeColor').eq(2).css("background-color","#96814c");
				$('.changeColor').eq(2).css("color","white");
				break;
			case "4":
				$('.changeColor').eq(3).css("background-color","#f2486f");
				$('.changeColor').eq(3).css("color","white");
				break;
			case "5":
				$('.changeColor').eq(4).css("background-color","#FFB232");
				$('.changeColor').eq(4).css("color","white");
				break;
			case "6":
				$('.changeColor').eq(5).css("background-color","#0170c2");
				$('.changeColor').eq(5).css("color","white");
				break;
		}
		$("#comment").val(starPointComment);
		$("#btnAddDiv").css("display","none");
		$("#btnModDiv").css("display","inline");
		return false;
	})
	/* 평점 수정 저장 */
	$("#btnStarpointMod").click(function(){
		// login 기능 구현 후 수정해야함
		var starPointNo = $('#hiddenStarpointNo').val();
		var themeNo = $('#hiddenTheme').val();
		var starPoint = $('#hiddenStarpoint').val();
		var starPointComment = $('#comment').val();
		
		var json = JSON.stringify({"starPointNo":starPointNo, "themeNo":{"themeNo":themeNo}, "starPoint":starPoint, "starPointComment":starPointComment});
		$.ajax({
			url:"${pageContext.request.contextPath}/rest/starpoint/"+starPointNo,
			type:"put",
			headers: {"Content-Type":"application/json"},
			data: json,
			dataType : "text",
			success: function(res){
				if(res == "SUCCESS"){
					alert("평점이 수정되었습니다.");
					getPageList(no);
					$("#starPointModal").css("display", "none");
					$('#comment').val("");
					var color = $('.changeColor').eq(themeNo-1).css("background-color");
					$('.changeColor').eq(themeNo-1).css("background-color","white");
					$('.changeColor').eq(themeNo-1).css("border-color",color);
					$('.changeColor').eq(themeNo-1).css("color",color);
					$('#starPointCheck').barrating('set', 1);
				}
			}
		})		
	})
	/* 평점 삭제 */
	$(document).on("click", ".replyRemove", function(){
		var con = confirm("정말 삭제하시겠습니까?");
		if(con == true){
			var starPointNo = $(this).attr("data-spNo");
			console.log(starPointNo);
			$.ajax({
				url:"${pageContext.request.contextPath}/rest/starpoint/"+starPointNo,
				type:"delete",
				dataType : "text",
				success:function(res){
					console.log(res);
					if(res == "SUCCESS"){
						alert("삭제되었습나다.");						
						getPageList(no);
					}
				}
			})	
		}
		return false;
	})
	
	/*---- 다른 탐방기 게시글 리스트 슬라이드 -----------------------------------------------------------------------------------------------------*/
	var sameBox = $(".cafeR_sameList > .cafeR_List");
	var sameCnt =  ${sameCnt};
	var samePage = Math.ceil(sameCnt / 2);
	var sameW = sameBox.width((920 * samePage) + (22 * samePage));
	
	var index = 0;
	var pageIndex = 1;
	
	$(".pageTotal").text(samePage);
	
	/* next */
	$("#nextBtn").click(function(){
		if(index == -(samePage-1)){
			return;
		}
		
		index--;
		pageIndex++;
		var marginLeft = index * 942;
		sameBox.animate({"margin-left":marginLeft+"px"}, 1000);
		$(".pageNum").text(pageIndex);
	})
	/* prev */
	$("#prevBtn").click(function(){
		if(index == 0){
			return;
		}
		
		index++;
		pageIndex--;
		var marginLeft = index * 942;
		sameBox.animate({"margin-left":marginLeft+"px"}, 1000);
		$(".pageNum").text(pageIndex);
	})
	// 테마분류 색상 설정
	$(".themeName").each(function(i, obj){
		var name = $(this).text();
		var keywordK = ["#데이트", "#뷰", "#착한아메", "#디저트", "#댕댕이", "#작업"];
		var keyword = ["date", "view", "ame", "dessert", "dog", "work"];
		
		for(var i=0; i<keyword.length; i++){
			if(name.indexOf(keywordK[i]) > -1) {
				$(this).addClass(keyword[i]);
			}
		}
	})
	
	/*---- 추천 카페 게시글 리스트 슬라이드 -----------------------------------------------------------------------------------------------------*/	
	
	// -- 원본파일 불러오기(선명한파일) -- //
	$(".thumbNailImg").each(function(i, obj) {
		var file = $(this).attr("src");
		//console.log("TEST========="+file);
		var start = file.substring(0,51);
		var end = file.substring(53);
		var fileName = start + end;
		$(this).attr("src", fileName);
		//console.log("TEST========="+fileName);
	})
	
	// ---------------------- 두번째 배너 -------------------------------- //
	var sameKeywordCnt = ${sameKeywordCnt}; 
	var pageNum2 = $(".pageNum2").text();
	
	//페이징
	var pageTotal2 = Math.ceil(${sameKeywordCnt} / 4); 
	$(".pageTotal2").text(pageTotal2); 
	
	//ul너비 자동계산
	var width2 = (920*pageTotal2);
	$("ul#banner2").css("width",width2);
	//next버튼
	var index2 = 0;
	$("#nextBtn2").click(function() {
		
		if(index2 == -(pageTotal2-1)){
			alert("오른쪽 끝입니다.");
			return;
		}
		
		pageNum2++;
		$(".pageNum2").text(pageNum2);
		
		index2--;
		var marginLeft = index2 * 920;
		$("ul#banner2").animate({"margin-left":marginLeft+"px"},1500);
	})
	//prev버튼
	$("#prevBtn2").click(function() {
		if(index2 == 0){
			alert("왼쪽 끝입니다.");
			return;
		}
		pageNum2--;
		$(".pageNum2").text(pageNum2);
		
		index2++;
		var marginLeft = index2 * 920; 
		$("ul#banner2").animate({"margin-left":marginLeft+"px"},1500);
	})
</script>

<%-- 지우면 안됨 subMenu.jsp에 container 시작 태그 있음 --%>
</div>
<!-- container end -->

<%@ include file="../userInclude/footer.jsp" %>