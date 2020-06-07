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
<!-- 다음 주소검색 -->
<script type="text/JavaScript" src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>

<script>
	/* 주소 검색 */
	function openDaumZipAddress() {
		new daum.Postcode({
			oncomplete:function(data) {
				jQuery("#address").val(data.address);
				jQuery("#detailAddress").focus();
				console.log(data);
			}
		}).open();
	}
	
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
			$('#findIdModal').removeClass("fade");
			$('#findPassModal').removeClass("fade");
			$('#loginModal').removeClass("fade");
			$('#loginModal').modal('hide');
			$('#findIdModal').modal('hide');
			$('#findPassModal').modal('show');
			$('#findIdModal').addClass("fade");
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
		$("#loginForm").submit(function (e) {
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
			$("#logo").trigger("click");
		}else if(result == 2){
			alert("비밀번호가 틀렸습니다. 다시 확인해주세요.");
			$("#logo").trigger("click");
		}else if(result == 3){
			alert("관리자 권한이 없습니다. 다시 확인해주세요.");
			$("#logo").trigger("click");
		}
		
		/* 아이디 찾기 */
		$("#btnFindId").click(function() {
			var userType = $("input[name='userType']").val();
			var name = $("input[name='name']").val();
			var email = $("input[name='email']").val();
			
			if(userType == "" || name == "" || email == ""){
				alert("모든 항목을 선택/입력 해주세요.")
				return false;
			}
			var json = JSON.stringify({"userType":{"userType":userType}, "name":name, "email":email});
			
			$.ajax({
				url:"${pageContext.request.contextPath }/rest/findid/",
				type:"post",
				headers:{"Content-Type":"application/json"},
				data:json,
				dataType:"text",
				success:function(res){
					$("input[name='userType']").removeAttr("checked");
					$("input[name='name']").val("");
					$("input[name='email']").val("");
					 
					if(res == "NULL"){
						alert("찾고 있는 아이디가 없습니다. 회원가입을 해주세요.");
						return false;
					}
					
					var con = confirm("회원님의 아이디는 "+res+"입니다. 비밀번호도 찾으시겠어요?");
					if(con == true){
						$("#findPass").trigger("click");	
					}else{
						$(".login").trigger("click");
					}
					
				}
			})
		})
		
		/* 비번 찾기 */
		$("#btnFindPass").click(function() {
			var userType = $("input[name='userTypePw']").val();
			var userId = $("input[name='userIdPw']").val();
			var email = $("input[name='emailPw']").val();
			
			if(userType == "" || userId == "" || email == ""){
				alert("모든 항목을 선택/입력 해주세요.")
				return false;
			}
			var json = JSON.stringify({"userType":{"userType":userType}, "userId":userId, "email":email});
			
			$.ajax({
				url:"${pageContext.request.contextPath }/rest/findpass/",
				type:"post",
				headers:{"Content-Type":"application/json"},
				data:json,
				dataType:"text",
				success:function(res){
					alert("회원님의 임시비밀번호를 발급하였습니다. 이메일을 확인하시고 로그인해주세요.");
					$("input[name='userTypePw']").removeAttr("checked");
					$("input[name='userIdPw']").val("");
					$("input[name='emailPw']").val("");
					$(".login").trigger("click");
				}
			})
		})
		
		/* 아이디 중복 체크 */
		$("#btnDuplCheckId").click(function() {
			var userId = $("input[name='duplCheckId']").val();
			
			if(userId == ""){
				alert("아이디를 입력해주세요.");
				return false;
			}
			
			var json = JSON.stringify({"userId":userId});
			
			$.ajax({
				url:"${pageContext.request.contextPath }/rest/duplcheckid/",
				type:"post",
				headers:{"Content-Type":"application/json"},
				data:json,
				dataType:"text",
				success:function(res){
					if(res == "duplicate"){
						alert("이미 사용중이 아이디입니다.");
						$("input[name='duplCheckId']").val("");
					}else{
						alert("사용 가능한 아이디입니다.");
						$("#flagId").val("true");
					}
				}
			})
		})
		
		/* 비밀번호 정규표현식 체크 */
		var passRules = /^(?=.*\d{1,50})(?=.*[~`!@#$%\^&*()-+=]{1,50})(?=.*[a-zA-Z]{1,50}).{8,50}$/;
		
		$("#pass1").change(function() {
			var pass1 = $("#pass1").val();
			if(passRules.test(pass1)){
				alert("사용가능한 비밀번호입니다.");
			}else{
				alert("사용 불가능한 비밀번호입니다.(숫자, 특수문자, 영문 1자리 이상 포함, 8자리 이상)")
				$("#pass1").val('');
			}
		})
		$("#pass2").change(function() {
			var pass1 = $("#pass1").val();
			var pass2 = $("#pass2").val();
			if(pass1 == pass2){
				alert("비밀번호가 일치합니다.");
			}else{
				alert("비밀번호가 일치하지 않습니다. 다시 확인해주세요.");
				$("#pass2").val('');
			}
		})
		
		/* 닉네임 중복 체크 */
		$("#btnDuplCheckNick").click(function() {
			var nick = $("input[name='duplCheckNick']").val();
			
			if(nick == ""){
				alert("닉네임을 입력해주세요.");
				return false;
			}
			
			var json = JSON.stringify({"nick":nick});
			
			$.ajax({
				url:"${pageContext.request.contextPath }/rest/duplchecknick/",
				type:"post",
				headers:{"Content-Type":"application/json"},
				data:json,
				dataType:"text",
				success:function(res){
					if(res == "duplicate"){
						alert("이미 사용중인 닉네임입니다.");
						$("input[name='duplCheckNick']").val("");
					}else{
						alert("사용 가능한 닉네임입니다.");
						$("#flagNick").val("true");
					}
				}
			})
		})
		/* 가입하기 */
		$("#btnJoin").click(function() {
			var userId = $("input[name='duplCheckId']").val();
			var password = $("#pass2").val();
			var name = $("#joinName").val();
			var nick = $("input[name='duplCheckNick']").val();
			var gender = $("select[name='gender']").val();
			var birthday = $("#joinBirth").val();
			var tel = $("#joinTel").val();
			var address = $("input[name='address']").val();
			var detailAddress = $("input[name='detailAddress']").val();
			var email = $("#joinEmail").val();
			var userType = $("input[name='joinUserType']").val();
			
			if(userId=="" || password=="" || name=="" || nick=="" || gender=="" || birthday=="" || tel=="" || address=="" || email=="" || userType==""){
				alert("모든 항목을 작성해주세요.");
				return false;
			}
			var flagId = $("#flagId").val();
			var flagNick = $("#flagNick").val();
			alert(flagId);
			alert(flagNick);
			if(flagId == "false" || flagNick == "false"){
				alert("아이디 또는 닉네임 중복확인을 해주세요.");
				return false;
			}
			
			var json = JSON.stringify({"userId":userId, "password":password, "name":name, "nick":nick, 
									   "gender": gender, "birthday":birthday, "tel":tel, "address":address, 
									   "detailAddress":detailAddress, "email":email, "userType":{"userType":userType}});
			
			$.ajax({
				url:"${pageContext.request.contextPath }/rest/register/",
				type:"post",
				headers:{"Content-Type":"application/json"},
				data:json,
				dataType:"text",
				success:function(res){
					if(res == "SUCCESS"){
						alert("회원 가입이 되었습니다. 로그인하여 커피무까를 즐겨주세요.");
						$("input[name='duplCheckId']").val("");
						$("#pass1").val("");
						$("#pass2").val("");
						$("#joinName").val("");
						$("input[name='duplCheckNick']").val("");
						$("select[name='gender']").val("성별");
						$("#joinBirth").val("");
						$("#joinTel").val("");
						$("input[name='address']").val("");
						$("input[name='detailAddress']").val("");
						$("#joinEmail").val("");
						$("input[name='joinUserType']").removeAttr("checked");
						$(".login").trigger("click");
					}
				}
			})
			
		})
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
	span.hotPlace{
		color: white;
		background: #FF007F;
		border-radius: 5px;
		padding: 0 8px;
		letter-spacing: 2px;
		font-size: 12px;
		margin-left: 8px;	
	}
</style>
</head>
<body>
	<header>
		<!-- topMenu start -->
		<div id="topMenu" class="clearfix">
			<div class="logoWrap">
				<a href="${pageContext.request.contextPath }/user/"><img src="${pageContext.request.contextPath }/resources/images/logo.png" alt="logo" id="logo" /></a>
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
					<c:choose>
						<c:when test="${Auth == null }">
							<li><a href="#" data-toggle="modal" data-target="#loginModal">LOGIN</a></li>
							<li><a href="#" data-toggle="modal" data-target="#joinModal">JOIN</a></li>
							<input type="hidden" value="${error }" id="result">
						</c:when>
						<c:when test="${Auth == '관리자' }">
							<li>
								<a href="${pageContext.request.contextPath }/admin/">
									<button style="cursor: pointer;width: 70px;height: 30px;border: 1px;background: red;color: white;letter-spacing: 3px;font-weight: 500;">관리자</button>
								</a>
							</li>
							<li><a href="${pageContext.request.contextPath }/user/logout">LOGOUT</a></li>
						</c:when>
						<c:when test="${Auth != '관리자' }">
							<li><a href="${pageContext.request.contextPath }/user/mypage">${Auth}님</a></li>
							<li><a href="${pageContext.request.contextPath }/user/logout">LOGOUT</a></li>
						</c:when>
					</c:choose>
					
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
						<form id="loginForm" action="${pageContext.request.contextPath }/user/" method="post">
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
						<div>
							<input type="radio" name="userType" value="2" style="margin-bottom: 25px;"> <label style="margin-right:30px;">개인 회원</label>
							<input type="radio" name="userType" value="1"> <label>사업자 회원</label>
							<input class="inputRegi" type="text" name="name" placeholder="이름" style="margin-bottom: 20px;"><br>
							<input class="inputRegi" type="email" name="email" placeholder="이메일" style="margin-bottom: 30px;"><br>
							<input type="button" class="btn btn-danger login" style="margin-top: 5px;width: 167px;margin-right: -15px;" value="돌아가기">
							<input type="button" class="btn btn-primary" id="btnFindId" style="margin-top: 5px;width: 167px;" value="아이디 찾기">
						</div>
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
						<div>
							<input type="radio" name="userTypePw" value="2" style="margin-bottom: 25px;"> <label style="margin-right:30px;">개인 회원</label>
							<input type="radio" name="userTypePw" value="1"> <label>사업자 회원</label>
							<input class="inputRegi" type="text" name="userIdPw" placeholder="아이디" style="margin-bottom: 20px;"><br>
							<input class="inputRegi" type="email" name="emailPw" placeholder="이메일" style="margin-bottom: 30px;"><br>
							<input type="button" class="btn btn-danger login" style="margin-top: 5px;width: 167px;margin-right: -15px;" value="돌아가기">
							<input type="button" id="btnFindPass"class="btn btn-primary" style="margin-top: 5px;width: 167px;" value="비밀번호 찾기">
						</div>
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
						<input class="inputRegi1" type="text" name="duplCheckId" id="duplCheckId" placeholder="아이디">
						<input type="hidden" id="flagId" value="false">
						<button class="btnCheck" id="btnDuplCheckId" style="cursor: pointer;">중복확인</button><br>
						<input class="inputRegi" type="password" id="pass1" placeholder="비밀번호"><br>
						<input class="inputRegi" type="password" id="pass2" placeholder="비밀번호 확인"><br>
						<input class="inputRegi" type="text" id="joinName" placeholder="이름"><br>
						<input class="inputRegi1" type="text" name="duplCheckNick" id="duplCheckNick" placeholder="닉네임">
						<button class="btnCheck"  id="btnDuplCheckNick" style="cursor: pointer;">중복확인</button><br>
						<input type="hidden" id="flagNick" value="false">
						<select class="inputRegi" name="gender"style="height: 42px;width: 337px;color: #949494;">
							<option selected="selected">성별</option>
							<option value="MALE">남자</option>
							<option value="FEMALE">여자</option>
						</select>
						<input class="inputRegi" type="date" id="joinBirth" placeholder="생년월일" style="color: #949494;"><br>
						<input class="inputRegi" type="text" id="joinTel" placeholder="전화번호"><br>
						<input class="inputRegi1" type="text" name ="address" id="address" placeholder="주소">
						<input type="button" value="주소검색" class="btnCheck"  id="btnSearchAddr" onclick="openDaumZipAddress();" style="cursor: pointer;"><br>
						<input class="inputRegi" type="text" name="detailAddress" id="detailAddress" placeholder="상세주소">
						<input class="inputRegi" type="email" id="joinEmail" placeholder="이메일"><br>
						<input type="radio" name="joinUserType" id="joinUserType" value="2"> <span class="chgColorSpan">개인회원</span>
						<input type="radio" name="joinUserType" id="joinUserType" value="1" style="margin-left:20px;"> <span class="chgColorSpan">사업자회원</span><br>
						<button type="button" class="btn btn-primary" id="btnJoin" style="cursor: pointer;">가입하기</button>
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
											<c:if test="${zone.zoneNo < 6}">
												<span class="zoneName"><b>${zone.zoneName } <span class="hotPlace">HOT</span></b></span>
											</c:if>
											<c:if test="${zone.zoneNo > 5}">
												<span class="zoneName">${zone.zoneName }</span>
											</c:if>			
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