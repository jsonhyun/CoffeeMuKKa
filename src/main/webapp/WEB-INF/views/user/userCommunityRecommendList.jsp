<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../userInclude/header.jsp" %>
<%@ include file="../userInclude/subMenu.jsp" %>

<style>
	.cafeRecommendSearch {
		padding: 10px 0;
		padding-top: 20px;
	}

	.cafeRecommendSearch .selectLeft {
		float: left;
	}
	
	.cafeRecommendSearch .selectRight {
		float: right;
	}
	
	/* 추천카페 : 타이틀 */
	.RC_Area .cafeRCnt {
		font-weight: 400;
		font-size: 16px;
	}	
	.RC_Area .RC_titleWrap {
		padding: 10px 0;
	}
	.RC_Area .RC_title{
		float: left;
	}
	.RC_Area .RC_topBtns{
		float: right;
	}
	.RC_topBtns{
		font-size: 14px;
	}
	.RC_topBtns .RC_Best{
		float: left;
		margin-right: 10px;
	}
	.RC_topBtns .RC_Best:hover{
		border-color: #ED7D31;	
	}
	.RC_topBtns #RC_Register{
		height: 34px;
		float: right;
		border-radius: 10px;
		outline: none;
	}
	.RC_topBtns #RC_Register:hover{
		background-color: #F46B45;	
	}
	
	/* 추천카페 : 리스트 */
	.recommendBest .recomWrap ul{
		overflow: hidden;
	}
	
	.recommendBest .recomWrap li {
		float: left;
		width: 222px;
		height: 260px;
		margin: 3px;
		border: 1px solid #545454;
	}
	.recommendBest .recomWrap li div.RC_listImgWrap{
		width: 100%;
		height: 160px;
		position: relative;
	}
	.recommendBest .recomWrap li div.RC_listImgContainer img{
		width: 100%;
		height: 160px;
		position: absolute;
	}
	.recommendBest .recomWrap li div.RC_listImgContainer .active{
		z-index: 1;
	}		
	.recommendBest .recomWrap li div.RC_listTitle1{
		width: 90%;
		height: 33px;
		padding: 8px;
	}
	.recommendBest .recomWrap li div.RC_listTitle1 div.zoneBtn,div.themeKeySmall{
		font-size: 12px;
		margin-top: 5px;
	}
 	.recommendBest .recomWrap li div.RC_listTitle2{
		width: 90%;
		height: 45px;
		padding: 8px;
	}
	
	/* 페이징 */
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
</style>
	
<div class="content subPageContent">
	<!-- 서브페이지 콘텐츠 -->
	<div class="contentArea">
		<!-- 서브페이지 공통적인 타이틀 -->
		<h2 class="subPageTitle">
			<span class="title">MuKKa人 추천 카페</span>
			<span class="subTit grayB"> | 세 상 에! 이런 카페가 있는지 몰랐지?</span>
		</h2>
			
		<!-- 게시판 베스트 -->
		<div class="bestBoardBox">
			<div class="boardTitle bottomLine2">
				<p>베스트</p>
				<p>월간</p>
			</div>
			<table class="post1-5">
				<tr>
					<td class="no"><p class="bgRed">1</p></td>
					<td>
						<a href="#" class="title">test</a>
						<span class="review red">(20)</span>
					</td>
				</tr>
				<tr>
					<td class="no"><p class="bgRed">2</p></td>
					<td>
						<a href="#" class="title">test</a>
						<span class="review red">(20)</span>
					</td>
				</tr>
				<tr>
					<td class="no"><p class="bgRed">3</p></td>
					<td>
						<a href="#" class="title">test</a>
						<span class="review red">(20)</span>
					</td>
				</tr>
				<tr>
					<td class="no"><p class="bgPink">4</p></td>
					<td>
						<a href="#" class="title">testaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa</a>
						<span class="review red">(20)</span>
					</td>
				</tr>
				<tr>
					<td class="no"><p class="bgPink">5</p></td>
					<td>
						<a href="#" class="title">test</a>
						<span class="review red">(20)</span>
					</td>
				</tr>
			</table>
			<table class="post6-10">
				<tr>
					<td class="no"><p class="bgPink">6</p></td>
					<td>
						<a href="#" class="title">test</a>
						<span class="review red">(20)</span>
					</td>
				</tr>
				<tr>
					<td class="no"><p class="bgPink">7</p></td>
					<td>
						<a href="#" class="title">test</a>
						<span class="review red">(20)</span>
					</td>
				</tr>
				<tr>
					<td class="no"><p class="bgPink">8</p></td>
					<td>
						<a href="#" class="title">test</a>
						<span class="review red">(20)</span>
					</td>
				</tr>
				<tr>
					<td class="no"><p class="bgPink">9</p></td>
					<td>
						<a href="#" class="title">testaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa</a>
						<span class="review red">(20)</span>
					</td>
				</tr>
				<tr>
					<td class="no"><p class="bgPink">10</p></td>
					<td>
						<a href="#" class="title">test</a>
						<span class="review red">(20)</span>
					</td>
				</tr>
			</table>
		</div>
		<!-- 게시판 베스트 end -->
		
		<!-- 카테고리 & 검색창 -->
		<div class="cafeRecommendSearch bottomLine2 clearfix">
			<div class="selectLeft">
				<select name="searchZone" id="searchZone">
					<option value="" ${cri.searchZone == '' ? 'selected' : '' }>전체(위치별)</option>
					<c:forEach var="zone" items="${zoneList }">
						<option value="${zone.zoneNo }" ${cri.searchZone == zone.zoneNo ? 'selected' : '' }>${zone.zoneName }</option>
					</c:forEach>
				</select>
				<select name="searchTheme" id="searchTheme">
					<option value="" ${cri.searchTheme == '' ? 'selected' : '' }>전체(테마별)</option>
					<c:forEach var="theme" items="${themeList }">					
						<option value="${theme.themeNo}" ${cri.searchTheme == theme.themeNo ? 'selected' : '' }>#${theme.themeName}</option>
					</c:forEach>
				</select>
			</div>
			<div class="selectRight">
				<select name="searchType" id="searchType">
					<option value="n" ${cri.searchType == null ? 'selected' : '' }>----</option>
					<option value="t" ${cri.searchType == 't' ? 'selected' : '' }>제목</option>
					<option value="c" ${cri.searchType == 'c' ? 'selected' : '' }>내용</option>
					<option value="tc" ${cri.searchType == 'tc' ? 'selected' : '' }>제목+내용</option>
					<option value="uId" ${cri.searchType == 'uId' ? 'selected' : '' }>회원아이디</option>
					<option value="uName" ${cri.searchType == 'uName' ? 'selected' : '' }>글쓴이</option>
				</select>
				<input type="hidden" name="boardType" value="2"/>
				<input type="text" name="keyword" id="keyword" value="${cri.keyword }" placeholder="검색어를 입력하세요." />
				<button type="button" class="navyBtn" id="btnSearch">검색</button>
			</div>
		</div>
		<!-- 카테고리 & 검색창 end -->
		

		<!-- 추천카페 : 타이틀 -->
		<div class="RC_Area">
			<div class="RC_titleWrap clearfix">
				<h3 class="RC_title">오늘의 추천 카페 | <span class="red cafeRCnt">${todayCnt}개</span></h3>
				<div class="RC_topBtns">
					<div class="RC_Best grayLineBtn"><a href="#"><span class="red bold">베스트 글</span> 전체 보기</a></div>
					<button class="navyBtn" id="RC_Register" style="cursor: pointer">추천 카페 쓰기</button>
				</div>
			</div>
		
		<!-- 추천카페 : 리스트  -->
			<div class="recommendBest mb30">
				
				<div class="recomWrap">
				
				<ul>
					<c:forEach var="board" items="${list}">
					<a href="${pageContext.request.contextPath}/user/community/cafeRecommend/read?boardNo=${board.boardNo}">
						<li>
								<div class="RC_listImgWrap">
									<div class="RC_listImgContainer">
						                <!-- 이미지 이름 꺼내서 삽입하기 -->		
										<c:forEach var="img" items="${listImg}">
											 <c:if test="${img.boardNo.boardNo == board.boardNo }">
												<img src = "${pageContext.request.contextPath }/user/displayFile?filename=${img.imageName}" class="thumbNailImg"  alt="카페대표이미지" onerror="this.src='${pageContext.request.contextPath}/resources/images/rc_noImg.png'">										
											</c:if>
										</c:forEach>
										<p class="test"></p>								
									</div>							
								</div>
								<div class="RC_listTitle1">
									<!-- 위치 -->
									<div class="zoneBtn zoneOrangeIconSmall">${board.zoneNo.zoneName}</div>
									<!-- 키워드 -->
									<c:choose>
										<c:when test="${board.themeNo.themeNo == 1}">
											<div class="date themeKeySmall">#${board.themeNo.themeName}</div>
										</c:when>
										<c:when test="${board.themeNo.themeNo == 2}">
											<div class="view themeKeySmall">#${board.themeNo.themeName}</div>
										</c:when>
										<c:when test="${board.themeNo.themeNo == 3}">
											<div class="ame themeKeySmall">#${board.themeNo.themeName}</div>
										</c:when>
										<c:when test="${board.themeNo.themeNo == 4}">
											<div class="dessert themeKeySmall">#${board.themeNo.themeName}</div>
										</c:when>
										<c:when test="${board.themeNo.themeNo == 5}">
											<div class="dog themeKeySmall">#${board.themeNo.themeName}</div>
										</c:when>																																								
										<c:otherwise>
											<div class="work themeKeySmall">#${board.themeNo.themeName}</div>		
										</c:otherwise>
									</c:choose>
									</div>
									<div class="RC_listTitle2">
										<!-- 상세페이지로 가기 -->																																			
										<h3 class="RC_titleName">${board.writingTitle}</h3>
									</div>							
						</li>
										</a>
					</c:forEach>
				</ul>
				</div>

			</div>
		</div>
			<!-- 페이징 -->
		<div style="text-align: center;">
			<ul class="pagination">
				<c:if test="${pageMaker.prev == true }">
					<li><a href="cafeRecommend?page=${pageMaker.startPage-1 }&searchZone=${cri.searchZone }&searchTheme=${cri.searchTheme }&searchType=${cri.searchType }&keyword=${cri.keyword}">&laquo;</a></li>
				</c:if>
				<c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }" var="idx">
					<li class="${pageMaker.cri.page == idx?'active':'' }"><a href="cafeRecommend?page=${idx }&searchZone=${cri.searchZone }&searchTheme=${cri.searchTheme }&searchType=${cri.searchType }&keyword=${cri.keyword}">${idx }</a></li>
				</c:forEach>
				<c:if test="${pageMaker.next == true }">
					<li><a href="cafeRecommend?page=${pageMaker.endPage+1 }&searchZone=${cri.searchZone }&searchTheme=${cri.searchTheme }&searchType=${cri.searchType }&keyword=${cri.keyword}">&raquo;</a></li>
				</c:if>
			</ul>
		</div>					
	</div> 
</div>

<!-- 자바스크립트 & 제이쿼리 -->
<script>
	//추천카페쓰기 버튼(게시물등록버튼)
	$("#RC_Register").click(function(){
		location.href="${pageContext.request.contextPath}/user/community/cafeRecommend/register";
	})
	
	// 이미지 로테이션 
	 var now_img = $(".RC_listImgContainer img:first-of-type"); //첫번째 이미지 :first-of-type  --> 요소 무리 중 첫 번째 요소
	 
	 var next_img = $(".RC_listImgContainer img:nth-child(2)"); // 두번째 이미지 : nth-child(2)  --> 요소 무리 둥 2번째 요소 (사진을 1개만 넣을 경우)
 
	 function fade_change(){
		     next_img.addClass("active").css("opacity",0).animate({"opacity":1},1500, function(){
		    	 next_img.removeClass("active").animate({"opacity":0},1500);
		    	// $(".RC_listImgContainer").append(now_img);           //콜백
		    	// next_img.removeClass("active"); 
		     });
	 }
	 
	 var timer = setInterval("fade_change()", 2000);
	 
	 $("div.RC_listImgContainer").hover(function(){ // mouse enter 시 
	     clearInterval(timer);
	 }, function(){                                  // mouse leave 시
		 //now_img.animate({"opacity":0},1500);
	     timer = setInterval("fade_change()",2000);
	 });
	 
	 //원본파일 불러오기(선명한 파일)
	$(".thumbNailImg").each(function(i, obj) {
		var file = $(this).attr("src");
		var start = file.substring(0,51);
		var end = file.substring(53);
		var fileName = start + end;
		$(this).attr("src", fileName);
		console.log(fileName);
	})
	
	// 검색
	$("#btnSearch").click(function () {
		var searchZone = $("#searchZone").val();
		var searchTheme = $("#searchTheme").val();
		var searchType = $("#searchType").val();
		var keyword = $("#keyword").val();
		location.href = "cafeRecommend?boardType=2&searchZone="+searchZone+"&searchTheme="+searchTheme+"&searchType="+searchType+"&keyword="+keyword;
	})	
</script>
<%-- 지우면 안됨 subMenu.jsp에 container 시작 태그 있음 --%>
</div>
<!-- container end -->

<%@ include file="../userInclude/footer.jsp" %>