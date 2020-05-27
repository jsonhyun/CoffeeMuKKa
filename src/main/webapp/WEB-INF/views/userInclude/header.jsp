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
<!-- 로그인, 회원가입 modal 관련 -->
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/modal.css" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

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
		/* 로그인, 아이디 찾기, 비번찾기, 회원가입 전환시 작동 */
		$(".login").click(function() {
			$('#findIdModal').removeClass("fade");
			$('#findPassModal').removeClass("fade");
			$('#joinModal').removeClass("fade");
			$('#loginModal').removeClass("fade");
			$('#findIdModal').modal('hide');
			$('#findPassModal').modal('hide');
			$('#joinModal').modal('hide');
			$('#loginModal').modal('show');
			$('#findIdModal').addClass("fade");
			$('#findPassModal').addClass("fade");
			$('#joinModal').addClass("fade");
			$('#loginModal').addClass("fade");
		})
		$("#findId").click(function() {
			$('#findIdModal').removeClass("fade");
			$('#loginModal').removeClass("fade");
			$('#loginModal').modal('hide');
			$('#findIdModal').modal('show');
			$('#findIdModal').addClass("fade");
			$('#loginModal').addClass("fade");
		})
		$("#findPass").click(function() {
			$('#findPassModal').removeClass("fade");
			$('#loginModal').removeClass("fade");
			$('#loginModal').modal('hide');
			$('#findPassModal').modal('show');
			$('#findPassModal').addClass("fade");
			$('#loginModal').addClass("fade");
		})
		$(".join").click(function() {
			$('#findIdModal').removeClass("fade");
			$('#findPassModal').removeClass("fade");
			$('#joinModal').removeClass("fade");
			$('#loginModal').removeClass("fade");
			$('#loginModal').modal('hide');
			$('#findIdModal').modal('hide');
			$('#findPassModal').modal('hide');
			$('#joinModal').modal('show');
			$('#joinModal').addClass("fade");
			$('#findIdModal').addClass("fade");
			$('#findPassModal').addClass("fade");
			$('#loginModal').addClass("fade");
		})
		/* 로그인 처리 */
		$("form").submit(function (e) {
			var id = $("input[name='userId']").val();
			var password = $("input[name='password']").val();
			
			if(id == "" || password == ""){
				alert("사용자ID와 비밀번호를 정확히 입력해주세요.")
				return false;
			}
		})
		
		var result = $("#result").val();
		if(result == 1){
			alert("해당 아이디가 존재하지 않습니다. 회원가입을 해주세요.");
		}else if(result == 2){
			alert("비밀번호가 틀렸습니다. 다시 확인해주세요.");
		}
	}) 
</script>
<style>
	.inputRegi{
		width: 325px;
	    height: 30px;
	    margin-bottom: 15px;
	    padding: 5px;
	    border: 1px solid #949494;
	}
	.inputRegi1{
		width: 240px;
	    height: 30px;
	    margin-bottom: 15px;
	    padding: 5px;
	    border: 1px solid #949494;
	}
	input::-webkit-input-placeholder {
		color:#949494;
	}
	.chgColorSpan{
		color:#949494;
	}
	.btnCheck{
		height: 42px;
	    width: 80px;
	    border: 1px;
	    background: #303A50;
	    color: white;
	}
</style>
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
					<c:if test="${Auth == null }">
						<li><a href="#" data-toggle="modal" data-target="#loginModal">LOGIN</a></li>
						<li><a href="#" data-toggle="modal" data-target="#joinModal">JOIN</a></li>
						<input type="hidden" value="${error }" id="result">
					</c:if>
					<c:if test="${Auth != null }">
						<li><a href="#">${Auth}님</a></li>
						<li><a href="${pageContext.request.contextPath }/user/logout">LOGOUT</a></li>
					</c:if>
					<li><a href="#"><i class="fab fa-instagram-square"></i></a></li>
					<li><a href="#"><i class="fab fa-facebook-square"></i></a></li>
				</ul>
			</div>
		</div>
		<!-- topMenu end -->
		
		<!-- 로그인 modal start -->
		<div class="modal fade" id="loginModal">
			<div class="modal-dialog modal-dialog-scrollable">
				<div class="modal-content">
				    
					<!-- Modal Header -->
					<div class="modal-header">
						<h3 class="modal-title">Coffee MuKKa 로그인하기</h3>
					</div>
					
					<!-- Modal body -->
					<div class="modal-body">
						<form action="${pageContext.request.contextPath }/user/login" method="post">
							<img src="${pageContext.request.contextPath }/resources/images/login.png" style="width: 460px;">
							<h3 style="color: #ed7d31;margin: 10px;">오늘은 어디서 커피한잔? '커 피 무 까'</h3>
							<input class="inputRegi" type="text" name="userId" placeholder="아이디" style="margin-bottom: 20px;"><br>
							<input class="inputRegi" type="password" name="password" placeholder="비밀번호" style="margin-bottom: 5px;"><br>
							<a href="#" id="findId" style="color:#5B9BD5;margin-left: 150px;">아이디 찾기</a>
							<a href="#" id="findPass" style="color:#5B9BD5;margin-left: 10px;">비밀번호 찾기</a><br>
							<input type="submit" class="btn btn-primary" style="margin-top: 5px;width: 337px;" value="로그인">
						</form>
					</div>
					
					<!-- Modal footer -->
					<div style="border-top: 1px solid #ccc;">
						<div style="text-align: center;margin: 16px;">
							<span>아이디가 없으신가요?</span> <a href="#" class="join" style="color:#ed7d31;">회원가입</a>
						</div>
					</div>
				    
				</div>
			</div>
		</div>
		<!-- 로그인 modal end -->
		
		<!-- 아이디찾기 modal start -->
		<div class="modal fade" id="findIdModal">
			<div class="modal-dialog modal-dialog-scrollable">
				<div class="modal-content">
				    
					<!-- Modal Header -->
					<div class="modal-header">
						<h3 class="modal-title">Coffee MuKKa 아이디 찾기</h3>
					</div>
					
					<!-- Modal body -->
					<div class="modal-body">
						<form action="#" method="post">
							<input type="radio" name="usertype" value="normal" style="margin-bottom: 25px;"> <label style="margin-right:30px;">개인 회원</label>
							<input type="radio" name="usertype" value="owner"> <label>사업자 회원</label>
							<input class="inputRegi" type="text" name="name" placeholder="이름" style="margin-bottom: 20px;"><br>
							<input class="inputRegi" type="email" name="email" placeholder="이메일" style="margin-bottom: 30px;"><br>
							<input type="button" class="btn btn-danger login" style="margin-top: 5px;width: 167px;margin-right: -15px;" value="돌아가기">
							<input type="submit" class="btn btn-primary" style="margin-top: 5px;width: 167px;" value="아이디 찾기">
						</form>
					</div>
					
					<!-- Modal footer -->
					<div style="border-top: 1px solid #ccc;">
						<div style="text-align: center;margin: 16px;">
							<span>아이디가 없으신가요?</span> <a href="#" class="join" style="color:#ed7d31;">회원가입</a>
						</div>
					</div>
				    
				</div>
			</div>
		</div>
		<!-- 아이디찾기 modal end -->
		
		<!-- 비밀번호 찾기 modal start -->
		<div class="modal fade" id="findPassModal">
			<div class="modal-dialog modal-dialog-scrollable">
				<div class="modal-content">
				    
					<!-- Modal Header -->
					<div class="modal-header">
						<h3 class="modal-title">Coffee MuKKa 비밀번호 찾기</h3>
					</div>
					
					<!-- Modal body -->
					<div class="modal-body">
						<form action="#" method="post">
							<input type="radio" name="usertype" value="normal" style="margin-bottom: 25px;"> <label style="margin-right:30px;">개인 회원</label>
							<input type="radio" name="usertype" value="owner"> <label>사업자 회원</label>
							<input class="inputRegi" type="text" name="userId" placeholder="아이디" style="margin-bottom: 20px;"><br>
							<input class="inputRegi" type="email" name="email" placeholder="이메일" style="margin-bottom: 30px;"><br>
							<input type="button" class="btn btn-danger login" style="margin-top: 5px;width: 167px;margin-right: -15px;" value="돌아가기">
							<input type="submit" class="btn btn-primary" style="margin-top: 5px;width: 167px;" value="비밀번호 찾기">
						</form>
					</div>
					
					<!-- Modal footer -->
					<div style="border-top: 1px solid #ccc;">
						<div style="text-align: center;margin: 16px;">
							<span>아이디가 없으신가요?</span> <a href="#" class="join" style="color:#ed7d31;">회원가입</a>
						</div>
					</div>
				    
				</div>
			</div>
		</div>
		<!-- 비밀번호 찾기 modal end -->
		
		<!-- 회원가입 modal start -->
		<div class="modal fade" id="joinModal">
			<div class="modal-dialog modal-dialog-scrollable">
				<div class="modal-content">
				    
					<!-- Modal Header -->
					<div class="modal-header">
						<h3 class="modal-title">Coffee MuKKa 회원 가입</h3>
					</div>
					
					<!-- Modal body -->
					<div class="modal-body">
						<input class="inputRegi1" type="text" id="userId" placeholder="아이디">
						<button class="btnCheck">중복확인</button><br>
						<input class="inputRegi" type="password" id="pass" placeholder="비밀번호"><br>
						<input class="inputRegi" type="password" id="passConfirm" placeholder="비밀번호 확인"><br>
						<input class="inputRegi" type="text" id="name" placeholder="이름"><br>
						<input class="inputRegi1" type="text" id="nick" placeholder="닉네임">
						<button class="btnCheck">중복확인</button><br>
						<select class="inputRegi" style="height: 42px;width: 337px;color: #949494;">
							<option selected="selected">성별</option>
							<option value="남자">남자</option>
							<option value="여자">여자</option>
						</select>
						<input class="inputRegi" type="date" id="birth" placeholder="생년월일" style="color: #949494;"><br>
						<input class="inputRegi" type="text" id="tel" placeholder="전화번호"><br>
						<input class="inputRegi1" type="text" id="address" placeholder="주소">
						<button class="btnCheck">주소검색</button><br>
						<input class="inputRegi" type="email" id="email" placeholder="이메일"><br>
						<input type="radio" name="userType" id="userType" value="개인회원"> <span class="chgColorSpan">개인회원</span>
						<input type="radio" name="userType" id="userType" value="사업자회원" style="margin-left:20px;"> <span class="chgColorSpan">사업자회원</span><br>
						<button type="button" class="btn btn-primary">가입하기</button>
					</div>
					
					<!-- Modal footer -->
					<div style="border-top: 1px solid #ccc;">
						<div style="text-align: center;margin: 16px;">
							<span>이미 가입하셨나요?</span> <a href="#" class="login" style="color:#ed7d31;">로그인</a>
						</div>
					</div>
				    
				</div>
			</div>
		</div>
		<!-- 회원가입 modal end -->
		
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
								<li><a href="${pageContext.request.contextPath}/user/community/cafeReview">생생 카페 탐방기</a></li>
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