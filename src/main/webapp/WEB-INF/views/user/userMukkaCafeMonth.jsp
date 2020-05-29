<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../userInclude/header.jsp" %>
<%@ include file="../userInclude/subMenu.jsp" %>
<style>
	/* 리스트배너 영역 */
	.monthCafeLists {
		position: relative;
		margin-bottom: 80px;
	}

	.monthCafeLists img {
		width: 100%;
		display: block;
	}
	
	.monthCafeLists .toMonth {
		color: #fff;
		position: absolute;
		top: 30px;
		left: 100px;
		font-size: 50px;
		font-family: serif;
		font-weight: bold;
		writing-mode: vertical-rl;
	}
	
	.monthCafeLists .orderWrap {
		position: absolute;
		font-size: 25px;
	}
	
	.monthCafeLists .orderWrap a:hover {
		font-weight: bold;
	}
	
	.monthCafeLists .orderWrap:nth-last-of-type(5) { top: 5px; right: 240px;}
	.monthCafeLists .orderWrap:nth-last-of-type(4) { top: 85px; right: 160px;}
	.monthCafeLists .orderWrap:nth-last-of-type(3) { top: 165px; right: 130px;}
	.monthCafeLists .orderWrap:nth-last-of-type(2) { top: 245px; right: 140px;}
	.monthCafeLists .orderWrap:nth-last-of-type(1) { bottom: 15px; right: 220px;}
	
	
	/* 월간카페 */
	.monthCafeWrap {
		line-height: 50px;
		margin-bottom: 80px;
	}
	
	.monthCafeWrap p {
		font-size: 25px;
		font-weight: 700;
	}
	
	.monthCafeWrap .orderTitie {
		font-size: 25px;
		font-weight: 700;
		text-decoration: underline;
	}
	
	.monthCafeWrap p:nth-of-type(3) {
		font-size: 20px;
		font-weight: 400;
	}
	
	.monthCafeWrap .imgBox {
		width: 100%;
		height: 580px;
		overflow: hidden;
		position: relative;
		margin: 20px 0;
	}
	
	.monthCafeWrap .imgBox img {
		width: 100%;
		min-height: 100%;
		position: absolute;
		top: 50%;
		left: 50%;
		transform : translate(-50%, -50%);
	}
	
	.monthCafeWrap .btns {
		overflow: hidden;
	}
	
	.monthCafeWrap .btns .cafeBtn {
		border: 1px solid #000;
		font-size: 14px;
		padding: 0 10px;
		float: right;
	}
	
	.monthCafeWrap .lineDummy {
		height: 80px;
		border-left: 1px solid #000;
	}
	
</style>

	<div class="content subPageContent">
		<!-- 서브페이지 콘텐츠 -->
		<div class="contentArea">
			<!-- 서브페이지 공통적인 타이틀 -->
			<h2 class="subPageTitle">
				<span class="title">月刊카페</span>
				<span class="subTit grayB"> | 매월 MuKKa에서 카페 다섯 곳을 소개해드립니다.</span>
			</h2>
				
			<div class="monthCafeLists">
				<img src="${pageContext.request.contextPath }/resources/images/monthCafeImg.png" alt="월간카페배너배경이미지" />
				<p class="toMonth"></p>
				<c:forEach var="i" begin="0" end="4">				
					<p class="orderWrap"><a href="#"><span class="orderNum"></span><span class="cafeName orange"></span></a></p>
				</c:forEach>
			</div>
			
			<div class="monthCafeWrap">
				<p class="orderTitie">첫번째, </p>
				<p class="monthCafeName ornage">카페이름</p>
				<p class="gray">'<span class="monthCafeContent">한줄내용</span>'</p>
				<div class="imgBox">
					<img src="${pageContext.request.contextPath }/resources/images/sumnail/23g-1.jpg" alt="카페이미지" />
				</div>
				<div class="btns">
					<a href="#" class="cafeBtn"><span class="orange">카페정보</span> 더보기 ></a>
				</div>
				<div class="lineDummy"></div>
			</div>

		</div>
	</div>
<%-- 지우면 안됨 subMenu.jsp에 container 시작 태그 있음 --%>
</div>
<!-- container end -->
<script>
	//숫자 포멧
	function pad(n, width) {
	  n = n + '';
	  return n.length >= width ? n : new Array(width - n.length + 1).join('0') + n;
	}

	var toYear = new Date().getFullYear();
	var toMonth = new Date().getMonth()+1;
	
	$(".toMonth").text(toYear+"."+pad(toMonth, 2));
	
	var orderNum = ["첫번째, ", "두번째, ", "세번째, ", "네번째, ", "다섯번째, "];
	$(".orderNum").each(function(i, obj) {
		$(obj).text(orderNum[i]);
	});
	
	$(".cafeName").each(function(i, obj) {
		$(obj).text("카페이름");
	});
	
	/* $(".orderTitie").each(function(i, obj){
		$(obj).text(orderNum[i]);
	}) */
	
	
	//console.log(orderNum[0]);
	
	
	
</script>
<%@ include file="../userInclude/footer.jsp" %>