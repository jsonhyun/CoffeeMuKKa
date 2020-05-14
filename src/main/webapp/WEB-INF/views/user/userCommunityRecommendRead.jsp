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
	
</style>
	
<div class="content subPageContent">
	<!-- 서브페이지 콘텐츠 -->
	<div class="contentArea">
		<!-- 서브페이지 공통적인 타이틀 -->
		<h2 class="subPageTitle">
			<span class="title">MuKKa人 추천 카페</span>
			<span class="subTit grayB"> | 세 상 에! 이런 카페가 있는지 몰랐지?</span>
		</h2>
	</div>
</div>
	<!-- 상세페이지 : 지역, 키워드 / 등록날짜 , 수정날짜 / 제목, 주소, 조회수  / 등급, 닉네임, 아이디  / 첨부사진 / 글내용  / 추천수 -->
	<ul>
		<li>지역 : ${board.zoneNo.zoneNo}, ${board.zoneNo.zoneName}</li>
		<li>키워드 : ${board.themeNo.themeNo}, ${board.themeNo.themeName}</li>
		<li>등록날짜 , 수정날짜 : ${board.registrationDate}, ${board.updateDate}</li>
		<li>제목, 주소, 조회수 : ${board.writingTitle}, ${board.address}, ${board.viewNumber}</li>
		<li>글내용 : ${board.writingContent}</li>
		<li>추천수 : ${board.voteNumber}</li>
		<li>등급 : ${board.userNo.userId}, ${board.userNo.nick}, <img src = "${pageContext.request.contextPath }/resources/images/${board.userNo.userGrade.userGradeImage}"></li>												
	</ul>
<script>
</script>
<%-- 지우면 안됨 subMenu.jsp에 container 시작 태그 있음 --%>
</div>
<!-- container end -->

<%@ include file="../userInclude/footer.jsp" %>