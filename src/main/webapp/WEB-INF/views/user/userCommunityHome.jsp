<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../userInclude/header.jsp" %>
<%@ include file="../userInclude/subMenu.jsp" %>
<style>
	.contentArea .cafeReviewBest {
		overflow: hidden;
	}

	.contentArea .cafeReviewBest .best1 {
		float: left;
		width: 38%;	
		border: 1px solid #545454;
		position: relative;
	}
	
	.contentArea .cafeReviewBest .best1 > div:first-child{
		position: absolute;
		top: 0;
		left: 0;
		padding: 5px 20px;
	}
	
	.contentArea .cafeReviewBest .best1 .img {
		height: 250px;
		text-align: center;
	}
	
	.contentArea .cafeReviewBest .best1 .bestInfo {
		padding: 10px;
		width: 100%;
		box-sizing: border-box;
	}
	
	.contentArea .cafeReviewBest .best1 h3,
	.contentArea .cafeReviewBest .bests h3 {
		height: 56px;
	}
	
	.contentArea .cafeReviewBest .best1 p.text {
		height: 48px;
	}
	
	.contentArea .cafeReviewBest .user {
		overflow: hidden;
		line-height: 30px;
	}
	
	.contentArea .cafeReviewBest .user .icon {
		float: left;
		border: 2px solid #ddd;
		border-radius: 40px;
		width: 30px;
		height: 30px;
		text-align: center;
		margin-right: 10px;
	}
	
	.contentArea .cafeReviewBest .user .userId {
		float: left;
	}
	
	.contentArea .cafeReviewBest .boxs {
		float: right;
		width: 60%;
	}
	
	.contentArea .cafeReviewBest .bests {
		border-top: 1px solid #545454;
		border-bottom: 1px solid #545454;
		margin-bottom: 10px;
		overflow: hidden;
	}
	
	.contentArea .cafeReviewBest .bests .img {
		float: left;
		width: 130px;
		height: 128px;
	}
	
	.contentArea .cafeReviewBest .bests .bestsInfo {
		float: left;
		padding: 15px;
	}
	
	/* 추천카페 베스트 */
	
	
</style>
<div class="content subPageContent">
	<!-- 서브페이지 콘텐츠 -->
	<div class="contentArea">
		<!-- 서브페이지 공통적인 타이틀 -->
		<h2 class="subPageTitle">
			<span class="title">MuKKa의 전당</span>
			<span class="subTit grayB"> | 두둥! 당신이 바로 주인공입니다!</span>
		</h2>
		
		<!-- 카페탐방기 베스트 -->
		<div class="cafeReviewBest mb30">
			<h3 class="bottomLine">생생 카페 탐방기 <span class="fs16">| 베스트</span></h3>
			<div class="best1">
				<div class="bgOrange">BEST</div>
				<div class="img temp"></div>
				<div class="bestInfo">
					<h3 class="title classSec">test</h3>
					<p class="text classSec">test입니다.</p>
					<div class="user">
						<div class="icon">i</div>
						<p class="userId">test (id)</p>
					</div>
				</div>
			</div>
			<div class="boxs">
				<div class="bests">
					<div class="img temp">img</div>
					<div class="bestsInfo">
						<h3 class="title classSec">test</h3>
						<div class="user">
							<div class="icon">i</div>
							<p class="userId">test (id)</p>
						</div>
					</div>
				</div>
				<div class="bests">
					<div class="img temp">img</div>
					<div class="bestsInfo">
						<h3 class="title classSec">test</h3>
						<div class="user">
							<div class="icon">i</div>
							<p class="userId">test (id)</p>
						</div>
					</div>
				</div>
				<div class="bests">
					<div class="img temp">img</div>
					<div class="bestsInfo">
						<h3 class="title classSec">test</h3>
						<div class="user">
							<div class="icon">i</div>
							<p class="userId">test (id)</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<!-- 추천 카페 베스트 -->
		<div class="recommendBest">
			<h3 class="bottomLine">MuKKa人 추천 카페 <span class="fs16">| 베스트</span></h3>
			<div class="recomWrap">
				<ul>
					<li class="temp"><a href="#"></a></li>
					<li class="temp"><a href="#"></a></li>
					<li class="temp"><a href="#"></a></li>
					<li class="temp"><a href="#"></a></li>
					<li class="temp"><a href="#"></a></li>
					<li class="temp"><a href="#"></a></li>
					<li class="temp"><a href="#"></a></li>
					<li class="temp"><a href="#"></a></li>
					<li class="temp"><a href="#"></a></li>
					<li class="temp"><a href="#"></a></li>
					<li class="temp"><a href="#"></a></li>
					<li class="temp"><a href="#"></a></li>
					<li class="temp"><a href="#"></a></li>
					<li class="temp"><a href="#"></a></li>
					<li class="temp"><a href="#"></a></li>
				</ul>
			</div>
			
		</div>
		
		
	</div>
</div>
	

<%-- 지우면 안됨 subMenu.jsp에 container 시작 태그 있음 --%>
</div>
<!-- container end -->

<%@ include file="../userInclude/footer.jsp" %>