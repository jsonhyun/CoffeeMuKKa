<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Propeller Admin Dashboard">
<meta content="width=device-width, initial-scale=1, user-scalable=no" name="viewport">

<title>Coffee Mukka - admin</title>
<!-- 폰트어썸 -->
<script src="https://kit.fontawesome.com/6f2f0f2d95.js"></script>

<!-- Google icon -->
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

<!-- Bootstrap css -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- Propeller css -->
<!-- build:[href] assets/css/ -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/assets/css/propeller.min.css">
<!-- /build -->

<!-- Propeller date time picker css-->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/components/datetimepicker/css/bootstrap-datetimepicker.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/components/datetimepicker/css/pmd-datetimepicker.css" />

<!-- Propeller theme css-->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/themes/css/propeller-theme.css" />

<!-- Propeller admin theme css-->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/themes/css/propeller-admin.css">

<!-- adminCommon css -->
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/adminCommon.css" />

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<!-- 메뉴 포커스 -->
<script>
	$(function(){
		var url = location.href.split("/");
		$(".menu").removeClass("active");
		
		var menu = url[5];
		var subMenu = url[6];
		
		// 서브메뉴 url 판단
		console.log("url[5]"+menu);
		console.log("url[6]"+subMenu);
		
		// 메뉴 포커스 
		if(menu == "") {
			$("#Dashboard").addClass("active");
		}
		
		if(menu == "cafeMgn"){
			$("#cafeMgr").addClass("active");
			$("#cafeMgr").parent().addClass("open");
		}
		
		// 서브메뉴 포커스
		if(subMenu == "newCafe"){				
			$(".cafeMgrSub").eq(0).addClass("active");
		}
	})
</script>
</head>
<body>
	<!-- Header Starts -->
	<!--Start Nav bar -->
	<nav class="navbar navbar-inverse navbar-fixed-top pmd-navbar pmd-z-depth">
	
		<div class="container-fluid">
			<div class="pmd-navbar-right-icon pull-right navigation">
				<!-- Notifications -->
	            <div class="dropdown notification icons pmd-dropdown">
				
					<a id="user" href="javascript:void(0)" title="Notification" class="dropdown-toggle pmd-ripple-effect"  data-toggle="dropdown" role="button" aria-expanded="true">
						<div class="material-icons md-light pmd-sm pmd-badge pmd-badge-overlap">
							<img src="${pageContext.request.contextPath }/resources/themes/images/user-icon.png" alt="New User" />
							<span id="userName">user Id</span>
						</div>
					</a>
				
					<div class="dropdown-menu dropdown-menu-right pmd-card pmd-card-default pmd-z-depth" role="menu">
						
						<!-- Notifications list -->
						<ul class="list-group pmd-list-avatar pmd-card-list">
							<li class="list-group-item unread">
								<a href="#">내정보 수정</a>
							</li>
							<li class="list-group-item unread">
								<a href="${pageContext.request.contextPath }/user/">나가기</a>
							</li>
							<li class="list-group-item unread">
								<a href="${pageContext.request.contextPath }/user/logout">로그아웃</a>
							</li>
						</ul><!-- End notifications list -->
	
					</div>
					
					
	            </div> <!-- End notifications -->
			</div>
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<a href="javascript:void(0);" id="navIcon" data-target="basicSidebar" data-placement="left" data-position="slidepush" is-open="true" is-open-width="1200" class="btn btn-sm pmd-btn-fab pmd-btn-flat pmd-ripple-effect pull-left margin-r8 pmd-sidebar-toggle"><i class="fas fa-bars fs25"></i></a>	
				<a href="${pageContext.request.contextPath }/admin/" class="navbar-brand">Coffee Mukka</a>
			</div>
		</div>
	
	</nav><!--End Nav bar -->
	<!-- Header Ends -->
	
	<!-- Sidebar Starts -->
	<div class="pmd-sidebar-overlay"></div>
	
	<!-- Left sidebar -->
	<aside id="basicSidebar" class="pmd-sidebar  sidebar-default pmd-sidebar-slide-push pmd-sidebar-left pmd-sidebar-open bg-fill-darkblue sidebar-with-icons" role="navigation">
		<ul class="nav pmd-sidebar-nav">
			
			<!-- User info -->
			<li class="dropdown pmd-dropdown pmd-user-info visible-xs visible-md visible-sm visible-lg">
				<a aria-expanded="false" data-toggle="dropdown" class="btn-user dropdown-toggle media" data-sidebar="true" aria-expandedhref="javascript:void(0);">
					<div class="media-left">
						<img src="${pageContext.request.contextPath }/resources/themes/images/user-icon.png" alt="New User">
					</div>
					<div class="media-body media-middle">Propeller Admin</div>
					<div class="media-right media-middle"><i class="dic-more-vert dic"></i></div>
				</a>
				<ul class="dropdown-menu">
					<li><a href="${pageContext.request.contextPath }/user/logout">Logout</a></li>
				</ul>
			</li><!-- End user info -->
			
			<li> 
				<a id="Dashboard" class="pmd-ripple-effect menu" href="${pageContext.request.contextPath }/admin/">	
				<i class="fas fa-tachometer-alt fs18 media-left media-middle" ></i>
				<span class="media-body">Dashboard</span>
				</a> 
			</li>
			
			<li class="dropdown pmd-dropdown"> 
				<a id="cafeMgr" aria-expanded="false" data-toggle="dropdown" class="btn-user dropdown-toggle media menu" data-sidebar="true" href="javascript:void(0);">	
					<i class="fas fa-store fs18 media-left media-middle"></i>
					<span class="media-body">카페 관리</span>
					<div class="media-right media-bottom"><i class="dic-more-vert dic"></i></div>
				</a> 
				<ul class="dropdown-menu">
					<li><a class="cafeMgrSub menu" href="${pageContext.request.contextPath}/admin/cafeMgn/newCafe">신규 등록 카페 승인</a></li>
					<li><a class="cafeMgrSub menu" href="#">카페 관리</a></li>
					<li><a class="cafeMgrSub menu" href="#">월간 카페 등록 및 관리</a></li>
				</ul>
			</li>
			<li class="dropdown pmd-dropdown"> 
				<a id="userMgr" aria-expanded="false" data-toggle="dropdown" class="btn-user dropdown-toggle media menu" data-sidebar="true" href="javascript:void(0);">	
					<i class="fas fa-users fs18 media-left media-middle"></i>
					<span class="media-body">회원 관리</span>
					<div class="media-right media-bottom"><i class="dic-more-vert dic"></i></div>
				</a> 
				<ul class="dropdown-menu">
					<li><a class="userMgrSub menu" href="#">카페 점주 관리</a></li>
					<li><a class="userMgrSub menu" href="#">회원 관리</a></li>
					<li><a class="userMgrSub menu" href="#">관리자 관리</a></li>
				</ul>
			</li>
			<li class="dropdown pmd-dropdown"> 
				<a id="userMgr" aria-expanded="false" data-toggle="dropdown" class="btn-user dropdown-toggle media menu" data-sidebar="true" href="javascript:void(0);">	
					<i class="fas fa-chalkboard fs18 media-left media-middle"></i>
					<span class="media-body">게시글 관리</span>
					<div class="media-right media-bottom"><i class="dic-more-vert dic"></i></div>
				</a> 
				<ul class="dropdown-menu">
					<li><a class="userMgrSub menu" href="#">생생 카페 탐방기 관리</a></li>
					<li><a class="userMgrSub menu" href="#">MuKKa人 추천 카페 관리</a></li>
					<li><a class="userMgrSub menu" href="#">사장님 고민 나눔 관리</a></li>
					<li><a class="userMgrSub menu" href="#">자유게시판 관리</a></li>
				</ul>
			</li>
			
			<li class="dropdown pmd-dropdown"> 
				<a id="pointShop" aria-expanded="false" data-toggle="dropdown" class="btn-user dropdown-toggle media menu" data-sidebar="true" href="javascript:void(0);">	
					<i class="fas fa-gifts fs18 media-left media-middle"></i>
					<span class="media-body">포인트샵 관리</span>
					<div class="media-right media-bottom"><i class="dic-more-vert dic"></i></div>
				</a> 
				<ul class="dropdown-menu">
					<li><a class="pointShopSub menu" href="#">상품 관리</a></li>
				</ul>
			</li>
			<li class="dropdown pmd-dropdown"> 
				<a id="noticeMgr" aria-expanded="false" data-toggle="dropdown" class="btn-user dropdown-toggle media menu" data-sidebar="true" href="javascript:void(0);">	
					<i class="fas fa-bullhorn fs18 media-left media-middle"></i>
					<span class="media-body">공지사항</span>
					<div class="media-right media-bottom"><i class="dic-more-vert dic"></i></div>
				</a> 
				<ul class="dropdown-menu">
					<li><a class="noticeMgrSub menu" href="#">공지사항 관리</a></li>
					<li><a class="noticeMgrSub menu" href="#">이벤트 관리</a></li>
					<li><a class="noticeMgrSub menu" href="#">FAQ 관리</a></li>
					<li><a class="noticeMgrSub menu" href="#">Q&A 관리</a></li>
				</ul>
			</li>
			<li> 
				<a class="pmd-ripple-effect" href="${pageContext.request.contextPath }/user/">	
					<i class="fas fa-door-open fs18 media-left media-middle"></i>
					<span class="media-body">나가기</span>
				</a> 
			</li>
			<li> 
				<a class="pmd-ripple-effect" href="${pageContext.request.contextPath }/user/logout">	
					<i class="fas fa-sign-out-alt fs18 media-left media-middle"></i>
					<span class="media-body">Login</span>
				</a> 
			</li>
	
		</ul>
	</aside><!-- End Left sidebar -->
	<!-- Sidebar Ends -->  