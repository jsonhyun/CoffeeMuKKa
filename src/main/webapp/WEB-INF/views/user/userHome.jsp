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
		$("#rankUl").width($(".rankWrap").width());
		
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
							<li>
								<div class="keyIcon">
									<img src="${pageContext.request.contextPath }/resources/images/key1.png" alt="keyIcon" />
								</div>
								<div class="spot"></div>
								<div class="keyText">
									<span class="keyword blue">#데이트</span>하기좋은
								</div>
							</li>
							<li>
								<div class="keyIcon">
									<img src="${pageContext.request.contextPath }/resources/images/key2.png" alt="keyIcon" />
								</div>
								<div class="spot"></div>
								<div class="keyText">
									<span class="keyword blue">#뷰</span>가 끝내주는
								</div>
							</li>
							<li>
								<div class="keyIcon">
									<img src="${pageContext.request.contextPath }/resources/images/key3.png" alt="keyIcon" />
								</div>
								<div class="spot"></div>
								<div class="keyText">
									<span class="keyword blue">#착한아메</span>
								</div>
							</li>
							<li>
								<div class="keyIcon">
									<img src="${pageContext.request.contextPath }/resources/images/key4.png" alt="keyIcon" />
								</div>
								<div class="spot"></div>
								<div class="keyText">
									나는야<span class="keyword blue">#디저트</span>파
								</div>
							</li>
							<li>
								<div class="keyIcon">
									<img src="${pageContext.request.contextPath }/resources/images/key5.png" alt="keyIcon" />
								</div>
								<div class="spot"></div>
								<div class="keyText">
									<span class="keyword blue">#댕댕이</span>와 함께
								</div>
							</li>
							<li>
								<div class="keyIcon">
									<img src="${pageContext.request.contextPath }/resources/images/key6.png" alt="keyIcon" />
								</div>
								<div class="spot"></div>
								<div class="keyText">
									<span class="keyword blue">#작업</span>하기 안성맞춤
								</div>
							</li>
						</ul>
						<div class="line"></div>
					</div>
					<div class="searchBarWrap clearfix">
						<div class="zoneBar">
							<input type="hidden" name="zoneName" id="zone"/>
							<div class="zoneBarBox">
								<img src="${pageContext.request.contextPath }/resources/images/point.png" alt="icon" />
								<span>어디에서</span>
							</div>							
							<div class="zoneList">
								<ul>
									<!-- 데이터 만들어지면 c:foreach문으로 데이터 넣어서 구현 -->
									<li>
										<img src="${pageContext.request.contextPath }/resources/images/point.png" alt="icon" />
										<span>동성로</span>	
									</li>
									<li>
										<img src="${pageContext.request.contextPath }/resources/images/point.png" alt="icon" />
										<span>수성못 들안길</span>
									</li>
								</ul>
							</div>
						</div>
						<div class="themeBar">
							<input type="hidden" name="themeName"/>
							<div class="zoneBarBox">
								<img src="${pageContext.request.contextPath }/resources/images/bar_search.png" alt="icon" />
								<span>커.피.무.까 ?</span>
							</div>	
						</div>
						<a class="searchBtn" href="#">
							<img src="${pageContext.request.contextPath }/resources/images/main_search.png" alt="searchIcon" />
						</a>
					</div>
				</div>
			</div>
		</div>
	</header>
</body>
</html>