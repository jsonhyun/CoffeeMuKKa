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
		top: 0;
		left: 0;
		padding: 5px 10px;
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
		max-width: 80%;
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
	
	/* 실시간 */
	.contentArea .realTime {
		overflow: hidden;
	}
	
	.contentArea .realTime .box h3 span{
		font-size: 16px;
	}
	
	.contentArea .realTime .box .no {
		text-align: center;
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
		<div class="boxs">
			<div class="box">
				<a href="#">
					<div class="point bgOrange">위치별</div>
					<img src="${pageContext.request.contextPath }/resources/images/rc_sample41.jpg">
					<div class="cafe_info">
						<h3 class="title">카페 카일라</h3>
						<p class="classOne">'공간이 지나는 특별함을 누구나 testtest'</p>
					</div>
					<div class="hiddenBox">
					</div>
				</a>
			</div>
			<div class="box">
				<a href="#">	
					<div class="point bgOrange">테마별</div>
					<img src="${pageContext.request.contextPath }/resources/images/rc_sample41.jpg">
					<div class="cafe_info">
						<h3 class="title">카페 카일라</h3>
						<p class="classOne">'공간이 지나는 특별함을 누구나 testtest'</p>
					</div>
					<div class="hiddenBox">
					</div>
				</a>					
			</div>
			<div class="box">
				<a href="#">	
					<div class="point bgOrange">테마별</div>
					<img src="${pageContext.request.contextPath }/resources/images/rc_sample41.jpg">
					<div class="cafe_info">
						<h3 class="title">카페 카일라</h3>
						<p class="classOne">'공간이 지나는 특별함을 누구나 testtest'</p>
					</div>
					<div class="hiddenBox">
					</div>
				</a>					
			</div>
		</div>
		
		<!-- 위치별 / 테마별 실시간 -->
		<div class="realTime mb30">
			<div class="box left">
				<h3 class="title bottomLine">위치별 <span>| 실시간</span></h3>
				<table>
					<tr>
						<td class="red w30 no">1</td>
						<td> test</td>
					</tr>
					<tr>
						<td class="red w30 no">2</td>
						<td> test</td>
					</tr>
					<tr>
						<td class="red w30 no">3</td>
						<td> test</td>
					</tr>
					<tr>
						<td class="w30 no">4</td>
						<td> test</td>
					</tr>
					<tr>
						<td class="w30 no">5</td>
						<td> test</td>
					</tr>
					<tr>
						<td class="w30 no">6</td>
						<td> test</td>
					</tr>
					<tr>
						<td class="w30 no">7</td>
						<td> test</td>
					</tr>
					<tr>
						<td class="w30 no">8</td>
						<td> test</td>
					</tr>
					<tr>
						<td class="w30 no">9</td>
						<td> test</td>
					</tr>
					<tr>
						<td class="w30 no">10</td>
						<td> test</td>
					</tr>
				</table>
			</div>
			<div class="box right">
				<h3 class="title bottomLine">테마별 <span>| 실시간</span></h3>
				<table>
					<tr>
						<td class="red w30 no">1</td>
						<td> test</td>
					</tr>
					<tr>
						<td class="red w30 no">2</td>
						<td> test</td>
					</tr>
					<tr>
						<td class="red w30 no">3</td>
						<td> test</td>
					</tr>
					<tr>
						<td class="w30 no">4</td>
						<td> test</td>
					</tr>
					<tr>
						<td class="w30 no">5</td>
						<td> test</td>
					</tr>
					<tr>
						<td class="w30 no">6</td>
						<td> test</td>
					</tr>
					<tr>
						<td class="w30 no">7</td>
						<td> test</td>
					</tr>
					<tr>
						<td class="w30 no">8</td>
						<td> test</td>
					</tr>
					<tr>
						<td class="w30 no">9</td>
						<td> test</td>
					</tr>
					<tr>
						<td class="w30 no">10</td>
						<td> test</td>
					</tr>
				</table>
			</div>
		</div>
		
		<!-- 서브콘텐츠 끝 -->
		
	</div>
</div>
	

<%-- 지우면 안됨 subMenu.jsp에 container 시작 태그 있음 --%>
</div>
<!-- container end -->

<%@ include file="../userInclude/footer.jsp" %>