<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Coffee Mukka</title>
<!-- user css -->
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/userCommon.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/userHeaderFooterMenu.css" />

<!-- jQuery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<!-- 폰트어썸 -->
<script src="https://kit.fontawesome.com/6f2f0f2d95.js"></script>
<!-- handlebars -->
<script src="https://cdn.jsdelivr.net/npm/handlebars@latest/dist/handlebars.js"></script>
<!-- bxslider -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>

<script>
	$(function(){
		/* main 페이지 searchBox 오픈 */
		var url = location.href.split("/");
		
		if(url[5] == "") {
			$(".mainSearchBox").addClass("open");
			$(".mainSearchBtn a").html('<span class="cafeSearchBtn">카페 검색 닫기</span> <i class="fas fa-angle-up"></i>');
			$(".activeTotalCnt").html('현재 <span class="actTotal">500</span>개의 <b>카페정보</b>와 <span class="actTotal">300</span>개의 <b>카페 탐방기</b>가 있습니다.');
		} else {
			$(".mainSearchBox").addClass("close");
			$(".mainSearchBtn a").html('<span class="cafeSearchBtn">카페 검색 열기</span> <i class="fas fa-angle-down"></i>');
			$(".activeTotalCnt").empty();
		}
		
		/* searchBox 슬라이드 */
		$(".mainSearchBtn a").click(function(e){
			e.preventDefault();
			
			if($(".mainSearchBox").hasClass("open")) {
				$(".mainSearchBox").slideUp();
				$(".mainSearchBox").removeClass("open");
				$(this).html('<span class="cafeSearchBtn">카페 검색 열기</span> <i class="fas fa-angle-down"></i>');
			} else {
				$(".mainSearchBox").slideDown();
				$(".mainSearchBox").addClass("open");
				$(this).html('<span class="cafeSearchBtn">카페 검색 닫기</span> <i class="fas fa-angle-up"></i>');
			}
		})
		
		/* 카페순위 리스트 width */
		$("#rankUl").width($(".rankWrap").width());
		
		/* 카페순위 리스트 */
		$(".rankOne").hover(function(){
			$("#rankUl").stop().slideDown();
			$(".rankIcon").html('<i class="fas fa-angle-up"></i>');
		}, function(){
			$("#rankUl").stop().slideUp();
			$(".rankIcon").html('<i class="fas fa-angle-down"></i>');
		})
		
		$("#rankUl").hover(function() {
			$(this).stop().slideDown();
			$(".rankIcon").html('<i class="fas fa-angle-up"></i>');
		}, function(){
			$(this).stop().slideUp();
			$(".rankIcon").html('<i class="fas fa-angle-down"></i>');
		})
		
		
		/* 지역 리스트 */
		$(".zoneBarBox").click(function() {
			$(".zoneList").slideToggle();
		})
		
		$(".zoneList li").click(function(){
			var zone = $(this).attr("data-zone");
			var zoneNo = $(this).attr("data-zoneNo");
			
			$(".zoneTitle").text(zone).css("color", "black");
			$(".zoneBar input[name='zoneName']").val(zoneNo);
			$(".zoneList").slideUp(300);
		})
		
		/* 테마 */
		var keywords = "";
		
		$(".keys li").click(function(){
			var keyword = $(this).attr("data-keyword");
			var themeNo = $(this).attr("data-themeNo");
			var key = $(this).attr("data-key");
			var $spanThemeKey = $("<span>").addClass("themeKey").addClass(key).text("#" + keyword);
			
			var onImg = $(this).attr("data-onImg");
			var img = $(this).attr("data-img")
			var imgPath = "${pageContext.request.contextPath }/resources/images/";
			
			if($(this).hasClass("on")){
				$(this).removeClass("on");
				$(this).find(".keyIcon img").attr("src", imgPath+img);
				
				keywords = keywords.replace(themeNo+",", "");
				$("."+key).remove();
			} else {				
				$(this).addClass("on");
				$(this).find(".keyIcon img").attr("src", imgPath+onImg);
				keywords += themeNo + ",";
				$(".themeBarBox").append($spanThemeKey);
			}
			
			if($(".themeBarBox").find(".themeKey").length == 0) {
				$(".themeSapn").show();
			} else {
				$(".themeSapn").hide();
			}
			$(".themeBar input[name='themeName']").val(keywords);
			
		})
		
		$("#mainMenuUl > li").hover(function(){
			$(this).find(".subMenuUl").stop().slideDown();
		}, function(){
			$(this).find(".subMenuUl").stop().slideUp();
		})
		
		
		/* 메인 카페 검색 */
		//http://localhost:8080/coffeemukka/user/mukkaCafe/search?page=1&zoneNo=0&themeNos=1,3,&searchTheme=1
		$("#sendBtn").click(function(){
			var zoneNo = $("#zone").val() == "" ? 0 : $("#zone").val();
			var themeNos = $("input[name='themeName']").val();
			
			if(zoneNo == 0 && themeNos == "") {
				alert("카페 검색 조건은 선택해주세요.");
				return false;
			}
			
			location.href = "${pageContext.request.contextPath}/user/mukkaCafe/search?zoneNo="+zoneNo+"&themeNos="+themeNos+"&searchTheme=";
			
			return false;
		})
		
	}) 
</script>
</head>
<body>
	<header>
		<!-- topMenu start -->
		<div id="topMenu" class="clearfix">
			<div class="logoWrap">
				<a href="${pageContext.request.contextPath }/user/"><img src="${pageContext.request.contextPath }/resources/images/logo.png" alt="logo" /></a>
			</div>
			<div class="rankWrap">
				<p>N월의 카페순위</p>
				<p class="rankOne"><span class="red bold">1.</span> <a href="#">TEST</a> <span class="rankIcon"><i class="fas fa-angle-down"></i></span></p>
				<ul id="rankUl">
					<li><span class="red bold">2.</span> <a href="#">TEST</a></li>
					<li><span class="red bold">3.</span> <a href="#">TEST</a></li>
					<li><span class="red bold">4.</span> <a href="#">TEST</a></li>
					<li><span class="red bold">5.</span> <a href="#">TEST</a></li>
				</ul>
			</div>
			<div class="topMenuWrap">
				<ul>
					<li><a href="#">ABOUT CMukka</a></li>
					<li><a href="#">LOGIN</a></li>
					<li><a href="#">JOIN</a></li>
					<li><a href="#"><i class="fab fa-instagram-square"></i></a></li>
					<li><a href="#"><i class="fab fa-facebook-square"></i></a></li>
				</ul>
			</div>
		</div>
		<!-- topMenu end -->
		
		<!-- mainMenu start -->
		<div id="mainMenuWrap">
			<div class="menuBox">
				<div class="mainMenu clearfix">
					<ul class="clearfix" id="mainMenuUl">
						<li>
							<a href="${pageContext.request.contextPath }/user/mukkaCafe" class="menuName">
								<img src="${pageContext.request.contextPath }/resources/images/menu1.png" alt="menu" id="mukkCafe" class="menuIcon"/>
								<span>커피무까</span>
							</a>
							<ul class="subMenuUl">
								<li><a href="${pageContext.request.contextPath}/user/mukkaCafe">커피무까</a></li>
								<li><a href="${pageContext.request.contextPath}/user/mukkaCafe/zone">위치별</a></li>
								<li><a href="${pageContext.request.contextPath}/user/mukkaCafe/theme">테마별</a></li>
								<li><a href="${pageContext.request.contextPath}/user/mukkaCafe/mukkaBest">MuKKa 베스트</a></li>
								<li><a href="${pageContext.request.contextPath}/user/mukkaCafe/monthCafe">月別카페</a></li>
							</ul>
						</li>
						<li>
							<a href="${pageContext.request.contextPath }/user/community" class="menuName">
								<img src="${pageContext.request.contextPath }/resources/images/menu2.png" alt="menu" id="community" class="menuIcon"/>
								<span>커뮤니티</span>
							</a>
							<ul class="subMenuUl">
								<li><a href="${pageContext.request.contextPath}/user/community">MuKKa의 전당</a></li>
								<li><a href="${pageContext.request.contextPath}/user/community/cafeReview">생생 카체 탐방기</a></li>
								<li><a href="${pageContext.request.contextPath}/user/community/cafeRecommend">MuKKa人 추천 카페</a></li>
								<li><a href="${pageContext.request.contextPath}/user/community/#">사장님 고민 나눔</a></li>
								<li><a href="${pageContext.request.contextPath}/user/community/#">자유게시판</a></li>
							</ul>
						</li>
						<li>
							<a href="#" class="menuName">
								<img src="${pageContext.request.contextPath }/resources/images/menu3.png" alt="menu" id="pointShop" class="menuIcon"/>
								<span>포인트샵</span>
							</a>
						</li>
						<li>
							<a href="#" class="menuName">
								<img src="${pageContext.request.contextPath }/resources/images/menu4.png" alt="menu" id="board" class="menuIcon"/>
								<span>공지사항</span>
							</a>
						</li>
					</ul>
					<div class="mainSearchBtn"><a href="#"></a></div>
				</div>
			</div>
			
			<!-- searchBox start -->
			<div class="mainSearchBox">
				<div class="mainSearch">
					<div class="keysWrap">
						<ul class="keys">
							<li data-keyword="데이트" data-themeNo="1" data-key="date" data-onImg="key1_1.png" data-Img="key1.png">
								<div class="keyIcon keyItem">
									<img src="${pageContext.request.contextPath }/resources/images/key1.png" alt="keyIcon" />
								</div>
								<div class="spot keyItem"></div>
								<div class="keyText">
									<span class="keyword blue">#데이트</span>하기좋은
								</div>
							</li>
							<li data-keyword="뷰" data-themeNo="2" data-key="view" data-onImg="key2_2.png" data-Img="key2.png">
								<div class="keyIcon keyItem">
									<img src="${pageContext.request.contextPath }/resources/images/key2.png" alt="keyIcon" />
								</div>
								<div class="spot keyItem"></div>
								<div class="keyText">
									<span class="keyword blue">#뷰</span>가 끝내주는
								</div>
							</li>
							<li data-keyword="착한아메" data-themeNo="3" data-key="ame" data-onImg="key3_3.png" data-Img="key3.png">
								<div class="keyIcon keyItem">
									<img src="${pageContext.request.contextPath }/resources/images/key3.png" alt="keyIcon" />
								</div>
								<div class="spot keyItem"></div>
								<div class="keyText">
									<span class="keyword blue">#착한아메</span>
								</div>
							</li>
							<li data-keyword="디저트" data-themeNo="4" data-key="dessert" data-onImg="key4_4.png" data-Img="key4.png">
								<div class="keyIcon keyItem">
									<img src="${pageContext.request.contextPath }/resources/images/key4.png" alt="keyIcon" />
								</div>
								<div class="spot keyItem"></div>
								<div class="keyText ">
									나는야<span class="keyword blue">#디저트</span>파
								</div>
							</li>
							<li data-keyword="댕댕이" data-themeNo="5" data-key="dog" data-onImg="key5_5.png" data-Img="key5.png">
								<div class="keyIcon keyItem">
									<img src="${pageContext.request.contextPath }/resources/images/key5.png" alt="keyIcon" />
								</div>
								<div class="spot keyItem"></div>
								<div class="keyText">
									<span class="keyword blue">#댕댕이</span>와 함께
								</div>
							</li>
							<li data-keyword="작업" data-themeNo="6" data-key="work" data-onImg="key6_6.png" data-Img="key6.png">
								<div class="keyIcon keyItem">
									<img src="${pageContext.request.contextPath }/resources/images/key6.png" alt="keyIcon" />
								</div>
								<div class="spot keyItem"></div>
								<div class="keyText">
									<span class="keyword blue">#작업</span>하기 안성맞춤
								</div>
							</li>
						</ul>
						<div class="line"></div>
					</div>
					<div class="searchBarWrap clearfix">
						<div class="zoneBar bar">
							<input type="hidden" name="zoneName" id="zone"/>
							<div class="zoneBarBox barBox">
								<img src="${pageContext.request.contextPath }/resources/images/point.png" alt="icon" />
								<span class="zoneTitle">어디에서</span>
							</div>							
							<div class="zoneList">
								<ul>
									<c:forEach var="zone" items="${zoneList }">
										<li class="zoneItem" data-zoneNo="${zone.zoneNo }" data-zone="${zone.zoneName }">
											<img src="${pageContext.request.contextPath }/resources/images/point.png" alt="icon" />
											<span>${zone.zoneName }</span>	
										</li>
									</c:forEach>
								</ul>
							</div>
						</div>
						<div class="themeBar bar">
							<input type="hidden" name="themeName"/>
							<div class="themeBarBox barBox">
								<img src="${pageContext.request.contextPath }/resources/images/bar_search.png" alt="icon" />
								<span class="themeSapn">커.피.무.까 ?</span>
							</div>	
						</div>
						<div class="searchBtn">
							<a id="sendBtn" href="#">
								<img src="${pageContext.request.contextPath }/resources/images/main_search.png" alt="searchIcon" />
							</a>
						</div>
					</div>
				</div>
			</div>
			<!-- searchBox end -->
			
		</div>
		<!-- mainMenu end -->
		
	</header>
	
	<!-- container start -->
	<div class="container">
		<div class="activeMenus">
			<p class="activeMenu">Coffee MuKKa <span class="activeTitle"></span></p>
			<p class="activeTotalCnt"></p>
		</div>
	</div>