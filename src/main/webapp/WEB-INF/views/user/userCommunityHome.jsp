<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../userInclude/header.jsp" %>
<%@ include file="../userInclude/subMenu.jsp" %>
<style>
	/* 파워링크 */
	.powerLink {
		height: 94px;
		margin-bottom: 10px;
		background: url("${pageContext.request.contextPath }/resources/images/add_sample02.JPG") no-repeat;
		background-size: cover;
		position: relative;
		z-index: 1;
	}
	.powerLink_dummy{
		width: 100%;
		height: 94px;
		background-color: rgba(189, 189, 189, 0.1);
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
	h3.communityTitle{
		color: black;
	}
	.bestTitle{
		background-color: #FF007F;
		border-radius: 5px;
		padding: 1px 8px;
		letter-spacing: 2px;
		color: white;
		margin-left: 5px;
		margin-right: 10px;
	}	
	.contentArea .cafeReviewBest {
		overflow: hidden;
	}

	.contentArea .cafeReviewBest .best1 {
		float: left;
		width: 45%;	
		border: 1px solid #545454;
		position: relative;
	}
	
	.contentArea .cafeReviewBest .best1 > div:first-child{
		position: absolute;
		top: 0;
		left: 0;
		padding: 5px 20px;
		background-color: #FF2424;
		color: white;
		letter-spacing: 2px;
		font-weight: bold;
		font-size: 20px;
		z-index: 2;
	}
	
	.contentArea .cafeReviewBest .best1 .img {
		height: 331px;
		text-align: center;
	}
	
	div.review_dummy{
		width: 100%;
		height: 331px;
		background-color: rgba(0,0,0, 0.2);
		position: absolute;
		left: 0;
		top:0;
		z-index: 1;
	}
	.contentArea .cafeReviewBest .best1 .img img#review_best_img{
		width: 100%;
		height: 331px;
	}	
    img#review_best_icon{
    	width: 150px;
    	height: 150px;
    	position: absolute;
    	right: 0;
    	top:170px;
    	z-index: 2;
    }	
	.contentArea .cafeReviewBest .best1 .bestInfo {
		padding: 10px;
		width: 100%;
		box-sizing: border-box;
	}
	
	.contentArea .cafeReviewBest .best1 h2,
	.contentArea .cafeReviewBest .bests h3 {
		height: 56px;
		color: #FF2424;
	}
	.contentArea .cafeReviewBest .best1 h2:hover{
		text-decoration: underline;
		cursor: pointer;
	}
	.contentArea .cafeReviewBest .bests h3:hover {
		text-decoration: underline;
		cursor: pointer;
	}	
	
	.contentArea .cafeReviewBest .best1 p.text {
		height: 40px;
		font-weight: bold;
		font-size: 18px;
		letter-spacing: 2px;
	}
	
	.contentArea .cafeReviewBest .user {
		overflow: hidden;
		line-height: 40px;
	}
	
	.contentArea .cafeReviewBest .user .icon {
		float: left;
		border-radius: 40px;
		width: 30px;
		height: 30px;
		text-align: center;
		margin-right: 10px;
	}
	.contentArea .cafeReviewBest .user .icon img{
		width: 30px;
		height: 30px;
		vertical-align: middle;
	}	
	.contentArea .cafeReviewBest .user .userId {
		float: left;
		font-weight: bold;
		font-size: 14px;
	}
	
	.contentArea .cafeReviewBest .boxs {
		float: right;
		width: 53%;
	}
	
	.contentArea .cafeReviewBest .bests {
		border-top: 1px solid #545454;
		border-bottom: 1px solid #545454;
		margin-bottom: 23.5px;
		overflow: hidden;
	}
	.contentArea .cafeReviewBest .bests:last-child{
		margin-bottom: none;
	}
	
	.contentArea .cafeReviewBest .bests .img {
		float: left;
		width: 45%;
		height: 145px;
		position: relative;
	}
	.contentArea .cafeReviewBest .bests .img img{
		width: 100%;
		height: 145px;
	}
	div.RV_rankNo{
		position: absolute;
		left: 0;
		top: 0;
		width: 35px;
		height: 33px;
		text-align: center;
		color: white;
		font-weight: bold;
		background-color: #FF2424;
		font-size: 20px;	
	}	
	.contentArea .cafeReviewBest .bests .bestsInfo {
		float: right;
		width: 53%;
	}
	.contentArea .cafeReviewBest .bests .bestsInfo p.text{
		height: 48px;
		font-weight: bold;
		font-size: 18px;
		letter-spacing: 2px;
	}
	

	/* 추천카페 베스트 */
	.recommendBest .recomWrap ul{
		overflow: hidden;
	}
	
	.recommendBest .recomWrap li {
		float: left;
		width: 164px;
		height: 160px;
		margin: 10px;
		overflow: hidden;
		position: relative;
	}
	.recommendBest .recomWrap li img{
		width: 164px;
		height: 160px;
		transition:all 1s;
		transform-origin:left-top;		
	}
	.recommendBest .recomWrap li img:hover {
		transform:scale(1.2);
	}
	
	div.RC_rankNo{
		position: absolute;
		left: 0;
		top: 0;
		width: 30px;
		height: 26px;
		text-align: center;
		color: white;
		font-weight: bold;
		background-color: #ED7D31;
	}
	
	div.userWriteAdd{
		width: 100%;
		height: 300px;
		background: url("${pageContext.request.contextPath }/resources/images/add_sample03.jpg") no-repeat;
		background-size: cover;
		margin: 50px 0 50px 0;
		position: relative;
		z-index: 0;
	}
	ul.writeGoWrap{
		width: 100%;
		height: 300px;
		position: absolute;
		left: 0;
		top: 0;
		z-index: 1;
	}
	ul.writeGoWrap li{
		padding: 0 80px 0 80px;
		color: rgba(246, 246, 246, 0.9);
	}
	ul.writeGoWrap li:first-child{
		height: 150px;
		background-color: rgba(189, 189, 189, 0.5);
		text-align: right;
		transition:2s all ease;
	}
	ul.writeGoWrap li:last-child{
		height: 150px;
		background-color: rgba(189, 189, 189, 0.5);
		text-align: left;
		transition:2s all ease;
	}
	ul.writeGoWrap li p{
		font-size: 20px;
		padding-top: 32px;
		letter-spacing: 4px;
	}
	ul.writeGoWrap li h1{
		font-size: 45px;		
		letter-spacing: 5px;
	}	
	ul.writeGoWrap li:hover{
		background-color: rgba(76, 76, 76, 0.9);
		color: white;
		cursor: pointer;
	}
    ul.writeGoWrap li:first-child:hover span.viewpoint-first{
    	opacity: 1;
    	left: 150px;
    }
     ul.writeGoWrap li:last-child:hover span.viewpoint-second{
    	opacity: 1;
    	right: 150px;
    }  	
	span.viewpoint-first{
		position: absolute;
		left: 200px;
		top: 90px;
		color: white;
		font-weight: bold;
		opacity: 0;
		transition:1s all ease;
	}
	span.viewpoint-second{
		position: absolute;
		right: 200px;
		bottom: 30px;
		color: white;
		font-weight: bold;
		opacity: 0;
		transition:1s all ease;
	}
	img#viewpoint_right{ /* 이미지 좌우 봔전 */
		transform:rotate(0deg);
   		-moz-transform: scaleX(-1); 
     	-o-transform: scaleX(-1); 
		-webkit-transform: scaleX(-1); 
        transform: scaleX(-1); 
	}
	
	/* 열혈무까인 */
	div.bestWriter{
		width: 100%;
		height: 600px;
	}
	.bestUserGrade{
		width: 35px;
		height: 35px;
		vertical-align: middle;
		padding-right: 5px;
	}
	ul.bestUserInfo{
		width: 40%;
		float: left;
	}
	ul.bestUserInfo li{
		height: 35px;
		padding: 45px 0 45px 20px;
		margin: 10px 0 60px 0;
	}

	ul.bestUserBoardInfo{
		width: 60%;
		float: right;
	}
	ul.bestUserBoardInfo li{
		width: 150px;
		float:left;
		padding: 15px;
		margin-bottom: 20px;
	}	
	img.bestUserBoardImg{
		width: 145px;
		height: 100px;
		border-radius: 10px;
	}
	ul.bestUserBoardInfo li:hover{
		background: #eee;
		border-radius: 10px;
	}
	div.bestWriteTitle{
		width: 100%;
		height: 30px;
	}
	.realBlue{
		color: blue;
	}
	
	/*랜덤*/
	.recommendRand{
		width: 100%;
		height: 290px;
		border-bottom: 2px solid #545454;
		margin-bottom: 50px;
	}
	.recommendRand .recommendZoneOrangeIcon{
		background: url("${pageContext.request.contextPath }/resources/images/point_w.png") no-repeat;
		background-size: 25px;
		background-position: 5px center;
		background-color: #ED7D31;
		padding: 4px 10px;
		padding-left: 35px;
		color: #fff;
		font-weight: 700;
		float: left;
		border-radius: 5px;
	}
	.keyword_box{
		color: white;
		letter-spacing: 3px;
		border-radius: 6px;
		padding: 0 8px;
		font-size: 24px;
		margin: 0 15px;
	}
	ul.recommendRandWrap{
		width: 100%;
	}
	ul.recommendRandWrap li{
		float: left;
		margin: 0 7px;
	}
	ul.recommendRandWrap li:first-child{
		width: 25%;
		height: 200px;
	}
	.readImgBox img{
		width: 100%;
		height: 200px;
	}
	ul.recommendRandWrap li:nth-child(2){
		width: 30%;
		height: 200px;
	}
	h2#RC_cafeName{
		padding: 10px 0 15px 0;
	}
	ul.recommendRandWrap li:last-child{
		width: 40%;
		height: 200px;
	}
	.rcRandGrade{
		width: 25px;
		height: 25px;
		vertical-align: middle;
	}
	span.mapTitle{
		background-color: #303A50;
		color: white;
		font-weight: bold;
		padding-left: 5px;
		padding-right: 5px;
		border-radius: 3px;
		letter-spacing: 2px;
	}
	p.ranCnt{
	  margin: 10px;		
	}
	div.clickBtn{
		width: 100%;
		height: 50px;
		text-align: center;
		letter-spacing: 5px;
		border: 1px solid #545454;
		margin-top: 20px;
		line-height: 50px;
	}
	div.clickBtn:hover{
		background: #ED7D31;
		border: none;
		font-weight: bold;
	}
	div.clickBtn:hover .orange{
		color: white;
	}
	div.clickBtn:hover .viewMoreText{
		color: white;
	}	
	#map{
		width: 368px;
		height: 165px;
		margin-top: 11px;
		border-radius: 11px;
		border: 2px solid #303A50;
	}			
</style>
<div class="content subPageContent">
	<!-- 서브페이지 콘텐츠 -->
	<div class="contentArea">
		<!-- 서브페이지 공통적인 타이틀 -->
		<h2 class="subPageTitle">
			<span class="title">MuKKa의 전당</span>
			<span class="subTit grayB"> | 두둥! 당신이 바로 주인공입니다!</span>
		</h2>
		
		<!-- 파워링크 배너(슬라이드처리) -->
		<div class="powerLink">
			<div class="powerLink_dummy">
				<p class="dummy_text"><i>The best way to start the day is with a nice warm cup of joe.</i></p>
				<h1 class="dummy_title">Commuity</h1>
			</div>
		</div>	
			
		<!-- 카페탐방기 베스트 -->
		<div class="cafeReviewBest mb30">
			<h3 class="bottomLine communityTitle">생생 카페 탐방기 <span class="fs16"> <span class="bestTitle">BEST</span>| <span class="red">많이 사랑받은 탐방기 ♥</span></span></h3>
			<c:forEach var="rvBestlist" items="${rvBestlist}" begin="0" end="0" varStatus="status"> 
				<div class="best1">
					<div class="RV_bestPoint">BEST</div>
					<div class="img temp">
						<!-- 이미지 이름 꺼내서 삽입하기 -->
						<c:forEach var="rvBestlistImg" items="${rvBestlistImg}">
							<c:if test="${rvBestlistImg.boardNo.boardNo == rvBestlist.boardNo }">
								<img src="${pageContext.request.contextPath }/user/displayFile?filename=${rvBestlistImg.imageName}" id="review_best_img" class="thumbNailImg" alt="카페대표이미지"
									onerror="this.src='${pageContext.request.contextPath}/resources/images/rc_noImg.png'">
							</c:if>
						</c:forEach>
						<div class="review_dummy"></div>
						<img src = "${pageContext.request.contextPath }/resources/images/review_best_icon2.png" id="review_best_icon">						
					</div>
					<div class="bestInfo">
						<a href="${pageContext.request.contextPath }/user/community/cafeReview/read?boardNo=${rvBestlist.boardNo}">
							<h2 class="title classSec">${rvBestlist.writingTitle}</h2>
						</a>
						<p class="text classSec"><span class="zoneIcon zoneOrangeIconSmall bold">${rvBestlist.zoneNo.zoneName}</span> <i class="fas fa-coffee"></i> ${rvBestlist.cafeNo.cafeName}</p>
						<div class="user">
							<div class="icon"><img src="${pageContext.request.contextPath}/resources/images/${rvBestlist.userNo.userGrade.userGradeImage}" alt="등급아이콘"></div>
							<p class="userId">${rvBestlist.userNo.nick }(${rvBestlist.userNo.userId })</p>
						</div>
					</div>
				</div>
			</c:forEach>
			<div class="boxs">
			<c:forEach var="rvBestlist" items="${rvBestlist}" begin="1" end="3" varStatus="status">	
				<div class="bests">
					<div class="img temp">
						<!-- 이미지 이름 꺼내서 삽입하기 -->
						<c:forEach var="rvBestlistImg" items="${rvBestlistImg}">
							<c:if test="${rvBestlistImg.boardNo.boardNo == rvBestlist.boardNo }">
								<img src="${pageContext.request.contextPath }/user/displayFile?filename=${rvBestlistImg.imageName}" class="thumbNailImg" alt="카페대표이미지"
									onerror="this.src='${pageContext.request.contextPath}/resources/images/rc_noImg.png'">
							</c:if>
						</c:forEach>
						<div class="RV_rankNo"></div>				
					</div>
					<div class="bestsInfo">
						<a href="${pageContext.request.contextPath }/user/community/cafeReview/read?boardNo=${rvBestlist.boardNo}">
							<h3 class="title classSec">${rvBestlist.writingTitle}</h3>
						</a>
						<p class="text classSec"><i class="fas fa-coffee"></i> ${rvBestlist.cafeNo.cafeName}</p>
						<div class="user">
							<div class="icon"><img src="${pageContext.request.contextPath}/resources/images/${rvBestlist.userNo.userGrade.userGradeImage}" alt="등급아이콘"></div>
							<p class="userId">${rvBestlist.userNo.nick }(${rvBestlist.userNo.userId })</p>
						</div>
					</div>
				</div>
			</c:forEach>
			</div>
		</div>
		<div class="userWriteAdd">
			<ul class="writeGoWrap">
				<li id="goReview">
						<p><i>들려주세요, 당신이 느낌 감성 그대로</i></p>
						<h1><i>생생 카페 탐방기</i></h1>
						<span class="viewpoint-first"><i>Let's Go!</i>　<img src="${pageContext.request.contextPath }/resources/images/viewpoint.png" id="viewpoint_right"></span>
				</li>
				<li id="goRecommend">
						<p><i>나 혼자만 알기 아까운 바로 그 카페</i></p>
						<h1><i>MuKKa人 추천 카페</i></h1>
						<span class="viewpoint-second"><img src="${pageContext.request.contextPath }/resources/images/viewpoint.png">　<i>Let's Go!</i></span>
				</li>
			</ul>					
		</div>		
	
		<!-- 추천 카페 베스트 -->
		<div class="recommendBest mb30">
			<h3 class="bottomLine  communityTitle">MuKKa人 추천 카페 <span class="fs16"> <span class="bestTitle">BEST</span>| <span class="red">많이 사랑받은 추천 카페 ♥</span></span></h3>
			<div class="recomWrap">
				<ul>
					<c:forEach var="rcBestlist" items="${rcBestlist}">
					<li class="temp">
						<a href="${pageContext.request.contextPath}/user/community/cafeRecommend/read?boardNo=${rcBestlist.boardNo}">
							<!-- 이미지 이름 꺼내서 삽입하기 -->
							<c:forEach var="rcBestlistImg" items="${rcBestlistImg}">
								<c:if test="${rcBestlistImg.boardNo.boardNo == rcBestlist.boardNo }">
									<img src="${pageContext.request.contextPath }/user/displayFile?filename=${rcBestlistImg.imageName}" class="thumbNailImg" alt="카페대표이미지"
										onerror="this.src='${pageContext.request.contextPath}/resources/images/rc_noImg.png'">
								</c:if>
							</c:forEach>
							<div class="RC_rankNo"></div>							
						</a>
					</li>
					</c:forEach>
				</ul>
			</div>
		</div>
		<div class="recommendRand mb30">
			<h3 class="bottomLine  communityTitle">
				<span class="recommendZoneOrangeIcon">${ranRecommend1.zoneNo.zoneName}</span> <span class="keyword_box">#${ranRecommend1.themeNo.themeName}</span> 추 천 카 페  </h3>
			<ul class="recommendRandWrap">
				<li>
					<c:forEach var="file" items="${ranRecommend1.files}" begin="0" end="0" varStatus="status">	
						<input type="hidden" class="readImgName" value="${file.imageName}">
					</c:forEach>								
					<div class="readImgBox">
					</div>
				</li>
				<li>
					<h2 id="RC_cafeName">${ranRecommend1.writingTitle}</h2>
					<img src="${pageContext.request.contextPath }/resources/images/${ranRecommend1.userNo.userGrade.userGradeImage}" alt="등급아이콘" class="rcRandGrade">
					<span class="bold">${ranRecommend1.userNo.nick }(${ranRecommend1.userNo.userId })</span>
					<p class="ranCnt bold">
					조회 <span class="red"><fmt:formatNumber type="number" maxFractionDigits="3" value="${ranRecommend1.viewNumber}"/></span>
					추천 <span class="red"><fmt:formatNumber type="number" maxFractionDigits="3" value="${ranRecommend1.voteNumber}"/></span>
					댓글 <span class="red"><fmt:formatNumber type="number" maxFractionDigits="3" value="${ranRecommend1.replyCnt}"/></span>
					</p>
					<div class="clickBtn">
						<a href="${pageContext.request.contextPath}/user/community/cafeRecommend/read?boardNo=${ranRecommend1.boardNo}">
						 <span class="viewMoreText">추천카페 자세히 보기</span> <span class="orange bold">></span>
						</a>
					</div>
				</li>
				<li>
					<span class="mapTitle">지도</span> | <span id="RC_address">${ranRecommend1.address}</span>
					<div id="map"></div>
				</li>
			</ul>
		</div>
		
		<div class="recommendRand mb30">
			<h3 class="bottomLine  communityTitle">
				<span class="recommendZoneOrangeIcon">${ranRecommend2.zoneNo.zoneName}</span> <span class="keyword_box">#${ranRecommend2.themeNo.themeName}</span> 추 천 카 페  </h3>
			<ul class="recommendRandWrap">
				<li>
					<c:forEach var="file" items="${ranRecommend2.files}" begin="0" end="0" varStatus="status">	
						<input type="hidden" class="readImgName" value="${file.imageName}">
					</c:forEach>								
					<div class="readImgBox">
					</div>
				</li>
				<li>
					<h2 id="RC_cafeName">${ranRecommend2.writingTitle}</h2>
					<img src="${pageContext.request.contextPath }/resources/images/${ranRecommend2.userNo.userGrade.userGradeImage}" alt="등급아이콘" class="rcRandGrade">
					<span class="bold">${ranRecommend2.userNo.nick }(${ranRecommend2.userNo.userId })</span>
					<p class="ranCnt bold">
					조회 <span class="red"><fmt:formatNumber type="number" maxFractionDigits="3" value="${ranRecommend2.viewNumber}"/></span>
					추천 <span class="red"><fmt:formatNumber type="number" maxFractionDigits="3" value="${ranRecommend2.voteNumber}"/></span>
					댓글 <span class="red"><fmt:formatNumber type="number" maxFractionDigits="3" value="${ranRecommend2.replyCnt}"/></span>
					</p>
					<div class="clickBtn">
						<a href="${pageContext.request.contextPath}/user/community/cafeRecommend/read?boardNo=${ranRecommend2.boardNo}">
						 <span class="viewMoreText">추천카페 자세히 보기</span> <span class="orange bold">></span>
						</a>
					</div>
				</li>
				<li>
					<span class="mapTitle">지도</span> | <span id="RC_address">${ranRecommend2.address}</span>
					<div id="map"></div>
				</li>
			</ul>
		</div>							
		<div class="bestWriter mb30">
			<h3 class="bottomLine  communityTitle">열혈 MuKKa人 3인방 <span class="fs16"> | <span class="blue">열혈작가들의 최신글 만나보기</span></span></h3>
			<ul class="bestUserInfo">
				<c:forEach var="bestUserAll" items="${bestUserAll}" begin="0" end="2" varStatus="status">	
					<li>
						<img src="${pageContext.request.contextPath}/resources/images/${bestUserAll.userNo.userGrade.userGradeImage}" class="bestUserGrade"> 
						<span class="bold"><span class="realBlue">${bestUserAll.userNo.nick}</span>(${bestUserAll.userNo.userId})</span>
					</li>
				</c:forEach>
			</ul>
			<ul class="bestUserBoardInfo">
				<c:forEach var="bestUserBoardInfo" items="${bestUserBoardInfo}">
					<li>
					<c:if test="${bestUserBoardInfo.boardNo2.boardNo == 1}">
						<a href="${pageContext.request.contextPath}/user/community/cafeReview/read?boardNo=${bestUserBoardInfo.boardNo}">
							<c:forEach var="bestUserBoardImg" items="${bestUserBoardImg}">			
									<c:if test="${bestUserBoardImg.boardNo.boardNo == bestUserBoardInfo.boardNo }">
										<img src="${pageContext.request.contextPath }/user/displayFile?filename=${bestUserBoardImg.imageName}" class="thumbNailImg bestUserBoardImg" alt="카페대표이미지"
											onerror="this.src='${pageContext.request.contextPath}/resources/images/rc_noImg.png'"><br>
											<div class="bold classOne bestWriteTitle">
												<c:if test="${bestUserBoardInfo.boardNo2.boardNo == 1}">
													<span class="blue">[탐방기]</span>
												</c:if>
											${bestUserBoardInfo.writingTitle}</div>
									</c:if>
							</c:forEach>
						</a>					
					</c:if>
					<c:if test="${bestUserBoardInfo.boardNo2.boardNo == 2}">
						<a href="${pageContext.request.contextPath}/user/community/cafeRecommend/read?boardNo=${bestUserBoardInfo.boardNo}">
							<c:forEach var="bestUserBoardImg" items="${bestUserBoardImg}">			
									<c:if test="${bestUserBoardImg.boardNo.boardNo == bestUserBoardInfo.boardNo }">
										<img src="${pageContext.request.contextPath }/user/displayFile?filename=${bestUserBoardImg.imageName}" class="thumbNailImg bestUserBoardImg" alt="카페대표이미지"
											onerror="this.src='${pageContext.request.contextPath}/resources/images/rc_noImg.png'"><br>
											<div class="bold classOne bestWriteTitle">
											<span class="red">[추천카페]</span>
											${bestUserBoardInfo.writingTitle}</div>
									</c:if>
							</c:forEach>
						</a>					
					</c:if>												

					</li>
				</c:forEach>
			</ul>
		</div>				
	</div>
</div>
	

<%-- 지우면 안됨 subMenu.jsp에 container 시작 태그 있음 --%>
</div>
<!-- container end -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=82c67a5c009ecc3de6e3c10d398c0061&libraries=services"></script>
<script>
	$("p.dummy_text").animate({"padding-right":"40px","opacity":"1"},1800);
	$("h1.dummy_title").animate({"margin-right":"50px","opacity":"1"},1800);
	
	//추천카페 - 원본파일 불러오기(선명한 파일)
	$(".thumbNailImg").each(function(i, obj) {
		var file = $(this).attr("src");
		var start = file.substring(0,51);
		var end = file.substring(53);
		var fileName = start + end;
		$(this).attr("src", fileName);
		console.log(fileName);
	})
	
	for(var i =0;i<3;i++){
		$(".RV_rankNo").eq(i).text(i+2);
	}
	
	for(var i =0;i<20;i++){
		$(".RC_rankNo").eq(i).text(i+1);
	}
	
	
	$("li#goReview").click(function() {		
		var auth = "${Auth}";
		if(auth == "") {
			location.href = "${pageContext.request.contextPath }/user/community/cafeReview";
			return false;
		}else{
			location.href = "${pageContext.request.contextPath }/user/community/cafeReview/register";
		}
		
		
	})
	
	
	$("li#goRecommend").click(function() {		
		var auth = "${Auth}";
		if(auth == "") {
			location.href = "${pageContext.request.contextPath }/user/community/cafeRecommend";
			return false;
		}else{
			location.href = "${pageContext.request.contextPath }/user/community/cafeRecommend/register";
		}	
	})
	
	
	$(".keyword_box").each(function(i, obj){
		var name = $(this).text();
		console.log(name);
		var keywordK = ["#데이트", "#뷰", "#착한아메", "#디저트", "#댕댕이", "#작업"];
		var keyword = ["date", "view", "ame", "dessert", "dog", "work"];
		
		for(var i=0; i<keyword.length; i++){
			if(name.indexOf(keywordK[i]) > -1) {
				$(this).addClass(keyword[i]);
			}
		}
		
	})
	
	var readfileName = $(".readImgName").val();
	var start = readfileName.substring(0,12);
	var end = readfileName.substring(14);
	var fileName = start + end;
	
	$("div.readImgBox").append("<img src = '${pageContext.request.contextPath }/user/displayFile?filename="+fileName+"'>");
	
	
	
	// -- 지도(주소) -- //
	
	// 주소, 카페이름 빼오기
	var address = $("#RC_address").text();
	//console.log("주소"+address);
	var cafeName = $("#RC_cafeName").text();
	if(address == ""){ //정확한 주소를 알 수 없을때
		$("#RC_address").removeClass("blue").addClass("red");
		$("#RC_address").text("정확한 주소를 확인할 수 없습니다.");
		$("div#addMap").hide(); // 지도 Title remove
		$("div#map").hide(); // 지도 remove
	}
	//console.log("카페이름"+cafeName);
	// 주소-좌표 변환 객체를 생성합니다
	var geocoder = new kakao.maps.services.Geocoder();
	
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		mapOption = {
			center : new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
			level : 1 // 지도의 확대 레벨
		};

	// 지도를 생성합니다    
	var map = new kakao.maps.Map(mapContainer, mapOption);

	// 주소로 좌표를 검색합니다 -- address
	geocoder.addressSearch(address, function(result, status) {
		// 정상적으로 검색이 완료됐으면 
		if (status === kakao.maps.services.Status.OK) {
			var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
			// 결과값으로 받은 위치를 마커로 표시합니다
			var marker = new kakao.maps.Marker({
				map : map,
				position : coords
			});
			// 인포윈도우로 장소에 대한 설명을 표시합니다
			var infowindow = new kakao.maps.InfoWindow({                              //cafeName
				content : '<div style="width:150px;text-align:center;padding:6px 0;">'+cafeName+'</div>'
			});
			infowindow.open(map, marker);
			// 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
			map.setCenter(coords);
		}
	});	
</script>
<%@ include file="../userInclude/footer.jsp" %>