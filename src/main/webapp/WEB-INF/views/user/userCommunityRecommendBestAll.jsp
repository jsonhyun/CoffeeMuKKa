<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../userInclude/header.jsp" %>
<%@ include file="../userInclude/subMenu.jsp" %>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/jquery-ui.css">
<script src="${pageContext.request.contextPath }/resources/js/jquery-ui.min.js"></script>
<style>
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
	 li.tabs-li a:focus {
		border-bottom: 2px solid red;
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
			
		
		<!-- 카테고리 & 검색창 -->
<%-- 		<div class="cafeRecommendSearch bottomLine2 clearfix">
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
		</div> --%>
		<!-- 카테고리 & 검색창 end -->
		

		<!-- 추천카페 : 타이틀 -->
		<div class="RC_Area">
<%-- 			<div class="RC_titleWrap clearfix">
				<h3 class="RC_title">오늘의 추천 카페 | <span class="red cafeRCnt">${todayCnt}개</span></h3>
				<div class="RC_topBtns">
					<div class="RC_Best grayLineBtn"><a href="#"><span class="red bold">베스트 글</span> 전체 보기</a></div>
					<button class="navyBtn" id="RC_Register" style="cursor: pointer">추천 카페 쓰기</button>
				</div>
			</div> --%>
			<!-- 베스트 리스트  -->
			<div id="tabWrap">
				<div id="tabs">
					<ul id="tabs-ul">
						<li class="tabs-li"><a href="#tabs-1">MuKKa人의 선택</a></li> <!-- 고민 -->
						<li class="tabs-li"><a href="#tabs-2">추천순</a></li> <!-- 추천순 -->
						<li class="tabs-li"><a href="#tabs-3">조회순</a></li> <!-- 조회순 -->
						<li class="tabs-li"><a href="#tabs-3">댓글순</a></li> <!-- 댓글순 -->
					</ul>
					<div id="tabs-1">
						<p>랄랄라라~ddddddddddddddddddddddddddddddddddddddddddddddddddddddd</p>
					</div>
					<div id="tabs-2">
						<p>배고파!</p>
					</div>
					<div id="tabs-3">
						<p>룰루랄라</p>
					</div>
					<div id="tabs-4"></div>
					<div id="tabs-5"></div>
				</div>
			</div>

		</div><!-- div class="RC_Area"  -->
				
	</div><!-- div class="contentArea" -->
</div><!-- div class="content subPageContent" -->

<!-- 자바스크립트 & 제이쿼리 -->
<script>
$( "#tabs" ).tabs();
</script>
<%-- 지우면 안됨 subMenu.jsp에 container 시작 태그 있음 --%>
</div>
<!-- container end -->

<%@ include file="../userInclude/footer.jsp" %>