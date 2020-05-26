<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../userInclude/header.jsp" %>
<%@ include file="../userInclude/subMenu.jsp" %>

<!-- 별점 관련 -->
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/w3.css">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/fontawesome-stars.css">
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/jquery.barrating.min.js"></script>
<style>
	/* 별점 */
	.spoint{
		height: 45px;
	    line-height: 45px;
	    background-color: #f4f4f4;
	    border-radius: 10px;
	    width: 180px;
	    padding-left: 10px;
	    float: left;
	}
	
	/* 카페 별점의 별 색상 */
	.br-theme-fontawesome-stars .br-widget a.br-selected:after {
		color: red;
	}
	
	#jumsu{
		height: 45px;
	    line-height: 45px;
	    float: left;
	    margin-left: -60px;
	    margin-bottom: 20px;
	}
	
	/* 베스트 리스트 */
	.no {
		width: 60px;
		height: 60px;
		line-height: 60px;
		text-align: center;
		color: #fff;
		font-weight: 700;
		font-size: 30px;
	}
	
	
	
	
</style>

	<div class="content subPageContent">
		<!-- 서브페이지 콘텐츠 -->
		<div class="contentArea">
			<!-- 서브페이지 공통적인 타이틀 -->
			<h2 class="subPageTitle">
				<span class="title">MuKKa 베스트</span>
				<span class="subTit grayB"> | MuKKa人이 애정하는 그 카페 <span class="orange">(2020.05.01 ~ 05.31[전월기준 날짜 폼 가져오기])</span></span>
			</h2>
			
			<!-- 1위 -->
			<div class="bestBox clearfix">
				<div class="bestLeft f_left">
					<img src="${pageContext.request.contextPath }/resources/images/sumnail/23g-1.jpg" alt="카페이미지" />
					<div class="dummy"></div>
					<div class="topWrap">
						<p class="no bgPurple">1</p>
						<div class="zoneBtn zoneOrangeIconSmall">#지역</div><!-- ${item.cafeNo.zoneNo.zoneName } -->
						<p class="cafeName">카페이름</p>
					</div>
					<div class="bottomWrap">
						<div class="themeKeySmall themeName">#데이트</div>
						<!-- #${item.cafeNo.themeNo.themeName } -->
						<%-- <!-- 테마 순위 리스트(순위테마 전체를 검색할 수 있을때 풀기) -->
						<c:forEach var="theme" items="${themeMap}" varStatus="status">
							<c:if test="${item.cafeNo.cafeNo == theme.key }">
								<c:forEach var="themeItem" items="${theme.value }">
									<div class="themeKeySmall themeName">#${themeItem.themeName }</div>
								</c:forEach>
							</c:if>
						</c:forEach> --%>
						<img src="${pageContext.request.contextPath }/resources/images/cafe_best_icon.png" alt="베스트아이콘" />
					</div>
				</div>
				<div class="bestRight f_right">
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
						<div id="jumsu"><%-- ${starpoint } --%> 3 / 5</div>
					</div>
					<div class="cafeRivewCnt">
						<img src="${pageContext.request.contextPath }/resources/images/community_icon.png" alt="아이콘" />
						<span>전체 <span class="orange">150</span>개의 탐방기</span>
					</div>
					<p class="cafeOneLine classSec">한줄 소개</p>
					<p class="cafeDetailText classSec_3line gray">여러줄 소개</p>
					<div class="icons">
						<div class="icon">
							<img src="${pageContext.request.contextPath }/resources/images/icon_view.png" alt="아이콘" />
							<span class="iconCnt">0</span>
						</div>
						<div class="icon">
							<i class="far fa-thumbs-up gray"></i>
							<span class="iconCnt">0</span>
						</div>
						<div class="icon">
							<i class="fas fa-heart gray"></i>
							<span class="iconCnt">0</span>
						</div>
						<div class="icon">
							<img src="${pageContext.request.contextPath }/resources/images/icon_reply.png" alt="아이콘" />
							<span class="iconCnt">0</span>
						</div>
					</div>
				</div>
			</div>
			
			<!-- 2, 3위 -->
			<div class="bestBox"></div>
			
			<!-- 4 ~ 10위 -->
			<div class="bestBox"></div>
			

		</div>
	</div>
	
<script>
	//카페 세부정보 별점 
	$('.starPoint').barrating({
		theme: 'fontawesome-stars',
		initialRating: 3, //${starpointSelect}
		readonly: true
	})
	
	// 테마분류 색상 설정
	$(".themeName").each(function(i, obj){
		var name = $(this).text();
		var keywordK = ["#데이트", "#뷰", "#착한아메", "#디저트", "#댕댕이", "#작업"];
		var keyword = ["date", "view", "ame", "dessert", "dog", "work"];
		
		for(var i=0; i<keyword.length; i++){
			if(name.indexOf(keywordK[i]) > -1) {
				$(this).addClass(keyword[i]);
			}
		}
	})
</script>
<%-- 지우면 안됨 subMenu.jsp에 container 시작 태그 있음 --%>
</div>
<!-- container end -->

<%@ include file="../userInclude/footer.jsp" %>