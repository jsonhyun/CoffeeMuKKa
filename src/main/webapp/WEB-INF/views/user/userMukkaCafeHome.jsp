<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../userInclude/header.jsp" %>
<%@ include file="../userInclude/subMenu.jsp" %>
<!-- 별점 -->
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/w3.css">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/fontawesome-stars.css">
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/jquery.barrating.min.js"></script>
<style>
	/* 파워링크 */
	.powerLink {
		height: 94px;
		margin-bottom: 10px;
		background: url("${pageContext.request.contextPath }/resources/images/add_sample01.JPG") no-repeat;
		position: relative;
		z-index: 1;
	}
	.powerLink_dummy{
		width: 100%;
		height: 94px;
		background-color: rgba(189, 189, 189, 0.2);
		position: absolute;
		left: 0;
		top: 0;
		z-index: 2;
	}
	p.dummy_text{
		color: rgba(246, 246, 246, 0.8);
		padding-top: 10px;
		padding-right: -20px;
		text-align: right;
		letter-spacing: 1px;
		opacity: 0;
	}
	h1.dummy_title{
		font-size: 48px;
		color: rgba(246, 246, 246, 0.8);
		letter-spacing: 12px;
		text-align: right;
		position: absolute;
		right: -20px;
		top: 22px;
		opacity: 0;		
	}
	h3.mukka_Title{
		padding-top: 5px;
		margin-bottom: 20px;
		font-size: 20px;
	}
	/* 위치별 / 테마별 / 베스트 */
	.contentArea .boxs {
		height: 300px;
		overflow: hidden;
		margin-bottom: 30px;
	}
	
	.contentArea .boxs .box {
		height: 300px;
		float: left;
		width: 30%;
		position: relative;
		overflow: hidden;
		margin-right: 46px;
		position: relative;
	}
 	.contentArea .boxs .box:hover div.hiddenBox{
		opacity: 1;
		top:0;	
	}
	.contentArea .boxs .box:hover div.cafe_info{
		opacity: 0;
	}
	.contentArea .boxs .box:hover div.point{
		opacity: 0;
	}	
	
	.contentArea .boxs .box:last-child {
		margin-right: 0;
	}
	
	.contentArea .boxs .box .point {
		position: absolute;
		top: 5px;
		left: 5px;
		z-index: 2;
		transition: all 1s ease;
	}
	
	.contentArea .boxs .box img {
		width: 100%;
		height: 300px;
		position: absolute;
		top: 0;
		left: 0;
		z-index: 0;
		
	}
	div.cafe_info{
		width: 100%;
		background-color: rgba(0,0,0,0.8);
		color: white;
		position: absolute;
		top: 208px;
		left: 0;
		transition: all 1s ease;	
	}
	.contentArea .boxs .box .cafe_info h3{
		padding: 10px;
	}
	
	.contentArea .boxs .box .cafe_info p {
		padding: 10px;
	}
	div.hiddenBox{
		width: 100%;
		height: 300px;
		background-color: #ED7D31;
		transition: all .6s ease;
		position: absolute;
		top: 208px;
		left: 0;
		opacity: 0;
		z-index: 3;
	}
	h1.hiddenPoint,h3.hiddenPointName,h3.hiddenTitle,p.hiddenAdd,p.hiddenText{
		padding-left: 10px;
		padding-right: 10px;
		padding-top: 5px;
		color: white;
	}
	h1.hiddenPoint{
		margin-top: 25px;
		text-align: center;
		font-size: 30px;
	}
	h3.hiddenPointName{
		text-align: center;
		font-size: 24px
	}
	h3.hiddenTitle{
		margin-top: 15px;
	}
	p.hiddenAdd{
		font-weight: bold;
		font-size: 15px;
		margin-top: 5px;		
	}
	p.hiddenText{
		width: 90%;
		height: 58px;
		overflow: hidden;
		text-overflow: ellipsis;
		display: -webkit-box;
		-webkit-line-clamp: 3; /* 라인수 */
		-webkit-box-orient: vertical;
		word-wrap: break-word;
		font-size: 14px;
		margin-top: 5px;
	}	
	.contentArea .realTime {
		overflow: hidden;
	}
	.bestTitle{
		background-color: #FF007F;
		border-radius: 5px;
		padding: 1px 8px;
		letter-spacing: 2px;
		color: white;
	}
	.viewBlue{
		margin-right: 135px;
	}
	.contentArea .realTime .box h3 span{
		font-size: 16px;
	}
	.prevBtn1{
		padding: 4px;
		margin-left: 3px;
		margin-left: 10px;
		cursor: pointer;
	}
	.nextBtn1{
		padding: 4px;
		margin-left: 3px;
		cursor: pointer;
	}
	div.bestViewBox{
		height: 575px;
		width: 442px;
		overflow: hidden;
	}
	ul.bestCafeBox{
		 width: 2210px;
	}
	li.bestCafe_li{
	  width: 442px;	
	  height: 490px;
	  float: left;			
	  
	}
	ul.bestCafeBox li div{
		float: left;
	}
	.contentArea .realTime .box .no {
		width: 27px;
		text-align: center;
		font-size: 22px;
		line-height: 155px;
	}
	div.best_ul_info{
		width: 200px;
		padding: 20px 20px;
		
	}
	p.best_oneline{
		width: 200px;
		height: 50px;
		font-weight: bold;
		overflow: hidden; 
		text-overflow: ellipsis;
		display: -webkit-box;
		-webkit-line-clamp: 2; /* 라인수 */
		-webkit-box-orient: vertical;
		word-wrap: break-word;
		margin-top: 35px;
	}
	div.best_ul_img{
		width: 165px;
		padding-top : 8px;
	}
	div.best_ul_img img.best_view_img{
		width: 165px;
		height: 140px;
	}
	
	img.best_view_img:hover{
		border: 5px solid #ED7D31;
		margin: -5px;
	}
	div.best_line{
		width: 440px;
		border-bottom: 1px solid #aaa;
	}
	
	table.starPoint_Box{
		width: 442px;
		height: 468px;
	}
	tr,td{
		border: none
	}
	tr{
		border-bottom: 1px solid #aaa;
	}
	table.starPoint_Box td.starPointRank{
		text-align: center;
		font-weight: bold;
	}
	.starPointWrap {
		width: 150px;
		height: 33px;
		/* margin: 0 auto;
		line-height: 50px; */
	}
	.spoint{
	    width: 150px;	
		height: 33px;
	    line-height: 33px;
	    background-color: #f4f4f4;
	    border-radius: 10px;
	    float: left;
	}
	.br-theme-fontawesome-stars .br-readonly a {
		font-size: 15px;		
	}
	.br-theme-fontawesome-stars .br-readonly a:first-child{
		padding-left: 15px;
	}	
	.br-theme-fontawesome-stars .br-widget a.br-selected:after {
		color: red;
	}
	.jumsu{
		height: 33px;
	    line-height: 33px;
	    float: left;
	    margin-left: -51px;
	    /* margin-bottom: 20px; */
		font-size: 15px;
	}
	div.spointZone{
		font-weight: bold;
		font-size: 13px;
	}
	div.spointTheme{
		font-weight: bold;
		font-size: 13px;
	}
	td.spoint_keyword div{
		float: left;
		margin-right: 5px;
	}
	td.spointCafeName{
		font-weight: bold;
		font-size: 17px;
	}
	
	.navy_box{
		color: #2924BD;
		letter-spacing: 3px;
		border-radius: 5px;
		border: 2px solid #2924BD;
		padding: 0 8px;
		font-size: 24px;
	}
	.navy_box:hover {
		color: #ED7D31;
		border: 2px solid #ED7D31;
	}
	div.theme_boxs{
		width: 100%;
		height: 565px;
		overflow: hidden;
		margin-bottom: 20px;
	}
	ul.themeWrap{
		width: 100%;
		overflow: hidden;
	}
	li.theme_box{
		width: 30%;
		height: 250px;
		background: #ddd;
		margin: 15px;
		float: left;
		position: relative;
		overflow: hidden;	
	}
	li.theme_box div.theme_keyword{
		position: absolute;
		left: 5px;
		top: 5px;
		transition: all 1s ease;
		
	}
	li.theme_box img.themeImg{
		width: 100%;
		height: 250px;
	}
	div.theme_info{
		width: 100%;
		background-color: rgba(0,0,0,0.8);
		color: white;
		position: absolute;
		top: 158px;
		left: 0;
		transition: all 1s ease;
	}
 	.theme_info h3.theme_title,p.theme_text{
		padding: 10px;
	}
	.theme_hiddenBox{
		width: 100%;
		height: 250px;
		position: absolute;
		top: 128px;
		left: 0;
		opacity: 0;
		transition: all .6s ease;
	}	
   	li.theme_box:hover div.theme_hiddenBox{
		opacity: 1;
		top:0;
			
	}
	li.theme_box:hover div.theme_info{
		opacity: 0;
	}
 	li.theme_box:hover div.theme_keyword{
		opacity: 0;
	}
 	.theme_hiddenBox h3.theme_hiddenTitle,p.theme_hiddenAdd,p.theme_hiddenText{
		padding-top: 5px;
		padding-left: 10px;
		padding-right: 10px;
		color: white;
	}
	p.theme_hiddenAdd{
		font-weight: bold;
		font-size: 15px;
	}
	p.theme_hiddenText{
		width: 90%;
		height: 38px;
		overflow: hidden;
		text-overflow: ellipsis;
		display: -webkit-box;
		-webkit-line-clamp: 2; /* 라인수 */
		-webkit-box-orient: vertical;
		word-wrap: break-word;
		font-size: 14px;		
	}
 	.themeIcon{
		width: 100%;
		margin: 0 auto;
		border-radius: 26px;
		text-align: center;
		color: white;
		font-size: 24px;
		font-weight: bold;
		padding-top: 30px;
		padding-bottom: 10px;
	}
 	.themeIcon img{
		width: 30px;
		height: 30px;
		vertical-align: middle;		
	}
	div.theme_tableWrap{
		width: 100%;
		margin-bottom: 30px;
	}
	table.theme_table{
		width: 100%;
	}
	table.theme_table tr{
		height: 230px;
		border-bottom: 2px solid #545454;
	}
	td.theme_imgTd{
		width: 190px;
		text-align: center;
	}
	table.theme_table img.ran_theme_img{
		width: 150px;
		height: 150px;
	}
	img.ran_theme_img:hover{
		border: 5px solid red;
		margin: -5px;
	}
	h3.ranThemeTitle{
		color: black;
	}
	.keyword_box{
		color: white;
		letter-spacing: 3px;
		border-radius: 6px;
		padding: 0 8px;
		font-size: 24px;
	}
	.term{
		font-size: 18px;
	}
	.realRed{
		color: red;
	}
	div.startPoint5_wrap{
		width: 100%;
	}				
	table.commentWrap{
		width: 100%;
		border-top: 2px solid #545454;
		border-bottom: 2px solid #545454;
		padding: 20px 0 20px 0;
	}
	table.commentWrap tr{
		height: 55px;
	}
	td.starPoint5_cafeName{
		width: 20%
	}
	td.starPoint5_zone{
		width: 15%;
	}
	td.starPoint5_cnt{
		width: 25%;
	}
	td.starPoint5_comment{
		font-weight: bold;
	}	
</style>
		
<div class="content subPageContent">
	<!-- 서브페이지 콘텐츠 -->
	<div class="contentArea">
		<h2 class="subPageTitle">
			<span class="title">커피무까</span>
			<span class="subTit grayB"> | 오늘은 어디서 커피 한잔?</span>
		</h2>
		
		<!-- 서브콘텐츠 시작 -->
		
		<!-- 파워링크 배너(슬라이드처리) -->
		<div class="powerLink">
			<div class="powerLink_dummy">
				<p class="dummy_text"><i>The best way to start the day is with a nice warm cup of joe.</i></p>
				<h1 class="dummy_title">Zone & Theme</h1>
			</div>
		</div>

		
		<!-- 위치, 테마, 베스트 -->
		<h3 class="mukka_Title">오늘 카페 어디 갈까?</h3>
		<div class="boxs">
			<div class="box">
				<a href="${pageContext.request.contextPath }/user/mukkaCafe/zone/read?cafeNo=${zoneCafe1.cafeNo}">
					<div class="point bgOrange keyword zoneOrangeIcon">${zoneCafe1.zoneNo.zoneName}</div>
					<img src="${pageContext.request.contextPath }/resources/images/sumnail/${zoneImg1.imageName}">
					<div class="cafe_info">
						<h3 class="title"><i class="fas fa-coffee"></i> ${zoneCafe1.cafeName}</h3>
						<p class="classOne">'${zoneCafe1.oneline}'</p>
					</div>
					<div class="hiddenBox">
						<h1 class="hiddenPoint"><i class="fas fa-map-marker-alt"></i></h1>
						<h3 class="hiddenPointName">${zoneCafe1.zoneNo.zoneName}</h3>
						<h3 class="hiddenTitle"><i class="fas fa-coffee"></i> ${zoneCafe1.cafeName}</h3>
						<p class="hiddenAdd"><i class="fas fa-map-marker-alt"></i> ${zoneCafe1.address}</p>
					    <p class="hiddenText">'${zoneCafe1.oneline}'</p>
					</div>
				</a>
			</div>
			<div class="box">
				<a href="${pageContext.request.contextPath }/user/mukkaCafe/zone/read?cafeNo=${zoneCafe2.cafeNo}">	
					<div class="point bgOrange keyword zoneOrangeIcon">${zoneCafe2.zoneNo.zoneName}</div>
					<img src="${pageContext.request.contextPath }/resources/images/sumnail/${zoneImg2.imageName}">
					<div class="cafe_info">
						<h3 class="title"><i class="fas fa-coffee"></i> ${zoneCafe2.cafeName}</h3>
						<p class="classOne">'${zoneCafe2.oneline}'</p>
					</div>
					<div class="hiddenBox">
						<h1 class="hiddenPoint"><i class="fas fa-map-marker-alt"></i></h1>
						<h3 class="hiddenPointName">${zoneCafe2.zoneNo.zoneName}</h3>
						<h3 class="hiddenTitle"><i class="fas fa-coffee"></i> ${zoneCafe2.cafeName}</h3>
						<p class="hiddenAdd"><i class="fas fa-map-marker-alt"></i> ${zoneCafe2.address}</p>
					    <p class="hiddenText">'${zoneCafe2.oneline}'</p>					
					</div>
				</a>					
			</div>
			<div class="box">
				<a href="${pageContext.request.contextPath }/user/mukkaCafe/zone/read?cafeNo=${zoneCafe3.cafeNo}">	
					<div class="point bgOrange keyword zoneOrangeIcon">${zoneCafe3.zoneNo.zoneName}</div>
					<img src="${pageContext.request.contextPath }/resources/images/sumnail/${zoneImg3.imageName}">
					<div class="cafe_info">
						<h3 class="title"><i class="fas fa-coffee"></i> ${zoneCafe3.cafeName}</h3>
						<p class="classOne">'${zoneCafe3.oneline}'</p>
					</div>
					<div class="hiddenBox">
						<h1 class="hiddenPoint"><i class="fas fa-map-marker-alt"></i></h1>
						<h3 class="hiddenPointName">${zoneCafe3.zoneNo.zoneName}</h3>
						<h3 class="hiddenTitle"><i class="fas fa-coffee"></i> ${zoneCafe3.cafeName}</h3>
						<p class="hiddenAdd"><i class="fas fa-map-marker-alt"></i> ${zoneCafe3.address}</p>
					    <p class="hiddenText">'${zoneCafe3.oneline}'</p>					
					</div>
				</a>					
			</div>
		</div>
		
		
		<!-- 위치별 / 테마별 실시간 -->
		<div class="realTime">
			<div class="box left bestViewBox">
				<h3 class="title bottomLine">
					<span class="bestTitle">BEST</span> <span class="bestSubtitle">|<span class="blue viewBlue"> 많이 본 인기 카페</span></span>
					 <span class="orange"><span class="pageNum1">1</span> / <span class="pageTotal1">5</span></span>
					 <span class="prevBtn1"><i class="fas fa-angle-left"></i></span>
					 <span class="nextBtn1"><i class="fas fa-angle-right"></i></span>
				</h3>				
				<ul class="bestCafeBox">
					<li class="bestCafe_li">
						<c:forEach var="viewCafeList" items="${viewCafeList}" begin="0" end="2" varStatus="status">
							<div class="red w30 no bold"><i class="num1"></i></div>
							<div class="best_ul_info">
								<p class="best_oneline">" ${viewCafeList.oneline} "</p>
							</div>
							<div class="best_ul_img">
								<c:forEach var="viewCafeListImg" items="${viewCafeListImg}" begin="0" end="2" varStatus="status">
									<c:if test="${viewCafeListImg.cafeNo.cafeNo == viewCafeList.cafeNo }">
										<a href="${pageContext.request.contextPath}/user/mukkaCafe/zone/read?cafeNo=${viewCafeList.cafeNo}">
											<img src="${pageContext.request.contextPath }/resources/images/sumnail/${viewCafeListImg.imageName}" class="best_view_img">
										</a>
									</c:if>
								</c:forEach>
							</div>
							<div class="best_line"></div>
						</c:forEach>												
					</li>
					<li class="bestCafe_li">
						<c:forEach var="viewCafeList" items="${viewCafeList}" begin="3" end="5" varStatus="status">
							<div class="red w30 no bold"><i class="num2"></i></div>
							<div class="best_ul_info">
								<p class="best_oneline">" ${viewCafeList.oneline} "</p>
							</div>
							<div class="best_ul_img">
								<c:forEach var="viewCafeListImg" items="${viewCafeListImg}" begin="3" end="5" varStatus="status">
									<c:if test="${viewCafeListImg.cafeNo.cafeNo == viewCafeList.cafeNo }">
										<a href="${pageContext.request.contextPath}/user/mukkaCafe/zone/read?cafeNo=${viewCafeList.cafeNo}">
											<img src="${pageContext.request.contextPath }/resources/images/sumnail/${viewCafeListImg.imageName}" class="best_view_img">
										</a>
									</c:if>
								</c:forEach>
							</div>
							<div class="best_line"></div>
						</c:forEach>												
					</li>
					<li class="bestCafe_li">
						<c:forEach var="viewCafeList" items="${viewCafeList}" begin="6" end="8" varStatus="status">
							<div class="red w30 no bold"><i class="num3"></i></div>
							<div class="best_ul_info">
								<p class="best_oneline">" ${viewCafeList.oneline} "</p>
							</div>
							<div class="best_ul_img">
								<c:forEach var="viewCafeListImg" items="${viewCafeListImg}" begin="6" end="8" varStatus="status">
									<c:if test="${viewCafeListImg.cafeNo.cafeNo == viewCafeList.cafeNo }">
										<a href="${pageContext.request.contextPath}/user/mukkaCafe/zone/read?cafeNo=${viewCafeList.cafeNo}">
											<img src="${pageContext.request.contextPath }/resources/images/sumnail/${viewCafeListImg.imageName}" class="best_view_img">
										</a>
									</c:if>
								</c:forEach>
							</div>
							<div class="best_line"></div>
						</c:forEach>												
					</li>
					<li class="bestCafe_li">
						<c:forEach var="viewCafeList" items="${viewCafeList}" begin="9" end="11" varStatus="status">
							<div class="red w30 no bold"><i class="num4"></i></div>
							<div class="best_ul_info">
								<p class="best_oneline">" ${viewCafeList.oneline} "</p>
							</div>
							<div class="best_ul_img">
								<c:forEach var="viewCafeListImg" items="${viewCafeListImg}" begin="9" end="11" varStatus="status">
									<c:if test="${viewCafeListImg.cafeNo.cafeNo == viewCafeList.cafeNo }">
										<a href="${pageContext.request.contextPath}/user/mukkaCafe/zone/read?cafeNo=${viewCafeList.cafeNo}">
											<img src="${pageContext.request.contextPath }/resources/images/sumnail/${viewCafeListImg.imageName}" class="best_view_img">
										</a>
									</c:if>
								</c:forEach>
							</div>							
							<div class="best_line"></div>
						</c:forEach>												
					</li>
					<li class="bestCafe_li">
						<c:forEach var="viewCafeList" items="${viewCafeList}" begin="12" end="14" varStatus="status">
							<div class="red w30 no bold"><i class="num5"></i></div>
							<div class="best_ul_info">
								<p class="best_oneline">" ${viewCafeList.oneline} "</p>
							</div>
							<div class="best_ul_img">
								<c:forEach var="viewCafeListImg" items="${viewCafeListImg}" begin="12" end="14" varStatus="status">
									<c:if test="${viewCafeListImg.cafeNo.cafeNo == viewCafeList.cafeNo }">
										<a href="${pageContext.request.contextPath}/user/mukkaCafe/zone/read?cafeNo=${viewCafeList.cafeNo}">
											<img src="${pageContext.request.contextPath }/resources/images/sumnail/${viewCafeListImg.imageName}" class="best_view_img">
										</a>
									</c:if>
								</c:forEach>
							</div>							
							<div class="best_line"></div>
						</c:forEach>												
					</li>																																																				
				</ul>
			</div>
			<div class="box right">
				<h3 class="title bottomLine"><span class="bestTitle">BEST</span> <span> |<span class="red"> 종합 별점 랭킹 5</span></span></h3>
				<table class="starPoint_Box">
					<c:forEach var="starPointCafeList" items="${starPointCafeList}">
						<tr>
							<td class="starPointRank" rowspan="2"></td>
							<td class="starPointWrap" rowspan="2">
								<div class="starPointWrap clearfix">
									<div class="star spoint">
										<select class="starPoint"> 
											<option value="1">1</option> 
											<option value="2">2</option> 
											<option value="3">3</option> 
											<option value="4">4</option> 
											<option value="5">5</option> 
										</select>										
									</div>
									<div class="jumsu"><span class="spointNum"></span><span class="gray">/ 5</span></div>
									</div>	
							</td>
							<td class="spoint_keyword" colspan="2">
								<div class="zoneIcon zoneOrangeIconSmall spointZone">${starPointCafeList.zoneNo.zoneName}</div>
								<c:choose>
									<c:when test="${starPointCafeList.themeNo.themeNo == 1}">
										<div class="date themeKeySmall spointTheme">#${starPointCafeList.themeNo.themeName}</div>
									</c:when>
									<c:when test="${starPointCafeList.themeNo.themeNo == 2}">
										<div class="view themeKeySmall spointTheme">#${starPointCafeList.themeNo.themeName}</div>
									</c:when>
									<c:when test="${starPointCafeList.themeNo.themeNo == 3}">
										<div class="ame themeKeySmall spointTheme">#${starPointCafeList.themeNo.themeName}</div>
									</c:when>
									<c:when test="${starPointCafeList.themeNo.themeNo == 4}">
										<div class="dessert themeKeySmall spointTheme">#${starPointCafeList.themeNo.themeName}</div>
									</c:when>
									<c:when test="${starPointCafeList.themeNo.themeNo == 5}">
										<div class="dog themeKeySmall spointTheme">#${starPointCafeList.themeNo.themeName}</div>
									</c:when>																																								
									<c:otherwise>
										<div class="work themeKeySmall  keyword">#${starPointCafeList.themeNo.themeName}</div>		
									</c:otherwise>
								</c:choose>							
							</td>
							</tr>
							<tr>
								<td class="spointCafeName" colspan="2"><a href="${pageContext.request.contextPath }/user/mukkaCafe/zone/read?cafeNo=${starPointCafeList.cafeNo}"><i class="fas fa-coffee"></i> ${starPointCafeList.cafeName}</a></td>
							</tr>
						</c:forEach>																																											
				</table>
			</div>
		</div>
		
		<h3 class="mukka_Title">오늘따라 끌리는 <span class="navy_box">#테마</span> 를 골라봐!</h3>
		<div class="theme_boxs">
			<ul class="themeWrap">
			    <!-- 데이트 -->
				<li class="theme_box">
					<a href="${pageContext.request.contextPath }/user/mukkaCafe/zone/read?cafeNo=${themeCafe1.cafeNo}">
						<div class="theme_keyword date themeKeySmall keyword">#${themeCafe1.themeNo.themeName}</div>
						<img src="${pageContext.request.contextPath }/resources/images/sumnail/${themeCafeImg1.imageName}" class="themeImg">
						<div class="theme_info">
							<h3 class="theme_title"><i class="fas fa-coffee"></i> ${themeCafe1.cafeName}</h3>
							<p class="classOne theme_text">'${themeCafe1.oneline}'</p>
						</div>
						<div class="theme_hiddenBox date">
							<div class="themeIcon"><img src="${pageContext.request.contextPath}/resources/images/key1_1.png"><br>#${themeCafe1.themeNo.themeName}</div>
							<h3 class="theme_hiddenTitle"><i class="fas fa-coffee"></i> ${themeCafe1.cafeName}</h3>
							<p class="theme_hiddenAdd"><i class="fas fa-map-marker-alt"></i> ${themeCafe1.address}</p>
							<p class="theme_hiddenText">'${themeCafe1.oneline}'</p>
						</div>
					</a>					
				</li>
				<!-- 뷰 -->
				<li class="theme_box">
					<a href="${pageContext.request.contextPath }/user/mukkaCafe/zone/read?cafeNo=${themeCafe2.cafeNo}">
						<div class="theme_keyword view themeKeySmall keyword">#${themeCafe2.themeNo.themeName}</div>
						<img src="${pageContext.request.contextPath }/resources/images/sumnail/${themeCafeImg2.imageName}" class="themeImg">
						<div class="theme_info">
							<h3 class="theme_title"><i class="fas fa-coffee"></i> ${themeCafe2.cafeName}</h3>
							<p class="classOne theme_text">'${themeCafe2.oneline}'</p>
						</div>
						<div class="theme_hiddenBox view">
							<div class="themeIcon"><img src="${pageContext.request.contextPath}/resources/images/key2_2.png"><br>#${themeCafe2.themeNo.themeName}</div>
							<h3 class="theme_hiddenTitle"><i class="fas fa-coffee"></i> ${themeCafe2.cafeName}</h3>
							<p class="theme_hiddenAdd"><i class="fas fa-map-marker-alt"></i> ${themeCafe2.address}</p>
							<p class="theme_hiddenText">'${themeCafe2.oneline}'</p>
						</div>
					</a>
				</li>
				<!-- 착한아메 -->
				<li class="theme_box">
					<a href="${pageContext.request.contextPath }/user/mukkaCafe/zone/read?cafeNo=${themeCafe3.cafeNo}">
						<div class="theme_keyword ame themeKeySmall keyword">#${themeCafe3.themeNo.themeName}</div>
						<img src="${pageContext.request.contextPath }/resources/images/sumnail/${themeCafeImg3.imageName}" class="themeImg">
						<div class="theme_info">
							<h3 class="theme_title"><i class="fas fa-coffee"></i> ${themeCafe3.cafeName}</h3>
							<p class="classOne theme_text">'${themeCafe3.oneline}'</p>
						</div>
						<div class="theme_hiddenBox ame">
							<div class="themeIcon"><img src="${pageContext.request.contextPath}/resources/images/key3_3.png"><br>#${themeCafe3.themeNo.themeName}</div>
							<h3 class="theme_hiddenTitle"><i class="fas fa-coffee"></i> ${themeCafe3.cafeName}</h3>
							<p class="theme_hiddenAdd"><i class="fas fa-map-marker-alt"></i> ${themeCafe3.address}</p>
							<p class="theme_hiddenText">'${themeCafe3.oneline}'</p>
						</div>
					</a>
				</li>
				<!-- 디저트 -->
				<li class="theme_box">
					<a href="${pageContext.request.contextPath }/user/mukkaCafe/zone/read?cafeNo=${themeCafe4.cafeNo}">
						<div class="theme_keyword dessert themeKeySmall keyword">#${themeCafe4.themeNo.themeName}</div>
						<img src="${pageContext.request.contextPath }/resources/images/sumnail/${themeCafeImg4.imageName}" class="themeImg">
						<div class="theme_info">
							<h3 class="theme_title"><i class="fas fa-coffee"></i> ${themeCafe4.cafeName}</h3>
							<p class="classOne theme_text">'${themeCafe4.oneline}'</p>
						</div>
						<div class="theme_hiddenBox dessert">
							<div class="themeIcon"><img src="${pageContext.request.contextPath}/resources/images/key4_4.png"><br>#${themeCafe4.themeNo.themeName}</div>
							<h3 class="theme_hiddenTitle"><i class="fas fa-coffee"></i> ${themeCafe4.cafeName}</h3>
							<p class="theme_hiddenAdd"><i class="fas fa-map-marker-alt"></i> ${themeCafe4.address}</p>
							<p class="theme_hiddenText">'${themeCafe4.oneline}'</p>
						</div>
					</a>
				</li>
				<!-- 댕댕이 -->
				<li class="theme_box">
					<a href="${pageContext.request.contextPath }/user/mukkaCafe/zone/read?cafeNo=${themeCafe5.cafeNo}">
						<div class="theme_keyword dog themeKeySmall keyword">#${themeCafe5.themeNo.themeName}</div>
						<img src="${pageContext.request.contextPath }/resources/images/sumnail/${themeCafeImg5.imageName}" class="themeImg">
						<div class="theme_info">
							<h3 class="theme_title"><i class="fas fa-coffee"></i> ${themeCafe5.cafeName}</h3>
							<p class="classOne theme_text">'${themeCafe5.oneline}'</p>
						</div>
						<div class="theme_hiddenBox dog">
							<div class="themeIcon"><img src="${pageContext.request.contextPath}/resources/images/key5_5.png"><br>#${themeCafe5.themeNo.themeName}</div>
							<h3 class="theme_hiddenTitle"><i class="fas fa-coffee"></i> ${themeCafe5.cafeName}</h3>
							<p class="theme_hiddenAdd"><i class="fas fa-map-marker-alt"></i> ${themeCafe5.address}</p>
							<p class="theme_hiddenText">'${themeCafe5.oneline}'</p>
						</div>
					</a>
				</li>
				<!-- 작업 -->
				<li class="theme_box">
					<a href="${pageContext.request.contextPath }/user/mukkaCafe/zone/read?cafeNo=${themeCafe6.cafeNo}">
						<div class="theme_keyword work themeKeySmall keyword">#${themeCafe6.themeNo.themeName}</div>
						<img src="${pageContext.request.contextPath }/resources/images/sumnail/${themeCafeImg6.imageName}" class="themeImg">
						<div class="theme_info">
							<h3 class="theme_title"><i class="fas fa-coffee"></i> ${themeCafe6.cafeName}</h3>
							<p class="classOne theme_text">'${themeCafe6.oneline}'</p>
						</div>
						<div class="theme_hiddenBox work">
							<div class="themeIcon"><img src="${pageContext.request.contextPath}/resources/images/key6_6.png"><br>#${themeCafe6.themeNo.themeName}</div>
							<h3 class="theme_hiddenTitle"><i class="fas fa-coffee"></i> ${themeCafe6.cafeName}</h3>
							<p class="theme_hiddenAdd"><i class="fas fa-map-marker-alt"></i> ${themeCafe6.address}</p>
							<p class="theme_hiddenText">'${themeCafe6.oneline}'</p>
						</div>
					</a>
				</li>
			</ul>
		</div>
		<h3 class="title bottomLine ranThemeTitle">
				<c:if test="${themeGroupCafe1.themeNo.themeNo == 1}">
					 <span class="keyword_box date">#데이트</span> 하기 좋은 카페
				</c:if>
				<c:if test="${themeGroupCafe1.themeNo.themeNo == 2}">
					<span class="keyword_box view">#뷰</span> 가 끝내주는 카페
				</c:if>
				<c:if test="${themeGroupCafe1.themeNo.themeNo == 3}">
					<span class="keyword_box ame">#착한아메</span> 가 있는 카페
				</c:if>
				<c:if test="${themeGroupCafe1.themeNo.themeNo == 4}">
					나는야 <span class="keyword_box dessert">#디저트</span> 파  라면 바로 여기</span>
				</c:if>
				<c:if test="${themeGroupCafe1.themeNo.themeNo == 5}">
					<span class="keyword_box dog">#댕댕이</span> 와 함께 하기 좋은 카페
				</c:if>																																								
				<c:if test="${themeGroupCafe1.themeNo.themeNo == 6}">
					<span class="keyword_box work">#작업</span> 하기 안성맞춤인 카페
				</c:if>
		</h3>
		<div class="theme_tableWrap">
			<table class="theme_table">
				<tr>
					<td class="theme_imgTd">
						<a href="${pageContext.request.contextPath }/user/mukkaCafe/zone/read?cafeNo=${themeGroupCafe1.cafeNo}">
							<img src="${pageContext.request.contextPath }/resources/images/sumnail/${themeGroupImg1.imageName}" class="ran_theme_img">
						</a>
						<h4><i class="fas fa-coffee"></i> ${themeGroupCafe1.cafeName}</h4>	
					</td>
					<td class="theme_imgTd">
						<a href="${pageContext.request.contextPath }/user/mukkaCafe/zone/read?cafeNo=${themeGroupCafe2.cafeNo}">
							<img src="${pageContext.request.contextPath }/resources/images/sumnail/${themeGroupImg2.imageName}" class="ran_theme_img">
						</a>
						<h4><i class="fas fa-coffee"></i> ${themeGroupCafe2.cafeName}</h4>	
					</td>
					<td class="theme_imgTd">
						<a href="${pageContext.request.contextPath }/user/mukkaCafe/zone/read?cafeNo=${themeGroupCafe3.cafeNo}">
							<img src="${pageContext.request.contextPath }/resources/images/sumnail/${themeGroupImg3.imageName}" class="ran_theme_img">
						</a>
						<h4><i class="fas fa-coffee"></i> ${themeGroupCafe3.cafeName}</h4>	
					</td>
					<td class="theme_imgTd">
						<a href="${pageContext.request.contextPath }/user/mukkaCafe/zone/read?cafeNo=${themeGroupCafe4.cafeNo}">
							<img src="${pageContext.request.contextPath }/resources/images/sumnail/${themeGroupImg4.imageName}" class="ran_theme_img">
						</a>
						<h4><i class="fas fa-coffee"></i> ${themeGroupCafe4.cafeName}</h4>	
					</td>															
				</tr>														
			</table>
		</div>
		
		<h3 class="title bottomLin mukka_Title"><i class="fas fa-grin-stars"></i> 별점 <span class="realRed">5점</span> 받은 바로 그 카페 <i class="fas fa-grin-stars"></i> <span class="term orange">(2020.05.01 ~ 05.31)</span></h3>
		<div class="starPoint5_Wrap">
			<table class="commentWrap">
				<tr>
					<td class="starPoint5_cafeName">
						<h4><i class="fas fa-coffee"></i> 오퐁드부아</h4>
					</td>
					<td class="starPoint5_zone">
						<div class="zoneIcon zoneOrangeIconSmall spointZone">달성군</div>
					</td>
					<td class="starPoint5_cnt">
						<span class="bold">별점 5점</span>을 <span class="red bold">5번</span> 받았어요!
					</td>
					<td  class="starPoint5_comment">
						이승태님의 평가 <div class="date themeKeySmall spointTheme">#데이트</div> <span class="blue"><i>'디저트가 좋아요'</i></span>  
					</td>
				</tr>																															
			</table>
		</div>
		<!-- 서브콘텐츠 끝 -->
		
	</div>
</div>
	

<%-- 지우면 안됨 subMenu.jsp에 container 시작 태그 있음 --%>
</div>
<!-- container end -->
<script>
	$("p.dummy_text").animate({"padding-right":"40px","opacity":"1"},1800);
    $("h1.dummy_title").animate({"margin-right":"50px","opacity":"1"},1800);
    
	//많이 본 인기 카페
	var pageNum1 = $(".pageNum1").text(); //1
	var pageTotal1 = $(".pageTotal1").text();
	
	var index1 = 0;
	
 	$(".nextBtn1").click(function() {
		if(index1 == -(pageTotal1-1)){
			alert("오른쪽 끝입니다.");
			return;
		}
		pageNum1++;
		$(".pageNum1").text(pageNum1);
		
		index1--;
		var marginLeft = index1 * 442;
		console.log(marginLeft);
		$("ul.bestCafeBox").animate({"margin-left":marginLeft+"px"},1500);
 	})
		
 	$(".prevBtn1").click(function() {
		if(index1 == 0){
			alert("왼쪽 끝입니다.");
			return;
		}
		pageNum1--;
		$(".pageNum1").text(pageNum1);
		
		index1++;
		var marginLeft = index1 * 442;
		$("ul.bestCafeBox").animate({"margin-left":marginLeft+"px"},1500);	
	})
	
	//1위-15위
	for(var i=0;i<3;i++){
		$(".num1").eq(i).text(i+1);
		$(".num2").eq(i).text(i+4);
		$(".num3").eq(i).text(i+7);
		$(".num4").eq(i).text(i+10);
		$(".num5").eq(i).text(i+13);		
	}
 	
	/* 별점 */	
	var starpoint = ${starPoint};
	for(var i=0;i<starpoint.length;i++){
	     $('.starPoint').barrating({
				theme: 'fontawesome-stars',
				initialRating:  Math.round(starpoint[i]),
				readonly: true
			})
			
		$(".spointNum").eq(i).text(starpoint[i]);			
		
	}
	
	for(var i=0;i<5;i++){
	  $(".starPointRank").eq(i).text(i+1);
	}
</script>
<%@ include file="../userInclude/footer.jsp" %>