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
	    padding-right: 10px;
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
	.position{
		position: relative;
	}
	.modifyDate{
		color: #ED7D31;
		font-size: 14px;
		position: absolute;
		top: 0;
		right: 0;
	}
	#love{
		height: 30px;
	    position: absolute;
	    top: 26px;
	    right: 80px;
	}
	#like{
		height: 30px;
	    position: absolute;
	    top: 25px;
	    right: 20px;
	}
	#oneline{
		margin: 10px 40px;
	}
</style>	
	<div class="content subPageContent position">
		<!-- 서브페이지 콘텐츠 -->
		<div class="contentArea">
			<!-- 서브페이지 공통적인 타이틀 -->
			<h2 class="subPageTitle">
				<span class="title">카르멜</span>
				<span class="subTit grayB"> <span style="font-size: 22px; vertical-align: text-bottom;">|</span> <a href="https://www.instagram.com/cafe_carmel/"><img src="${pageContext.request.contextPath }/resources/images/sns.png" style="height: 18px;"></a></span>
			</h2>
			
			<!-- 서브콘텐츠 시작 -->
			<div class="modifyDate">Update 2020/05/10</div>
			<img id="love" src="${pageContext.request.contextPath }/resources/images/key1.png">
			<img id="like" src="${pageContext.request.contextPath }/resources/images/like.png">
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
		<div>
			<p id="oneline">
				<img src="${pageContext.request.contextPath }/resources/images/ssang-1.png">
				<span style="font-size: 20px;">논밭을 보며 즐기는 여유 한잔</span>
				<img src="${pageContext.request.contextPath }/resources/images/ssang-2.png" style="vertical-align: text-top;">
			</p>
			<p style="font-size: 20px; padding: 5px 25px;">
				편안한 휴식을 느낄 수 있는 베이커리 카페 카르멜. 스페셜티 싱글 오리진 에스프레소와 건강 우리밀빵, 푸른 전경을 선사합니다.
			</p>
			<div style="padding: 20px 65px;">
				<div class="bxslider" style="text-align: center;">
					<div><img src="${pageContext.request.contextPath }/resources/images/sumnail/carmel-1.jpg" style="height: 600px;" ></div>
					<div><img src="${pageContext.request.contextPath }/resources/images/sumnail/carmel-2.jpg" style="height: 600px;"></div>
					<div><img src="${pageContext.request.contextPath }/resources/images/sumnail/carmel-3.jpg" style="height: 600px;"></div>
					<div><img src="${pageContext.request.contextPath }/resources/images/sumnail/carmel-4.jpg" style="height: 600px;"></div>
				</div>
			</div>
		</div>
	</div>
	
<script>
	$(function () {
/* 		$('.bxslider').bxSlider({
			auto: true,
			autoControls: true,
			stopAutoOnClick: true,
			pager: true,
			slideWidth: 1000
		}); */
	     $('.bxslider').bxSlider({
	         auto: true,
	         speed: 300,
	         pause: 4000,
	         mode: 'fade',
	         pager: true,
	         slideWidth: 800
	         });
	})
</script>
<%-- 지우면 안됨 subMenu.jsp에 container 시작 태그 있음 --%>
</div>
<!-- container end -->

<%@ include file="../userInclude/footer.jsp" %>