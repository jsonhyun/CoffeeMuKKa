<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../userInclude/header.jsp" %>
<%@ include file="../userInclude/subMenu.jsp" %>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/jquery-ui.css"> 
<script src="${pageContext.request.contextPath }/resources/js/jquery-ui.min.js"></script>
<style>
	span#bestMark{
		color: white;
		background: #FF007F;
		border-radius: 5px;
		padding: 0 8px;
		font-weight: bold;
		letter-spacing: 2px;
	}
	span.tab-info{
		color: navy;
		margin-left: 20px;
	}
	li,a:focus{
		outline: none;
	}
	div#tabWrap{ /* 탭전체 */
		width: 100%;
		/* background-color: red; */
	}
	div#tabs{ /* 탭 */
		width: 100%;
		/* background-color: green; */
	}
	ul#tabs-ul{ /* 탭 제목-ul */
		width: 100%;
	}
	 li.tabs-li{ /* 탭 제목-li */
	 	width: 24%;
	 }
	 a#tabName1{
	 	margin-left: 25px;
	 }
	 a.tabName2{
	 	margin-left: 65px;
	 } 
	 
	 /* 리스트 스타일 */
	 ol{
	 	width: 100%;
	 }
	 ol li.rank_wrap{
	 	width: 100%;
	 	height: 155px;
	 	margin: 15px 0;
	 	border-bottom: 1px solid #BDBDBD;
	 	
	 }
	 ol li.rank_wrap div{
	 	 float: left;
	 }
	 div.rank_num1,div.rank_num2,div.rank_num3,div.rank_num4{
	 	width: 40px;
	 	height: 155px;
	 	font-size: 25px;
	 	color: #FF7171;
	 	clear: both;
	 	padding-top: 6px;
	 }
 	div.rank_img{
 		width: 14%;
 		padding: 14px;
 	}
  	div.rank_img img{
  		width: 100%;
  		height: 120px;
  	}
	div.rank_info{
		width: 77%;
		height: 120px;
		padding: 14px 0px;
	}
	div.rank_keyword{
		width: 100%;
		height: 27px;
	}
	div.rank_keyword span.zoneBtn,div.rank_keyword span.themeKeySmall{
		font-size: 14px;
		margin-right: 5px;
		float: left;
	}
	div.rank_keyword span.rDate{
		float: right;
		font-size: 14px;
	}
	div.rank_title{
		width: 100%;
		height: 40px;
		padding: 4px 0;
	}
	div.rank_title span.rTitle{
		font-size: 25px;
		font-weight: bold;
		color: black;
		float: left;
		padding-left: 3px;
	}
	div.rank_title span.rGrade img{
		width: 20px;
		height: 20px;
		margin-top: 9px;
		padding-right: 10px;
		float: right;
	}
	div.rank_title span.rNick{
		font-weight: bold;
		color: black;
		font-size: 14px;
		float: right;
		margin-top: 9px;
	}	
 	div.rank_viewAll{
		width: 100%;
		height: 20px;
		font-size : 13px;
	}
	div.rank_viewAll span.rView,span.rThumb,span.rReply{
		padding-right: 10px;
	}

	div.rank_text{
		width: 100%;
		padding: 5px 0;
		font-size: 14px;
		color: navy;
	}	
</style>
	
<div class="content subPageContent">
	<!-- 서브페이지 콘텐츠 -->
	<div class="contentArea">
		<!-- 서브페이지 공통적인 타이틀 -->
		<h2 class="subPageTitle">
			<span class="title">MuKKa人 추천 카페</span>
			<span class="subTit grayB"> | <span id="bestMark">BEST</span><span class="tab-info">추천카페 <span class="red"><b><u>종합</u></b></span> <b>베스트 10</b>을 소개해 드립니다</span></span>
		</h2>

			<!-- 베스트 리스트  -->
			<div id="tabWrap">
				<div id="tabs">
					<ul id="tabs-ul">
						<li class="tabs-li"><a href="#tabs-1" id="tabName1">MuKKa人의 선택</a></li> <!-- 고민 -->
						<li class="tabs-li"><a href="#tabs-2" class="tabName2">추천순</a></li> <!-- 추천순 -->
						<li class="tabs-li"><a href="#tabs-3" class="tabName2">조회순</a></li> <!-- 조회순 -->
						<li class="tabs-li"><a href="#tabs-4" class="tabName2">댓글순</a></li> <!-- 댓글순 -->
					</ul>
					
					<!-- 탭1 : 전체 추천수 -->
					<div id="tabs-1">
							<ol>
								<c:forEach var="voteAll" items="${voteAll}" begin="0" end="9" varStatus="status"> 
									<li class="rank_wrap">
										<a href="${pageContext.request.contextPath }/user/community/cafeRecommend/read?boardNo=${voteAll.boardNo}">
											<div class="rank_num1"></div>
											<div class="rank_img">
					                			<!-- 이미지 이름 꺼내서 삽입하기 -->		
												<c:forEach var="voteAllImg" items="${voteAllImg}">
													 <c:if test="${voteAllImg.boardNo.boardNo == voteAll.boardNo }">
														<img src = "${pageContext.request.contextPath }/user/displayFile?filename=${voteAllImg.imageName}" class="thumbNailImg"  alt="카페대표이미지" onerror="this.src='${pageContext.request.contextPath}/resources/images/rc_noImg.png'">										
													</c:if>
												</c:forEach>
											</div>
											<div class="rank_info">
												<div class="rank_keyword">
													<span class="zoneBtn zoneOrangeIconSmall keyword">${voteAll.zoneNo.zoneName}</span> 
													<c:choose>
														<c:when test="${voteAll.themeNo.themeNo == 1}">
															<span class="date keyword themeKeySmall">#${voteAll.themeNo.themeName}</span> 
														</c:when>
														<c:when test="${voteAll.themeNo.themeNo == 2}">
															<span class="view keyword themeKeySmall">#${voteAll.themeNo.themeName}</span> 
														</c:when>
														<c:when test="${voteAll.themeNo.themeNo == 3}">
															<span class="ame keyword themeKeySmall">#${voteAll.themeNo.themeName}</span> 
														</c:when>
														<c:when test="${voteAll.themeNo.themeNo == 4}">
															<span class="dessert keyword themeKeySmall">#${voteAll.themeNo.themeName}</span> 
														</c:when>
														<c:when test="${voteAll.themeNo.themeNo == 5}">
															<span class="dog keyword themeKeySmall">#${voteAll.themeNo.themeName}</span> 
														</c:when>
														<c:otherwise>
															<span class="work keyword themeKeySmall">#${voteAll.themeNo.themeName}</span> 
														</c:otherwise>
													</c:choose>											
													<span class="rDate"><fmt:formatDate value="${voteAll.registrationDate }" pattern="yyyy-MM-dd" /></span>
												</div>
												<div class="rank_title">
													<span class="rTitle">${voteAll.writingTitle}</span> 
													<span class="rNick">${voteAll.userNo.nick }(${voteAll.userNo.userId })</span>
													<span class="rGrade"><img src="${pageContext.request.contextPath}/resources/images/${voteAll.userNo.userGrade.userGradeImage}" alt="등급아이콘"></span>
												</div>
												<div class="rank_viewAll">
													<span class="rView">조회 <span class="red">${voteAll.viewNumber}</span></span> <span
														class="rThumb">추천 <span class="red"><b>${voteAll.voteNumber}</b></span></span> <span
														class="rReply">댓글 <span class="red">${voteAll.replyCnt}</span></span>
												</div>
												<div class="rank_text">
													<p class="classOne">${voteAll.writingContent}</p>
												</div>
											</div>
										</a>
									</li>
								</c:forEach>																																
							</ol>
						</div>
					<!-- 탭2 : 당월 추천수 -->
					<div id="tabs-2">
							<ol>
								<c:forEach var="voteList" items="${voteList}">
									<li class="rank_wrap">
										<a href="${pageContext.request.contextPath }/user/community/cafeRecommend/read?boardNo=${voteList.boardNo}">
											<div class="rank_num2"></div>
											<div class="rank_img">
					                			<!-- 이미지 이름 꺼내서 삽입하기 -->		
												<c:forEach var="voteListImg" items="${voteListImg}">
													 <c:if test="${voteListImg.boardNo.boardNo == voteList.boardNo }">
														<img src = "${pageContext.request.contextPath }/user/displayFile?filename=${voteListImg.imageName}" class="thumbNailImg"  alt="카페대표이미지" onerror="this.src='${pageContext.request.contextPath}/resources/images/rc_noImg.png'">										
													</c:if>
												</c:forEach>
											</div>
											<div class="rank_info">
												<div class="rank_keyword">
													<span class="zoneBtn zoneOrangeIconSmall keyword">${voteList.zoneNo.zoneName}</span> 
													<c:choose>
														<c:when test="${voteList.themeNo.themeNo == 1}">
															<span class="date keyword themeKeySmall">#${voteList.themeNo.themeName}</span> 
														</c:when>
														<c:when test="${voteList.themeNo.themeNo == 2}">
															<span class="view keyword themeKeySmall">#${voteList.themeNo.themeName}</span> 
														</c:when>
														<c:when test="${voteList.themeNo.themeNo == 3}">
															<span class="ame keyword themeKeySmall">#${voteList.themeNo.themeName}</span> 
														</c:when>
														<c:when test="${voteList.themeNo.themeNo == 4}">
															<span class="dessert keyword themeKeySmall">#${voteList.themeNo.themeName}</span> 
														</c:when>
														<c:when test="${voteList.themeNo.themeNo == 5}">
															<span class="dog keyword themeKeySmall">#${voteList.themeNo.themeName}</span> 
														</c:when>
														<c:otherwise>
															<span class="work keyword themeKeySmall">#${voteList.themeNo.themeName}</span> 
														</c:otherwise>
													</c:choose>											
													<span class="rDate"><fmt:formatDate value="${voteList.registrationDate }" pattern="yyyy-MM-dd" /></span>
												</div>
												<div class="rank_title">
													<span class="rTitle">${voteList.writingTitle}</span> 
													<span class="rNick">${voteList.userNo.nick }(${voteList.userNo.userId })</span>
													<span class="rGrade"><img src="${pageContext.request.contextPath}/resources/images/${voteList.userNo.userGrade.userGradeImage}" alt="등급아이콘"></span>
												</div>
												<div class="rank_viewAll">
													<span class="rView">조회 <span class="red">${voteList.viewNumber}</span></span> <span
														class="rThumb">추천 <span class="red"><b>${voteList.voteNumber}</b></span></span> <span
														class="rReply">댓글 <span class="red">${voteList.replyCnt}</span></span>
												</div>
												<div class="rank_text">
													<p class="classOne">${voteList.writingContent}</p>
												</div>
											</div>
										</a>
									</li>
								</c:forEach>																																
							</ol>	
					</div>
					<!-- 탭3 : 당월 조회순-->
					<div id="tabs-3">
							<ol>
								<c:forEach var="viewList" items="${viewList}">
									<li class="rank_wrap">
										<a href="${pageContext.request.contextPath }/user/community/cafeRecommend/read?boardNo=${viewList.boardNo}">
											<div class="rank_num3"></div>
											<div class="rank_img">
					                			<!-- 이미지 이름 꺼내서 삽입하기 -->		
												<c:forEach var="viewListImg" items="${viewListImg}">
													 <c:if test="${viewListImg.boardNo.boardNo == viewList.boardNo }">
														<img src = "${pageContext.request.contextPath }/user/displayFile?filename=${viewListImg.imageName}" class="thumbNailImg"  alt="카페대표이미지" onerror="this.src='${pageContext.request.contextPath}/resources/images/rc_noImg.png'">										
													</c:if>
												</c:forEach>
											</div>
											<div class="rank_info">
												<div class="rank_keyword">
													<span class="zoneBtn zoneOrangeIconSmall keyword">${viewList.zoneNo.zoneName}</span> 
													<c:choose>
														<c:when test="${viewList.themeNo.themeNo == 1}">
															<span class="date keyword themeKeySmall">#${viewList.themeNo.themeName}</span> 
														</c:when>
														<c:when test="${viewList.themeNo.themeNo == 2}">
															<span class="view keyword themeKeySmall">#${viewList.themeNo.themeName}</span> 
														</c:when>
														<c:when test="${viewListl.themeNo.themeNo == 3}">
															<span class="ame keyword themeKeySmall">#${viewList.themeNo.themeName}</span> 
														</c:when>
														<c:when test="${viewList.themeNo.themeNo == 4}">
															<span class="dessert keyword themeKeySmall">#${viewList.themeNo.themeName}</span> 
														</c:when>
														<c:when test="${viewList.themeNo.themeNo == 5}">
															<span class="dog keyword themeKeySmall">#${viewList.themeNo.themeName}</span> 
														</c:when>
														<c:otherwise>
															<span class="work keyword themeKeySmall">#${viewList.themeNo.themeName}</span> 
														</c:otherwise>
													</c:choose>											
													<span class="rDate"><fmt:formatDate value="${viewList.registrationDate }" pattern="yyyy-MM-dd" /></span>
												</div>
												<div class="rank_title">
													<span class="rTitle">${viewList.writingTitle}</span> 
													<span class="rNick">${viewList.userNo.nick }(${viewList.userNo.userId })</span>
													<span class="rGrade"><img src="${pageContext.request.contextPath}/resources/images/${viewList.userNo.userGrade.userGradeImage}" alt="등급아이콘"></span>
												</div>
												<div class="rank_viewAll">
													<span class="rView">조회 <span class="red"><b>${viewList.viewNumber}</b></span></span> <span
														class="rThumb">추천 <span class="red">${viewList.voteNumber}</span></span> <span
														class="rReply">댓글 <span class="red">${viewList.replyCnt}</span></span>
												</div>
												<div class="rank_text">
													<p class="classOne">${viewList.writingContent}</p>
												</div>
											</div>
										</a>
									</li>
								</c:forEach>																																
							</ol>		
					</div>
					
					<!-- 탭4 : 당월 댓글순-->
 					<div id="tabs-4">
							<ol>
								<c:forEach var="replyList" items="${replyList}">
									<li class="rank_wrap">
										<a href="${pageContext.request.contextPath }/user/community/cafeRecommend/read?boardNo=${replyList.boardNo}">
											<div class="rank_num4"></div>
											<div class="rank_img">
					                			<!-- 이미지 이름 꺼내서 삽입하기 -->		
												<c:forEach var="replyListImg" items="${replyListImg}">
													 <c:if test="${replyListImg.boardNo.boardNo == replyList.boardNo }">
														<img src = "${pageContext.request.contextPath }/user/displayFile?filename=${replyListImg.imageName}" class="thumbNailImg"  alt="카페대표이미지" onerror="this.src='${pageContext.request.contextPath}/resources/images/rc_noImg.png'">										
													</c:if>
												</c:forEach>
											</div>
											<div class="rank_info">
												<div class="rank_keyword">
													<span class="zoneBtn zoneOrangeIconSmall keyword">${replyList.zoneNo.zoneName}</span> 
													<c:choose>
														<c:when test="${replyList.themeNo.themeNo == 1}">
															<span class="date keyword themeKeySmall">#${replyList.themeNo.themeName}</span> 
														</c:when>
														<c:when test="${replyList.themeNo.themeNo == 2}">
															<span class="view keyword themeKeySmall">#${replyList.themeNo.themeName}</span> 
														</c:when>
														<c:when test="${replyList.themeNo.themeNo == 3}">
															<span class="ame keyword themeKeySmall">#${replyList.themeNo.themeName}</span> 
														</c:when>
														<c:when test="${replyList.themeNo.themeNo == 4}">
															<span class="dessert keyword themeKeySmall">#${replyList.themeNo.themeName}</span> 
														</c:when>
														<c:when test="${replyList.themeNo.themeNo == 5}">
															<span class="dog keyword themeKeySmall">#${replyList.themeNo.themeName}</span> 
														</c:when>
														<c:otherwise>
															<span class="work keyword themeKeySmall">#${replyList.themeNo.themeName}</span> 
														</c:otherwise>
													</c:choose>											
													<span class="rDate"><fmt:formatDate value="${replyList.registrationDate }" pattern="yyyy-MM-dd" /></span>
												</div>
												<div class="rank_title">
													<span class="rTitle">${replyList.writingTitle}</span> 
													<span class="rNick">${replyList.userNo.nick }(${replyList.userNo.userId })</span>
													<span class="rGrade"><img src="${pageContext.request.contextPath}/resources/images/${replyList.userNo.userGrade.userGradeImage}" alt="등급아이콘"></span>
												</div>
												<div class="rank_viewAll">
													<span class="rView">조회 <span class="red">${replyList.viewNumber}</span></span> <span
														class="rThumb">추천 <span class="red">${replyList.voteNumber}</span></span> <span
														class="rReply">댓글 <span class="red"><b>${replyList.replyCnt}</b></span></span>
												</div>
												<div class="rank_text">
													<p class="classOne">${replyList.writingContent}</p>
												</div>
											</div>
										</a>
									</li>
								</c:forEach>																																
							</ol>
					</div> 
					
				</div><!-- div id="tabs" -->
			</div><!-- div id="tabWrap" -->

		</div><!-- div class="RC_Area"  -->
				
	</div><!-- div class="contentArea" -->
</div><!-- div class="content subPageContent" -->

<!-- 자바스크립트 & 제이쿼리 -->
<script>
$( "#tabs" ).tabs();


//원본파일 불러오기(선명한 파일)
$(".thumbNailImg").each(function(i, obj) {
	var file = $(this).attr("src");
	var start = file.substring(0,51);
	var end = file.substring(53);
	var fileName = start + end;
	$(this).attr("src", fileName);
	//console.log(fileName);
})


// 랭킹 숫자
for(var i=0;i<10;i++){ // 0,1,2,3,4,5,6,7,8,9
	$(".rank_num1").eq(i).text(1+i);
} 

for(var i=0;i<10;i++){ // 0,1,2,3,4,5,6,7,8,9
	$(".rank_num2").eq(i).text(1+i);
} 

for(var i=0;i<10;i++){ // 0,1,2,3,4,5,6,7,8,9
	$(".rank_num3").eq(i).text(1+i);
} 

for(var i=0;i<10;i++){ // 0,1,2,3,4,5,6,7,8,9
	$(".rank_num4").eq(i).text(1+i);
} 

// 탭설명 바뀌기
$(".tabs-li a").eq(0).click(function(){
	$("span.tab-info").html("추천카페 <span class='red'><b><u>종합</u> </b></span><b>베스트 10</b> 을 소개해 드립니다.");
})
$(".tabs-li a").eq(1).click(function(){
	$("span.tab-info").html("추천카페 <span class='red'><b>당월 <u>추천수</u> 기준 </b></span><b>베스트 10</b> 을 소개해 드립니다.");
})
$(".tabs-li a").eq(2).click(function(){
	$("span.tab-info").html("추천카페 <span class='red'><b>당월 <u>조회순</u> 기준 </b></span><b>베스트 10</b> 을 소개해 드립니다.");
})
$(".tabs-li a").eq(3).click(function(){
	$("span.tab-info").html("추천카페 <span class='red'><b>당월 <u>댓글순</u> 기준 </b></span><b>베스트 10</b> 을 소개해 드립니다.");
})
</script>
<%-- 지우면 안됨 subMenu.jsp에 container 시작 태그 있음 --%>
</div>
<!-- container end -->

<%@ include file="../userInclude/footer.jsp" %>