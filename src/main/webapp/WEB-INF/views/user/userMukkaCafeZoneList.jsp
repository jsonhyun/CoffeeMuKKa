<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../userInclude/header.jsp" %>
<%@ include file="../userInclude/subMenu.jsp" %>
<style>
	.cafeLocationSearch {
		padding: 10px 0 20px;
	}

	.cafeLocationSearch .selectLeft {
		float: left;
	}
	
	.cafeLocationSearch .selectRight {
		float: right;
	}
	
	.locationCafe{
		height: 160px;
		margin-bottom: 30px;
	}
	
	.locationListLeft{
		width: 160px;
	    height: 160px;
	    display: inline;
	    float: left;
	    border-top: 1px solid black;
	    border-bottom: 1px solid black;
	}
	
	.locationListLeft img{
		width: 160px;
		height: 160px;
	}
	
	.locationListCenter{
		line-height: 40px;
	    float: left;
	    width: 530px;
	    border-top: 1px solid black;
	    border-bottom: 1px solid black;
	    height: 160px;
	    padding-left: 22px;
	}
	
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
	    padding: 0 10px;
	    border-radius: 5px;
	    color: white;
	    display: inline;
	}
	
	.cafeTitle{
		display: inline;
    	margin-left: 10px;
	}
	
	.locationListRight{
		border-top: 1px solid black;
		border-bottom: 1px solid black;
	    float: left;
	    height: 160px;
	}
	
	.cafeRegiDate{
		float: left;
   		padding: 5px 11px;
	}
	
	.cafeZzim{
		width: 30px;
    	padding: 5px 10px 0 10px;
	}
	
	.visitAndLocation{
		line-height: 40px;
	    width: 23px;
	    float: left;
	    margin-right: 5px;
	}
	
	.visitAndLocation img{
		vertical-align: middle;
	}
	
	.visit{
		width: 180px;
    	float: left;
	}
	.oneline{
		height: 70px;
	    line-height: 70px;
	    margin-left: 10px;
	}
	
	.replyAndView{
		line-height: 40px;
	    width: 80px;
	    float: left;
	    margin-right: 5px;
	    border: 1px solid black;
	    border-radius: 5px; 
	    text-align: center;
	    margin: 10px 0 10px 10px;
	}
	
	.replyAndView img{
		vertical-align: middle;
	}
	
	.more{
		clear: both;
	    border: 1px solid black;
	    width: 173px;
	    margin-left: 10px;
	    text-align: center;
	    height: 40px;
	    line-height: 40px;
	}
</style>

	<div class="content subPageContent">
		<!-- 서브페이지 콘텐츠 -->
		<div class="contentArea">
			<h2 class="subPageTitle">
				<span class="title">위치별</span>
				<span class="subTit grayB"> | 위치 중심의 카페정보</span>
			</h2>
			
			<!-- 서브콘텐츠 시작 -->
			<!-- 위치, 테마 선택 및 검색란 -->
			<div class="cafeLocationSearch clearfix">
				<div class="selectLeft">
					<select name="" id="">
						<option value="all">전체</option>
					</select>
					<select name="" id="">
						<option value="all">전체</option>
					</select>
				</div>
				<div class="selectRight">
					<select name="" id="">
						<option value="">제목</option>
					</select>
					<input type="text" name="" placeholder="검색어를 입력하세요." />
					<input type="submit" value="검색" class="navyBtn"/>
				</div>
			</div>
			
			<!-- 위치별 카페 리스트 -->
			<div class="locationCafe">
				<div class="locationListLeft">
					<img src="${pageContext.request.contextPath }/resources/images/mansion-1.jpg">
				</div>
				<div class="locationListCenter">
					<div class="daeguIcon">대구</div>
					<div class="themeIcon">#데이트</div>
					<h2 class="cafeTitle">한시십일분카페 AM 1:11</h2>
					<p class="oneline">'공간이 지니는 특별함을 누구보다 잘 알기에 준비했어요'</p>
					<div>
						<div class="visit">
							<div class="visitAndLocation">
								<img src="${pageContext.request.contextPath }/resources/images/menu2_1.png">
							</div>
							<div>
								<span>100</span>개의 탐방기
							</div>
						</div>
						<div class="location">
							<div class="visitAndLocation">
								<img src="${pageContext.request.contextPath }/resources/images/menu5.png">
							</div>
							<div>
								<p>대구 달서구 용산동 44길 14</p>
							</div>
						</div>
					</div>
				</div>
				<div class="locationListRight">
					<div>
						<p class="cafeRegiDate">2020/05/11 12:30</p>
						<img class="cafeZzim" src="${pageContext.request.contextPath }/resources/images/key1.png">
					</div>
					<div>
						<div class="replyAndView">
							<img src="${pageContext.request.contextPath }/resources/images/reply.png">
							<span>20</span>
						</div>
						<div class="replyAndView">
							<img src="${pageContext.request.contextPath }/resources/images/view.png">
							<span>200</span>
						</div>
					</div>
					<div class="more">
						<p><span>카페정보</span> 더보기 ></p>
					</div>
				</div>
			</div>
			
			<div class="locationCafe">
				<div class="locationListLeft">
					<img src="${pageContext.request.contextPath }/resources/images/mansion-1.jpg">
				</div>
				<div class="locationListCenter">
					<div class="daeguIcon">대구</div>
					<div class="themeIcon">#데이트</div>
					<h2 class="cafeTitle">한시십일분카페 AM 1:11</h2>
					<p class="oneline">'공간이 지니는 특별함을 누구보다 잘 알기에 준비했어요'</p>
					<div>
						<div class="visit">
							<div class="visitAndLocation">
								<img src="${pageContext.request.contextPath }/resources/images/menu2_1.png">
							</div>
							<div>
								<span>100</span>개의 탐방기
							</div>
						</div>
						<div class="location">
							<div class="visitAndLocation">
								<img src="${pageContext.request.contextPath }/resources/images/menu5.png">
							</div>
							<div>
								<p>대구 달서구 용산동 44길 14</p>
							</div>
						</div>
					</div>
				</div>
				<div class="locationListRight">
					<div>
						<p class="cafeRegiDate">2020/05/11 12:30</p>
						<img class="cafeZzim" src="${pageContext.request.contextPath }/resources/images/key1.png">
					</div>
					<div>
						<div class="replyAndView">
							<img src="${pageContext.request.contextPath }/resources/images/reply.png">
							<span>20</span>
						</div>
						<div class="replyAndView">
							<img src="${pageContext.request.contextPath }/resources/images/view.png">
							<span>200</span>
						</div>
					</div>
					<div class="more">
						<p><span>카페정보</span> 더보기 ></p>
					</div>
				</div>
			</div>
		</div>
	</div>
	
<%-- 지우면 안됨 subMenu.jsp에 container 시작 태그 있음 --%>
</div>
<!-- container end -->

<%@ include file="../userInclude/footer.jsp" %>