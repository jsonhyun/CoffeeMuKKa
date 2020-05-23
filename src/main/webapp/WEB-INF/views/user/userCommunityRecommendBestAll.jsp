<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../userInclude/header.jsp" %>
<%@ include file="../userInclude/subMenu.jsp" %>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/jquery-ui.css"> 
<script src="${pageContext.request.contextPath }/resources/js/jquery-ui.min.js"></script>
<style>
	li,a:focus{
		outline: none;
	}
	div#tabWrap{ /* 탭전체 */
		width: 100%;
		/* background-color: red; */
	}
	div#tabs{ /* 탭 */
		width: 100%;
		/* background-color: green; */
	}
	ul#tabs-ul{ /* 탭 제목-ul */
		width: 100%;
	}
	 li.tabs-li{ /* 탭 제목-li */
	 	width: 24%;
	 }
	 a#tabName1{
	 	margin-left: 25px;
	 }
	 a.tabName2{
	 	margin-left: 65px;
	 } 
	 
	 /* 리스트 스타일 */
	 ol{
	 	width: 100%;
	 }
	 ol li.rank_wrap{
	 	width: 100%;
	 	height: 155px;
	 	margin: 15px 0;
	 	border-bottom: 1px solid #BDBDBD;
	 	
	 }
	 ol li.rank_wrap div{
	 	 float: left;
	 }
	 div.rank_num{
	 	width: 40px;
	 	height: 155px;
	 	font-size: 25px;
	 	color: #FF7171;
	 	clear: both;
	 	padding-top: 6px;
	 }
 	div.rank_img{
 		width: 14%;
 		padding: 14px;
 	}
  	div.rank_img img{
  		width: 100%;
  		height: 120px;
  	}
	div.rank_info{
		width: 77%;
		height: 120px;
		padding: 14px 0px;
	}
	div.rank_keyword{
		width: 100%;
		height: 27px;
	}
	div.rank_keyword span.zoneBtn,div.rank_keyword span.themeKeySmall{
		font-size: 14px;
		margin-right: 5px;
		float: left;
	}
	div.rank_keyword span.rDate{
		float: right;
		font-size: 14px;
	}
	div.rank_title{
		width: 100%;
		height: 40px;
		padding: 4px 0;
	}
	div.rank_title span.rTitle{
		font-size: 25px;
		font-weight: bold;
		color: black;
		float: left;
		padding-left: 3px;
	}
	div.rank_title span.rGrade img{
		width: 20px;
		height: 20px;
		margin-top: 9px;
		padding-right: 10px;
		float: right;
	}
	div.rank_title span.rNick{
		font-weight: bold;
		color: black;
		font-size: 14px;
		float: right;
		margin-top: 9px;
	}	
 	div.rank_viewAll{
		width: 100%;
		height: 20px;
		font-size : 13px;
	}
	div.rank_viewAll span.rView,span.rThumb,span.rReply{
		padding-right: 10px;
	}

	div.rank_text{
		width: 100%;
		padding: 5px 0;
		font-size: 14px;
		color: navy;
	}
</style>
	
<div class="content subPageContent">
	<!-- 서브페이지 콘텐츠 -->
	<div class="contentArea">
		<!-- 서브페이지 공통적인 타이틀 -->
		<h2 class="subPageTitle">
			<span class="title">MuKKa人 추천 카페</span>
			<span class="subTit grayB"> | 세 상 에! 이런 카페가 있는지 몰랐지?</span>
		</h2>

			<!-- 베스트 리스트  -->
			<div id="tabWrap">
				<div id="tabs">
					<ul id="tabs-ul">
						<li class="tabs-li"><a href="#tabs-1" id="tabName1">MuKKa人의 선택</a></li> <!-- 고민 -->
						<li class="tabs-li"><a href="#tabs-2" class="tabName2">추천순</a></li> <!-- 추천순 -->
						<li class="tabs-li"><a href="#tabs-3" class="tabName2">조회순</a></li> <!-- 조회순 -->
						<li class="tabs-li"><a href="#tabs-3" class="tabName2">댓글순</a></li> <!-- 댓글순 -->
					</ul>
					
					<!-- 탭1 -->
					<div id="tabs-1">
						<ol>
						 <a href="#">							
							<li class="rank_wrap">
								<div class="rank_num">20</div>
								<div class="rank_img">
									<img src = "${pageContext.request.contextPath}/resources/images/rc_noImg.png">
								</div>
								<div class="rank_info">
									<div class="rank_keyword">
										<span class="zoneBtn zoneOrangeIconSmall">동성로</span>
										<span class="ame themeKeySmall">#착한아메</span>
										<span class="rDate">2020-05-23</span>
									</div>
									<div class="rank_title">	
										<span class="rTitle">프리지아</span>
										<span class="rNick">커피가좋아(hceo1004)</span>
										<span class="rGrade"><img src = "${pageContext.request.contextPath}/resources/images/yeolmae.png"></span> 
									</div>
									<div class="rank_viewAll">
											<span class="rView">조회 <span class="red">10</span></span>
											<span class="rThumb">추천  <span class="red">20</span></span>
											<span class="rReply">댓글  <span class="red">20</span></span>										
									</div>
									<div class="rank_text"><p>정말 여기 너무 좋은거 같아요 꿀잠자고 왔습니다. 커피맛도 너무 맜있구요!!!</p></div>
								</div>
							</li>
							</a>
							
						 <a href="#">							
							<li class="rank_wrap">
								<div class="rank_num">20</div>
								<div class="rank_img">
									<img src = "${pageContext.request.contextPath}/resources/images/rc_noImg.png">
								</div>
								<div class="rank_info">
									<div class="rank_keyword">
										<span class="zoneBtn zoneOrangeIconSmall">동성로</span>
										<span class="ame themeKeySmall">#착한아메</span>
										<span class="rDate">2020-05-23</span>
									</div>
									<div class="rank_title">	
										<span class="rTitle">프리지아</span>
										<span class="rNick">커피가좋아(hceo1004)</span>
										<span class="rGrade"><img src = "${pageContext.request.contextPath}/resources/images/yeolmae.png"></span> 
									</div>
									<div class="rank_viewAll">
											<span class="rView">조회 <span class="red">10</span></span>
											<span class="rThumb">추천  <span class="red">20</span></span>
											<span class="rReply">댓글  <span class="red">20</span></span>										
									</div>
									<div class="rank_text"><p>정말 여기 너무 좋은거 같아요 꿀잠자고 왔습니다. 커피맛도 너무 맜있구요!!!</p></div>
								</div>
							</li>
							</a>
							
						 <a href="#">							
							<li class="rank_wrap">
								<div class="rank_num">20</div>
								<div class="rank_img">
									<img src = "${pageContext.request.contextPath}/resources/images/rc_noImg.png">
								</div>
								<div class="rank_info">
									<div class="rank_keyword">
										<span class="zoneBtn zoneOrangeIconSmall">동성로</span>
										<span class="ame themeKeySmall">#착한아메</span>
										<span class="rDate">2020-05-23</span>
									</div>
									<div class="rank_title">	
										<span class="rTitle">프리지아</span>
										<span class="rNick">커피가좋아(hceo1004)</span>
										<span class="rGrade"><img src = "${pageContext.request.contextPath}/resources/images/yeolmae.png"></span> 
									</div>
									<div class="rank_viewAll">
											<span class="rView">조회 <span class="red">10</span></span>
											<span class="rThumb">추천  <span class="red">20</span></span>
											<span class="rReply">댓글  <span class="red">20</span></span>										
									</div>
									<div class="rank_text"><p>정말 여기 너무 좋은거 같아요 꿀잠자고 왔습니다. 커피맛도 너무 맜있구요!!!</p></div>
								</div>
							</li>
							</a>
							
						 <a href="#">							
							<li class="rank_wrap">
								<div class="rank_num">20</div>
								<div class="rank_img">
									<img src = "${pageContext.request.contextPath}/resources/images/rc_noImg.png">
								</div>
								<div class="rank_info">
									<div class="rank_keyword">
										<span class="zoneBtn zoneOrangeIconSmall">동성로</span>
										<span class="ame themeKeySmall">#착한아메</span>
										<span class="rDate">2020-05-23</span>
									</div>
									<div class="rank_title">	
										<span class="rTitle">프리지아</span>
										<span class="rNick">커피가좋아(hceo1004)</span>
										<span class="rGrade"><img src = "${pageContext.request.contextPath}/resources/images/yeolmae.png"></span> 
									</div>
									<div class="rank_viewAll">
											<span class="rView">조회 <span class="red">10</span></span>
											<span class="rThumb">추천  <span class="red">20</span></span>
											<span class="rReply">댓글  <span class="red">20</span></span>										
									</div>
									<div class="rank_text"><p>정말 여기 너무 좋은거 같아요 꿀잠자고 왔습니다. 커피맛도 너무 맜있구요!!!</p></div>
								</div>
							</li>
							</a>
							
						 <a href="#">							
							<li class="rank_wrap">
								<div class="rank_num">20</div>
								<div class="rank_img">
									<img src = "${pageContext.request.contextPath}/resources/images/rc_noImg.png">
								</div>
								<div class="rank_info">
									<div class="rank_keyword">
										<span class="zoneBtn zoneOrangeIconSmall">동성로</span>
										<span class="ame themeKeySmall">#착한아메</span>
										<span class="rDate">2020-05-23</span>
									</div>
									<div class="rank_title">	
										<span class="rTitle">프리지아</span>
										<span class="rNick">커피가좋아(hceo1004)</span>
										<span class="rGrade"><img src = "${pageContext.request.contextPath}/resources/images/yeolmae.png"></span> 
									</div>
									<div class="rank_viewAll">
											<span class="rView">조회 <span class="red">10</span></span>
											<span class="rThumb">추천  <span class="red">20</span></span>
											<span class="rReply">댓글  <span class="red">20</span></span>										
									</div>
									<div class="rank_text"><p>정말 여기 너무 좋은거 같아요 꿀잠자고 왔습니다. 커피맛도 너무 맜있구요!!!</p></div>
								</div>
							</li>
							</a>
							
						 <a href="#">							
							<li class="rank_wrap">
								<div class="rank_num">20</div>
								<div class="rank_img">
									<img src = "${pageContext.request.contextPath}/resources/images/rc_noImg.png">
								</div>
								<div class="rank_info">
									<div class="rank_keyword">
										<span class="zoneBtn zoneOrangeIconSmall">동성로</span>
										<span class="ame themeKeySmall">#착한아메</span>
										<span class="rDate">2020-05-23</span>
									</div>
									<div class="rank_title">	
										<span class="rTitle">프리지아</span>
										<span class="rNick">커피가좋아(hceo1004)</span>
										<span class="rGrade"><img src = "${pageContext.request.contextPath}/resources/images/yeolmae.png"></span> 
									</div>
									<div class="rank_viewAll">
											<span class="rView">조회 <span class="red">10</span></span>
											<span class="rThumb">추천  <span class="red">20</span></span>
											<span class="rReply">댓글  <span class="red">20</span></span>										
									</div>
									<div class="rank_text"><p>정말 여기 너무 좋은거 같아요 꿀잠자고 왔습니다. 커피맛도 너무 맜있구요!!!</p></div>
								</div>
							</li>
							</a>																																			
						</ol>
						</div>
					<!-- 탭2 -->
					<div id="tabs-2">
	
					</div>
					<!-- 탭3 -->
					<div id="tabs-3">
		
					</div>
					
					<!-- 탭4 -->
					<div id="tabs-4">

					</div>
					
				</div><!-- div id="tabs" -->
			</div><!-- div id="tabWrap" -->

		</div><!-- div class="RC_Area"  -->
				
	</div><!-- div class="contentArea" -->
</div><!-- div class="content subPageContent" -->

<!-- 자바스크립트 & 제이쿼리 -->
<script>
$( "#tabs" ).tabs();
</script>
<%-- 지우면 안됨 subMenu.jsp에 container 시작 태그 있음 --%>
</div>
<!-- container end -->

<%@ include file="../userInclude/footer.jsp" %>