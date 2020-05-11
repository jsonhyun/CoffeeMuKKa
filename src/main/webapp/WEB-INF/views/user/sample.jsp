<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../userInclude/header.jsp" %>
<%@ include file="../userInclude/subMenu.jsp" %>
		
	<div class="content subPageContent">
		<!-- 서브페이지 콘텐츠 -->
		<div class="contentArea">
			<!-- 서브페이지 공통적인 타이틀 -->
			<h2 class="subPageTitle">
				<!-- title은 json데이터로 받아옴 subTit만 작성하면 됨-->
				<span class=title>sample</span>
				<span class="subTit grayB"> | sample</span>
			</h2>
			
			<!-- 서브페이지 콘텐츠 들어갈 공간 -->
			<div class="subContentWrap">
				
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
			</div>
		</div>
	</div>
	
<script>
</script>
<%-- 지우면 안됨 subMenu.jsp에 container 시작 태그 있음 --%>
</div>
<!-- container end -->

<%@ include file="../userInclude/footer.jsp" %>