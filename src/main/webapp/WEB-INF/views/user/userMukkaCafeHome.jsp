<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../userInclude/header.jsp" %>
<%@ include file="../userInclude/subMenu.jsp" %>

<style>
	/* 파워링크 */
	.contentArea .powerLink {
		height: 94px;
		margin-bottom: 10px;
	}
	h3.mukka_Title{
		margin-bottom: 15px;
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

	
	.contentArea .boxs .box:last-child {
		margin-right: 0;
	}
	
	.contentArea .boxs .box .point {
		position: absolute;
		top: 5px;
		left: 5px;
		z-index: 2;
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
		background-color: rgba(0,0,0,0.9);
		
		transition: all .6s ease;
		position: absolute;
		top: 208px;
		left: 0;
		opacity: 0;
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
	.blue{
		margin-right: 135px;
	}
	.contentArea .realTime .box h3 span{
		font-size: 16px;
	}
	.prevBtn1{
		padding: 4px;
		margin-left: 3px;
		margin-left: 10px;
	}
	.nextBtn1{
		padding: 4px;
		margin-left: 3px;
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
	div.best_table_info{
		width: 200px;
		padding: 20px 20px;
		
	}
	p.best_onelien{
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
	div.best_table_img{
		width: 165px;
		padding-top : 8px;
	}
	div.best_table_img img{
		width: 165px;
		height: 140px;
	}
	div.best_line{
		width: 440px;
		border-bottom: 1px solid #aaa;
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
		<div class="powerLink temp">
			<p>파워링크 배너 자리</p>
		</div>
		
		<!-- 위치, 테마, 베스트 -->
		<h3 class="mukka_Title">오늘 카페 어디 갈까?</h3>
		<div class="boxs">
			<div class="box">
				<a href="${pageContext.request.contextPath }/user/mukkaCafe/zone/read?cafeNo=${zoneCafe1.cafeNo}">
					<div class="point bgOrange keyword zoneOrangeIcon">${zoneCafe1.zoneNo.zoneName}</div>
					<img src="${pageContext.request.contextPath }/resources/images/sumnail/${zoneImg1.imageName}">
					<div class="cafe_info">
						<h3 class="title">${zoneCafe1.cafeName}</h3>
						<p class="classOne">'${zoneCafe1.oneline}'</p>
					</div>
					<div class="hiddenBox">
					</div>
				</a>
			</div>
			<div class="box">
				<a href="${pageContext.request.contextPath }/user/mukkaCafe/zone/read?cafeNo=${zoneCafe2.cafeNo}">	
					<div class="point bgOrange keyword zoneOrangeIcon">${zoneCafe2.zoneNo.zoneName}</div>
					<img src="${pageContext.request.contextPath }/resources/images/sumnail/${zoneImg2.imageName}">
					<div class="cafe_info">
						<h3 class="title">${zoneCafe2.cafeName}</h3>
						<p class="classOne">'${zoneCafe2.oneline}'</p>
					</div>
					<div class="hiddenBox">
					</div>
				</a>					
			</div>
			<div class="box">
				<a href="${pageContext.request.contextPath }/user/mukkaCafe/zone/read?cafeNo=${zoneCafe3.cafeNo}">	
					<div class="point bgOrange keyword zoneOrangeIcon">${zoneCafe3.zoneNo.zoneName}</div>
					<img src="${pageContext.request.contextPath }/resources/images/sumnail/${zoneImg3.imageName}">
					<div class="cafe_info">
						<h3 class="title">${zoneCafe3.cafeName}</h3>
						<p class="classOne">'${zoneCafe3.oneline}'</p>
					</div>
					<div class="hiddenBox">
					</div>
				</a>					
			</div>
		</div>
		
		
		<!-- 위치별 / 테마별 실시간 -->
		<div class="realTime mb30">
			<div class="box left bestViewBox">
				<h3 class="title bottomLine">
					<span class="bestTitle">BEST</span> <span class="bestSubtitle">|<span class="blue"> 많이 본 인기 카페</span></span>
					 <span class="orange"><span class="pageNum1">1</span> / <span class="pageTotal1">0</span></span>
					 <span class="prevBtn1"><i class="fas fa-angle-left"></i></span>
					 <span class="nextBtn1"><i class="fas fa-angle-right"></i></span>
				</h3>				
				<ul class="bestCafeBox">
					<li class="bestCafe_li">
						<div class="red w30 no bold"><i>1</i></div>
						<div class="best_table_info">
							<p class="best_onelien">" ${zoneCafe1.oneline} "</p>
						</div>
						<div class="best_table_img"><img src="${pageContext.request.contextPath }/resources/images/sumnail/${zoneImg1.imageName}"></div>
						<div class="best_line"></div>
						
						<div class="red w30 no bold"><i>2</i></div>
						<div class="best_table_info">
							<p class="best_onelien">" ${zoneCafe1.oneline} "</p>
						</div>
						<div class="best_table_img"><img src="${pageContext.request.contextPath }/resources/images/sumnail/${zoneImg1.imageName}"></div>
						<div class="best_line"></div>
						
						<div class="red w30 no bold"><i>3</i></div>
						<div class="best_table_info">
							<p class="best_onelien">" ${zoneCafe1.oneline} "</p>
						</div>
						<div class="best_table_img"><img src="${pageContext.request.contextPath }/resources/images/sumnail/${zoneImg1.imageName}"></div>
						<div class="best_line"></div>												
					</li>
					<li class="bestCafe_li">
						<div class="red w30 no bold"><i>4</i></div>
						<div class="best_table_info">
							<p class="best_onelien">" ${zoneCafe1.oneline} "</p>
						</div>
						<div class="best_table_img"><img src="${pageContext.request.contextPath }/resources/images/sumnail/${zoneImg1.imageName}"></div>
						<div class="best_line"></div>
						
						<div class="red w30 no bold"><i>5</i></div>
						<div class="best_table_info">
							<p class="best_onelien">" ${zoneCafe1.oneline} "</p>
						</div>
						<div class="best_table_img"><img src="${pageContext.request.contextPath }/resources/images/sumnail/${zoneImg1.imageName}"></div>
						<div class="best_line"></div>
						
						<div class="red w30 no bold"><i>6</i></div>
						<div class="best_table_info">
							<p class="best_onelien">" ${zoneCafe1.oneline} "</p>
						</div>
						<div class="best_table_img"><img src="${pageContext.request.contextPath }/resources/images/sumnail/${zoneImg1.imageName}"></div>
						<div class="best_line"></div>												
					</li>
					<li class="bestCafe_li">
						<div class="red w30 no bold"><i>7</i></div>
						<div class="best_table_info">
							<p class="best_onelien">" ${zoneCafe1.oneline} "</p>
						</div>
						<div class="best_table_img"><img src="${pageContext.request.contextPath }/resources/images/sumnail/${zoneImg1.imageName}"></div>
						<div class="best_line"></div>
						
						<div class="red w30 no bold"><i>8</i></div>
						<div class="best_table_info">
							<p class="best_onelien">" ${zoneCafe1.oneline} "</p>
						</div>
						<div class="best_table_img"><img src="${pageContext.request.contextPath }/resources/images/sumnail/${zoneImg1.imageName}"></div>
						<div class="best_line"></div>
						
						<div class="red w30 no bold"><i>9</i></div>
						<div class="best_table_info">
							<p class="best_onelien">" ${zoneCafe1.oneline} "</p>
						</div>
						<div class="best_table_img"><img src="${pageContext.request.contextPath }/resources/images/sumnail/${zoneImg1.imageName}"></div>
						<div class="best_line"></div>												
					</li>
					<li class="bestCafe_li">
						<div class="red w30 no bold"><i>10</i></div>
						<div class="best_table_info">
							<p class="best_onelien">" ${zoneCafe1.oneline} "</p>
						</div>
						<div class="best_table_img"><img src="${pageContext.request.contextPath }/resources/images/sumnail/${zoneImg1.imageName}"></div>
						<div class="best_line"></div>
						
						<div class="red w30 no bold"><i>11</i></div>
						<div class="best_table_info">
							<p class="best_onelien">" ${zoneCafe1.oneline} "</p>
						</div>
						<div class="best_table_img"><img src="${pageContext.request.contextPath }/resources/images/sumnail/${zoneImg1.imageName}"></div>
						<div class="best_line"></div>
						
						<div class="red w30 no bold"><i>12</i></div>
						<div class="best_table_info">
							<p class="best_onelien">" ${zoneCafe1.oneline} "</p>
						</div>
						<div class="best_table_img"><img src="${pageContext.request.contextPath }/resources/images/sumnail/${zoneImg1.imageName}"></div>
						<div class="best_line"></div>												
					</li>
					<li class="bestCafe_li">
						<div class="red w30 no bold"><i>13</i></div>
						<div class="best_table_info">
							<p class="best_onelien">" ${zoneCafe1.oneline} "</p>
						</div>
						<div class="best_table_img"><img src="${pageContext.request.contextPath }/resources/images/sumnail/${zoneImg1.imageName}"></div>
						<div class="best_line"></div>
						
						<div class="red w30 no bold"><i>14</i></div>
						<div class="best_table_info">
							<p class="best_onelien">" ${zoneCafe1.oneline} "</p>
						</div>
						<div class="best_table_img"><img src="${pageContext.request.contextPath }/resources/images/sumnail/${zoneImg1.imageName}"></div>
						<div class="best_line"></div>
						
						<div class="red w30 no bold"><i>15</i></div>
						<div class="best_table_info">
							<p class="best_onelien">" ${zoneCafe1.oneline} "</p>
						</div>
						<div class="best_table_img"><img src="${pageContext.request.contextPath }/resources/images/sumnail/${zoneImg1.imageName}"></div>
						<div class="best_line"></div>												
					</li>																																															
				</ul>
			</div>
			<div class="box right">
				<h3 class="title bottomLine"><span class="bestTitle">BEST</span> <span> |<span class="red"> 종합 별점 랭킹 5</span></span></h3>
			</div>
		</div>
		
		<!-- 서브콘텐츠 끝 -->
		
	</div>
</div>
	

<%-- 지우면 안됨 subMenu.jsp에 container 시작 태그 있음 --%>
</div>
<!-- container end -->

<%@ include file="../userInclude/footer.jsp" %>