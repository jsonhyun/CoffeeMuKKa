<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../userInclude/header.jsp" %>
<%@ include file="../userInclude/subMenu.jsp" %>
<style>
	.daeguIcon{
		background: url(/coffeemukka/resources/images/point_w.png) no-repeat;
	    background-size: 19px;
	    background-position: 5px center;
	    background-color: #ED7D31;
	    width: 60px;
	    height: 25px;
	    line-height: 25px;
	    text-align: right;
	    padding: 0 30px;
	    padding-right: 5px;
	    margin-right: 20px;
	    border-radius: 5px;
	    color: white;
	    display: inline;
}
	
	.themeIcon{
		background-size: 19px;
	    background-position: 5px center;
	    background-color: #b038fa;
	    width: 60px;
	    height: 25px;
	    line-height: 25px;
	    text-align: right;
	    padding-right: 10px;
	    margin-right: 5px;
	    padding: 0 10px;
	    border-radius: 5px;
	    color: white;
	    display: inline;
}
</style>	
	<div class="content subPageContent">
		<!-- 서브페이지 콘텐츠 -->
		<div class="contentArea">
			<!-- 서브페이지 공통적인 타이틀 -->
			<h2 class="subPageTitle">
				<span class="title">카르멜</span>
				<span class="subTit grayB"> <span style="font-size: 22px; vertical-align: text-bottom;">|</span> <a href="https://www.instagram.com/cafe_carmel/"><img src="${pageContext.request.contextPath }/resources/images/sns.png" style="height: 18px;"></a></span>
			</h2>
			
			<!-- 서브콘텐츠 시작 -->
			<div class="modifyDate">Update 2020/05/10</div>
			<div class="daeguIcon">달성군</div>
			<c:set var="theme1" value="1"/>
			<c:choose>
				<c:when test="${theme1 == 1 }">
					<div class="themeIcon" style="background-color: #b038fa;">#데이트</div>
				</c:when>
				<c:when test="${theme1 == 2 }">
					<div class="themeIcon" style="background-color: #528236;">#뷰</div>
				</c:when>
				<c:when test="${theme1 == 3 }">
					<div class="themeIcon" style="background-color: #96814c;">#착한아메</div>
				</c:when>
				<c:when test="${theme1 == 4 }">
					<div class="themeIcon" style="background-color: #f2486f;">#디저트</div>
				</c:when>
				<c:when test="${theme1 == 5 }">
					<div class="themeIcon" style="background-color: #FFB232;">#댕댕이</div>
				</c:when>
				<c:when test="${theme1 == 6 }">
					<div class="themeIcon" style="background-color: #0170c2;">#작업</div>
				</c:when>
			</c:choose>
			
			<c:set var="theme2" value="3"/>
			<c:choose>
				<c:when test="${theme2 == 1 }">
					<div class="themeIcon" style="background-color: #b038fa;">#데이트</div>
				</c:when>
				<c:when test="${theme2 == 2 }">
					<div class="themeIcon" style="background-color: #528236;">#뷰</div>
				</c:when>
				<c:when test="${theme2 == 3 }">
					<div class="themeIcon" style="background-color: #96814c;">#착한아메</div>
				</c:when>
				<c:when test="${theme2 == 4 }">
					<div class="themeIcon" style="background-color: #f2486f;">#디저트</div>
				</c:when>
				<c:when test="${theme2 == 5 }">
					<div class="themeIcon" style="background-color: #FFB232;">#댕댕이</div>
				</c:when>
				<c:when test="${theme2 == 6 }">
					<div class="themeIcon" style="background-color: #0170c2;">#작업</div>
				</c:when>
			</c:choose>
			
			<c:set var="theme3" value="4"/>
			<c:choose>
				<c:when test="${theme3 == 1 }">
					<div class="themeIcon" style="background-color: #b038fa;">#데이트</div>
				</c:when>
				<c:when test="${theme3 == 2 }">
					<div class="themeIcon" style="background-color: #528236;">#뷰</div>
				</c:when>
				<c:when test="${theme3 == 3 }">
					<div class="themeIcon" style="background-color: #96814c;">#착한아메</div>
				</c:when>
				<c:when test="${theme3 == 4 }">
					<div class="themeIcon" style="background-color: #f2486f;">#디저트</div>
				</c:when>
				<c:when test="${theme3 == 5 }">
					<div class="themeIcon" style="background-color: #FFB232;">#댕댕이</div>
				</c:when>
				<c:when test="${theme3 == 6 }">
					<div class="themeIcon" style="background-color: #0170c2;">#작업</div>
				</c:when>
			</c:choose>
		</div>
	</div>
	
<script>
</script>
<%-- 지우면 안됨 subMenu.jsp에 container 시작 태그 있음 --%>
</div>
<!-- container end -->

<%@ include file="../userInclude/footer.jsp" %>