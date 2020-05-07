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
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/userMenu.css" />

<!-- jQuery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<!-- 폰트어썸 -->
<script src="https://kit.fontawesome.com/6f2f0f2d95.js"></script>

<script>
	$(function(){
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
			
			$(".zoneTitle").text(zone).css("color", "black");
			$(".zoneBar input[name='zoneName']").val(zone);
			$(".zoneList").slideUp(300);
		})
		
		/* 테마 */
		var keywords = "";
		
		$(".keys li").click(function(){
			var keyword = $(this).attr("data-keyword");
			var $spanThemeKey = $("<span>").addClass("themeKey").addClass(keyword).text("#" + keyword);
			
			var onImg = $(this).attr("data-onImg");
			var img = $(this).attr("data-img")
			var imgPath = "${pageContext.request.contextPath }/resources/images/";
			
			if($(this).hasClass("on")){
				$(this).removeClass("on");
				$(this).find(".keyIcon img").attr("src", imgPath+img);
				
				keywords = keywords.replace(keyword+",", "");
				$("."+keyword).remove();
			} else {				
				$(this).addClass("on");
				$(this).find(".keyIcon img").attr("src", imgPath+onImg);
				keywords += keyword + ",";
				$(".themeBarBox").append($spanThemeKey);
			}
			
			if($(".themeBarBox").find(".themeKey").length == 0) {
				$(".themeSapn").show();
			} else {
				$(".themeSapn").hide();
			}
			$(".themeBar input[name='themeName']").val(keywords);
		})
	})
</script>
</head>
<body>
	<header>
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
					<li><a href="#">ABOUT</a></li>
					<li><a href="#">CMukka</a></li>
					<li><a href="#">LOGIN</a></li>
					<li><a href="#">JOIN</a></li>
					<li><a href="#"><i class="fab fa-instagram-square"></i></a></li>
					<li><a href="#"><i class="fab fa-facebook-square"></i></a></li>
				</ul>
			</div>
		</div>
		
		<div id="mainMenuWrap">
			<div class="menuBox">
				<div class="mainMenu clearfix">
					<ul class="clearfix">
						<li><a href="#"><img src="${pageContext.request.contextPath }/resources/images/menu1.png" alt="menu" class="menuIcon"/> 커피무까</a></li>
						<li><a href="#"><img src="${pageContext.request.contextPath }/resources/images/menu2.png" alt="menu" class="menuIcon"/> 커뮤니티</a></li>
						<li><a href="#"><img src="${pageContext.request.contextPath }/resources/images/menu3.png" alt="menu" class="menuIcon"/> 포인트샵</a></li>
						<li><a href="#"><img src="${pageContext.request.contextPath }/resources/images/menu4.png" alt="menu" class="menuIcon"/> 공지사항</a></li>
					</ul>
					<div class="mainSearchBtn"><a href="#"><i class="fas fa-angle-down"></i></a></div>
				</div>
			</div>
			<div class="mainSearchBox">
				<div class="mainSearch">
					<div class="keysWrap">
						<ul class="keys">
							<li data-keyword="데이트" data-key="date" data-onImg="key1_1.png" data-Img="key1.png">
								<div class="keyIcon keyItem">
									<img src="${pageContext.request.contextPath }/resources/images/key1.png" alt="keyIcon" />
								</div>
								<div class="spot keyItem"></div>
								<div class="keyText">
									<span class="keyword blue">#데이트</span>하기좋은
								</div>
							</li>
							<li data-keyword="뷰" data-key="view" data-onImg="key2_2.png" data-Img="key2.png">
								<div class="keyIcon keyItem">
									<img src="${pageContext.request.contextPath }/resources/images/key2.png" alt="keyIcon" />
								</div>
								<div class="spot keyItem"></div>
								<div class="keyText">
									<span class="keyword blue">#뷰</span>가 끝내주는
								</div>
							</li>
							<li data-keyword="착한아메" data-key="ame" data-onImg="key3_3.png" data-Img="key3.png">
								<div class="keyIcon keyItem">
									<img src="${pageContext.request.contextPath }/resources/images/key3.png" alt="keyIcon" />
								</div>
								<div class="spot keyItem"></div>
								<div class="keyText">
									<span class="keyword blue">#착한아메</span>
								</div>
							</li>
							<li data-keyword="디저트" data-key="dessert" data-onImg="key4_4.png" data-Img="key4.png">
								<div class="keyIcon keyItem">
									<img src="${pageContext.request.contextPath }/resources/images/key4.png" alt="keyIcon" />
								</div>
								<div class="spot"></div>
								<div class="keyText ">
									나는야<span class="keyword blue">#디저트</span>파
								</div>
							</li>
							<li data-keyword="댕댕이" data-key="dag" data-onImg="key5_5.png" data-Img="key5.png">
								<div class="keyIcon keyItem">
									<img src="${pageContext.request.contextPath }/resources/images/key5.png" alt="keyIcon" />
								</div>
								<div class="spot keyItem"></div>
								<div class="keyText">
									<span class="keyword blue">#댕댕이</span>와 함께
								</div>
							</li>
							<li data-keyword="작업" data-key="work" data-onImg="key6_6.png" data-Img="key6.png">
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
									<!-- 데이터 만들어지면 c:foreach문으로 데이터 넣어서 구현 -->
									<li class="zoneItem" data-zone="동성로">
										<img src="${pageContext.request.contextPath }/resources/images/point.png" alt="icon" />
										<span>동성로</span>	
									</li>
									<li class="zoneItem" data-zone="수성못 들안길">
										<img src="${pageContext.request.contextPath }/resources/images/point.png" alt="icon" />
										<span>수성못 들안길</span>
									</li>
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
							<a href="#">
								<img src="${pageContext.request.contextPath }/resources/images/main_search.png" alt="searchIcon" />
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>
</body>
</html>