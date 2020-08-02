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
	td{
		border: none;
	}
	td.no{
		width: 62px;
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
		overflow: hidden;
	}
	.recommendBest .recomWrap li div.RC_listImgContainer img{
		width: 100%;
		height: 160px;
		transition:all 1s;
		transform-origin:left-top;		
	}
	div.RC_listImgContainer img:hover{
		transform:scale(1.2);
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
		}
		
	/*추가*/
	.bestZoneName{
		color: #747474;
		font-size: 14px;
		letter-spacing: -1px;
	}	
</style>
<div class="content subPageContent">
	<div class="contentArea">
		<h2 class="subPageTitle">
			<span class="title">사장님 고민 나눔</span>
			<span class="subTit grayB"> | 이제 사장님들의 고민은 나눌수록 가볍고 작아집니다.</span>
		</h2>
	
		<!-- 게시판 베스트 -->
		<div class="bestBoardBox">
			<div class="boardTitle bottomLine2">
				<p>베스트</p>
				<p><span class="orange preMonth"></span> 월 (월간)</p>
			</div>
			 <table class="post1-5">
				<c:forEach var="rcBestList" items="${rcBestList}" begin="0" end="2" varStatus="status">
						<tr>
							<td class="no"><p class="bgRed"><!-- 랭킹숫자 --></p></td>
							<td>
								<a href="${pageContext.request.contextPath}/user/community/cafeRecommend/read?boardNo=${rcBestList.boardNo}" class="title"><span class ="bestZoneName">[${rcBestList.zoneNo.zoneName}]</span>　${rcBestList.writingTitle}</a>
								<span class="review red">(${rcBestList.replyCnt})</span>
							</td>
						</tr>
				</c:forEach>
				<c:forEach var="rcBestList" items="${rcBestList}" begin="3" end="4" varStatus="status">
						<tr>
							<td class="no"><p class="bgPink"><!-- 랭킹숫자 --></p></td>
							<td>					
								<a href="${pageContext.request.contextPath}/user/community/cafeRecommend/read?boardNo=${rcBestList.boardNo}" class="title"><span class ="bestZoneName">[${rcBestList.zoneNo.zoneName}]</span>　${rcBestList.writingTitle}</a>
								<span class="review red">(${rcBestList.replyCnt})</span>
							</td>
						</tr>
				</c:forEach>		
			</table>
			<table class="post6-10">
				 <c:forEach var="rcBestList" items="${rcBestList}" begin="5" end="10" varStatus="status">
						<tr>
							<td class="no"><p class="bgPink"><!-- 랭킹숫자 --></p></td>
							<td>
								<a href="${pageContext.request.contextPath}/user/community/cafeRecommend/read?boardNo=${rcBestList.boardNo}" class="title"><span class ="bestZoneName">[${rcBestList.zoneNo.zoneName}]</span>　${rcBestList.writingTitle}</a>
								<span class="review red">(${rcBestList.replyCnt})</span>
							</td>
						</tr>
				</c:forEach>				
			</table>
		</div>

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
				<h3 class="RC_title">오늘의 사장님 고민 | <span class="red cafeRCnt">${todayCnt}개</span></h3>
				<div class="RC_topBtns">
					<div class="RC_Best grayLineBtn"><a href="${pageContext.request.contextPath}/user/community/cafeRecommend/bestAll"><span class="red bold">베스트 글</span> 전체 보기</a></div>
					<button class="navyBtn" id="RC_Register" style="cursor: pointer">사장님 고민 쓰기</button>
				</div>
			</div>
		
		<!-- 추천카페 : 리스트  -->
			<div class="recommendBest mb30">
				
				<div class="recomWrap">
				
				<ul>
					<c:forEach var="board" items="${list}">
					<a href="${pageContext.request.contextPath}/user/community/cafeRecommend/read?boardNo=${board.boardNo}&page=${cri.page}&searchZone=${cri.searchZone }&searchTheme=${cri.searchTheme }&searchType=${cri.searchType }&keyword=${cri.keyword}" class="a_cafeReview">
						<li>
								<div class="RC_listImgWrap">
									<div class="RC_listImgContainer">
						                <!-- 이미지 이름 꺼내서 삽입하기 -->		
										<c:forEach var="img" items="${listImg}">
											 <c:if test="${img.boardNo.boardNo == board.boardNo }">
												<img src = "${pageContext.request.contextPath }/user/displayFile?filename=${img.imageName}" class="thumbNailImg"  alt="카페대표이미지" onerror="this.src='${pageContext.request.contextPath}/resources/images/rc_noImg.png'">										
											</c:if>
										</c:forEach>							
									</div>							
								</div>
								<div class="RC_listTitle1">
									<!-- 위치 -->
									<div class="zoneBtn zoneOrangeIconSmall keyword">${board.zoneNo.zoneName}</div>
									<!-- 키워드 -->
									<c:choose>
										<c:when test="${board.themeNo.themeNo == 1}">
											<div class="date themeKeySmall keyword">#${board.themeNo.themeName}</div>
										</c:when>
										<c:when test="${board.themeNo.themeNo == 2}">
											<div class="view themeKeySmall keyword">#${board.themeNo.themeName}</div>
										</c:when>
										<c:when test="${board.themeNo.themeNo == 3}">
											<div class="ame themeKeySmall keyword">#${board.themeNo.themeName}</div>
										</c:when>
										<c:when test="${board.themeNo.themeNo == 4}">
											<div class="dessert themeKeySmall keyword">#${board.themeNo.themeName}</div>
										</c:when>
										<c:when test="${board.themeNo.themeNo == 5}">
											<div class="dog themeKeySmall keyword">#${board.themeNo.themeName}</div>
										</c:when>																																								
										<c:otherwise>
											<div class="work themeKeySmall keyword">#${board.themeNo.themeName}</div>		
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
<%-- 지우면 안됨 subMenu.jsp에 container 시작 태그 있음 --%>
</div>
<!-- container end -->
<script>

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

//랭킹숫자
for(var i=0;i<10;i++){ // 0,1,2,3,4,5,6,7,8,9
	$("td.no p").eq(i).text(1+i);	
}

// 베스트 월 표시
var nowMonth = new Date().getMonth() + 1;
var preMonth = nowMonth - 1;
$(".preMonth").text(preMonth);	


//추천카페 글쓰기 버튼 - 미로그인시 로그인창 뜨게 구현
$("#RC_Register").click(function() {		
	var auth = "${Auth}";
	if(auth == "") {
		loginShow();
		return false;
	}
	
	location.href = "${pageContext.request.contextPath }/user/community/cafeRecommend/register"; 
})	
</script>
<%@ include file="../userInclude/footer.jsp" %>