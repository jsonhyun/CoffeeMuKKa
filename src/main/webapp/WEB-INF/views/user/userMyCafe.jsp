<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../userInclude/header.jsp" %>

<style>
	#content{
	    width: 1200px;
	    margin-left: 351px;
	    margin-bottom: 100px;
	    margin-top: 10px;
	    height: 1200px;
	    text-align: center;
	}
	#myMenu li{
		float: left;
	    width: 115px;
	    height: 40px;
	    text-align: center;
	    line-height: 40px;
	    border: 1px solid #ccc;
	    margin: 10px 0 10px 10px;
	}
	#myMenu li:nth-child(2) a{
		color: white;
	}
	#myMenu li:nth-child(2) {
		background-color: #303A50;
		cursor: pointer;
	}
	#myMenu li:hover {
		background-color: #303A50;
		cursor: pointer;
	}
	#myMenu li:hover a{
		color: white;
	}
	.subTitleName{
	    width: 100px;
	    text-align: center;
	    height: 40px;
	    line-height: 40px;
	    margin: 20px 10px;
	    font-size: 18px;
	    font-weight: bold;
	}

</style>

<script>
	$(".activeTitle").text(" > " + "마이페이지");
	
</script>

<div>
	<div id="content">
		<ul id="myMenu">
			<li><a href="${pageContext.request.contextPath }/user/mypage?userId=${userId}">회원정보관리</a></li>
			<li><a href="${pageContext.request.contextPath }/user/mycafe?userId=${userId}">내카페 관리</a></li>
			<li><a href="${pageContext.request.contextPath }/user/mywishcafe?userId=${userId}">즐겨찾는 카페</a></li>
			<li><a href="${pageContext.request.contextPath }/user/myrecommand?userId=${userId}">나의 추천 카페</a></li>
			<li><a href="${pageContext.request.contextPath }/user/myreview?userId=${userId}">나의 카페 탐방기</a></li>
		</ul>
		<div style="clear: both;"></div>
		<div class="subTitleName">공사중입니다. 잠시만 기다려주세요.</div>
		
		
	</div>
</div>
	
<%-- 지우면 안됨 subMenu.jsp에 container 시작 태그 있음 --%>
</div>
<!-- container end -->

<%@ include file="../userInclude/footer.jsp" %>