<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../userInclude/header.jsp" %>
<%@ include file="../userInclude/subMenu.jsp" %>

<style>
	.cafeReviewSearch {
		padding: 10px 0;
	}

	.cafeReviewSearch .selectLeft {
		float: left;
	}
	
	.cafeReviewSearch .selectRight {
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
	.recommendBest .recomWrap li div.RC_listImg{
		width: 100%;
		height: 160px;
		background-color: gray;
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
		<div class="cafeReviewSearch bottomLine2 clearfix">
			<div class="selectLeft">
				<select name="" id="">
					<option value="all">전체</option>
				</select>
				<select name="" id="">
					<option value="all">전체</option>
				</select>
			</div>
			<div class="selectRight">
				<select name="" id="">
					<option value="">제목</option>
				</select>
				<input type="text" name="" placeholder="검색어를 입력하세요." />
				<input type="submit" value="검색" class="navyBtn" style="cursor: pointer"/>
			</div>
		</div>
		<!-- 카테고리 & 검색창 end -->
		

		<!-- 추천카페 : 타이틀 -->
		<div class="RC_Area">
			<div class="RC_titleWrap clearfix">
				<h3 class="RC_title">오늘의 카페 추천 | <span class="red cafeRCnt">${todayCnt}개</span></h3>
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
						<li>
								<div class="RC_listImg"></div>
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
										<a href="${pageContext.request.contextPath}/user/community/cafeRecommend/read?boardNo=${board.boardNo}"><h3 class="RC_titleName">${board.writingTitle}</h3></a>
									</div>							
						</li>
					</c:forEach>
				</ul>
				</div>
			</div>
		</div>
			<!-- 페이징 -->
			<div style="text-align: center;">
				<ul class="pagination">
					<c:if test="${pageMaker.prev == true }">
						<li><a href="cafeRecommend?page=${pageMaker.startPage-1 }">&laquo;</a></li>
					</c:if>
					<c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }" var="idx">
						<li class="${pageMaker.cri.page == idx?'active':'' }"><a href="cafeRecommend?page=${idx }">${idx }</a></li>
					</c:forEach>
					<c:if test="${pageMaker.next == true }">
						<li><a href="cafeRecommend?page=${pageMaker.endPage+1 }">&raquo;</a></li>
					</c:if>
				</ul>
			</div>					
	</div> 
</div>
	
<script>
	$("#RC_Register").click(function(){
		location.href="${pageContext.request.contextPath}/user/community/cafeRecommend/register";
		//alert("test");
	})
</script>
<%-- 지우면 안됨 subMenu.jsp에 container 시작 태그 있음 --%>
</div>
<!-- container end -->

<%@ include file="../userInclude/footer.jsp" %>