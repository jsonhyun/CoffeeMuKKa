<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../userInclude/header.jsp" %>

<style>
	#content{
	    border: 1px solid red;
	    width: 1200px;
	    margin-left: 351px;
	    margin-bottom: 100px;
	    margin-top: 10px;
	    height: 550px;
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
	#myMenu li:first-child {
		color: white;
		background-color: #303A50;
		cursor: pointer;
	}
	#myMenu li:hover {
		color: white;
		background-color: #303A50;
		cursor: pointer;
	}
	#grade{
	    width: 100px;
	    text-align: center;
	    height: 40px;
	    line-height: 40px;
	    margin: 20px 10px;
	    font-size: 18px;
	    font-weight: bold;
	}
	#tblGrade{
		width: 100%;
	    text-align: center;
	    border-top: 2px solid #545454;
	}
	#tblGrade td{
		border-left:1px;
		border-right:1px;
		border-bottom: 1px solid #ccc;
		height: 40px;
	}
</style>

<script>
	$(".activeTitle").text(" > " + "마이페이지");
</script>

<div>
	<div id="content">
		<ul id="myMenu">
			<li>회원정보관리</li>
			<li>내카페 등록하기</li>
			<li>즐겨찾는 카페</li>
			<li>나의 추천 카페</li>
			<li>나의 카페 탐방기</li>
		</ul>
		<div style="clear: both;"></div>
		<div id="grade">내 등급 정보</div>
		<table id="tblGrade">
			<tr>
				<td>내 등급</td>
				<td>커피새싹</td>
				<td>포인트 현황</td>
				<td>12000 POINT</td>
			</tr>
			<tr>
				<td>내 게시글 수</td>
				<td>10 개</td>
				<td>최초 가입일자</td>
				<td>2020-05-20</td>
			</tr>
		</table>
	</div>
</div>
	
<%-- 지우면 안됨 subMenu.jsp에 container 시작 태그 있음 --%>
</div>
<!-- container end -->

<%@ include file="../userInclude/footer.jsp" %>