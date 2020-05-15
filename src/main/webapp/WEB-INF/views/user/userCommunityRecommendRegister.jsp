<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../userInclude/header.jsp" %>
<%@ include file="../userInclude/subMenu.jsp" %>

<style>
	h3#RC_line{
		color: #545454;
		border-bottom: 2px solid #545454;
		margin-bottom: 20px;		
	}

	/* 등록폼 */
	div#RC_regiForm{
		position: relative;
	}
	.RC_Rg_groub{
		width: 98%;
		padding: 10px;
	}	
	select.cate{
		width: 10%;
		height: 30px;
		margin-right: 12px;
	}
	label.RC_label{
		font-weight: bold;
		width: 15%;
		float: left;
	}
	button.searchPoint{
		width: 10%;
		height: 33px;
		margin-right: 12px;
	}
	input#point{
		width: 72%;
		height: 30px;
		background-color: #FAFAFA;		
	}
	input#title{
		width: 84%;
		height: 30px;
		background-color: #FAFAFA;
	}
	textarea#text{
		width: 100%;
	}
	input#file{
		width: 98%;
		border: 1px solid #BDBDBD;
		padding: 10px;		
	}
	div#imagesBox{
		width: 100%;
		height: 200px;
		border: 1px solid #BDBDBD;
		background-color: #FAFAFA;
	}
	button{
	   padding: 3px 10px;
	   border: 1px solid #303A50;
	}
	button#RC_list,button#RC_cancel{
		background-color: #FAFAFA;	
	}
	button#RC_cancel,button#RC_rgister{
		float: right;
		margin-left: 10px;
	}
	button#RC_rgister{
		background-color: #303A50;
		color: #fff;
	}
	
	/* 카페검색박스 */
	.cafeSearchWrap {
		position: absolute;
		top: 0;
		left: 0;
		background-color: rgba(0,0,0,.5);
		width: 100%;
		height: 100%;
	    display: none;
	}	
	.cafeSearchWrap .cafeSearchBox {
		width: 800px;
		margin: 0 auto;
		background-color: #fff;
		padding: 10px;
		margin-top: 100px;
		position: relative;
	}
	
	.cafeSearchWrap .closeBtn{
		position: absolute;
		top: 10px;
		right: 20px;
		font-size: 18px;
		color: #ED7D31;
		cursor: pointer;
	}
	
	.cafeSearchWrap .cafeSearch{
		text-align: center;
	}
	
	.cafeSearchWrap .cafeSearch .inputWrap {
		padding: 10px;
	}
	
	.cafeSearchWrap .cafeSearch label {
		display: inline-block;
		width: 100px;
		text-align: center;
		font-weight: 500;
	}
	
	.cafeSearchWrap .cafeSearch input[type="text"] {
		margin-right: 5px;
	}
	
	.cafeSearchWrap .cafeResultWrap {
		max-height: 300px;
		overflow: auto;
		border-bottom: 1px solid #aaa;
		display: none;
	}
	
	.cafeSearchWrap .cafeSearchBox table {
		width: 100%;
		table-layout: fixed; 
	}
	
	.cafeSearchWrap .resCafe {
		cursor: pointer;
	}
	
	.cafeSearchWrap .resCafe:hover .resCafeName{
		text-decoration: underline;
	}
	.searchCafe{
		color: #FF5E00;
		font-weight: bold;
	}
	
	/* cafeSearchBox2 */
	.cafeSearchWrap .cafeSearchBox2 {
		width: 800px;
		margin: 0 auto;
		background-color: #fff;
		padding: 10px;
		margin-top: 30px;
	}				
</style>
<div class="content subPageContent">
	<!-- 서브페이지 콘텐츠 -->
	<div class="contentArea">
		<!-- 서브페이지 공통적인 타이틀 -->
		<h2 class="subPageTitle">
			<span class="title">MuKKa人 추천 카페  > </span>
			<span class="red">글쓰기</span>				
		</h2>
		<h3 id="RC_line"></h3>
		<!-- 등록폼 -->
		<div id="RC_regiForm">
		<form action="register" method="post" enctype="multipart/form-data">
			<div class="RC_Rg_groub">	
				<label class="RC_label">카 테 고 리</label>
				<select class="cate">
					<option>대구</option>
					<option>대구</option>
					<option>대구</option>
					<option>대구</option>
				</select>
				<select class="cate">
					<option>#데이트</option>
					<option>#뷰</option>
					<option>#착한아메</option>
					<option>#디저트</option>
					<option>#댕댕이</option>
					<option>#작업</option>
				</select>
			</div>	
			<div class="RC_Rg_groub">	
				<label class="RC_label">카페 위치</label>
				<button type="button" class="searchPoint orangeBtn">카페찾기</button>
				<input type="text" name="point" id="point" readonly>
			</div>					
			<div class="RC_Rg_groub">		
				<label class="RC_label">카페 상호명</label>
				<input type="text" name="title" id="title" placeholder=" >> 위치 검색후 없을시 직접입력">
			</div>		
			<div class="RC_Rg_groub">	
				<textarea rows="15" cols="100" name="text" id="text"></textarea>
			</div>
			<div class="RC_Rg_groub">	
				<label class="RC_label">이미지 첨부</label>
				<input type="file" name="imgfiles" multiple="multiple" id="file" style="cursor: pointer">
				<!-- 미리보기박스 -->
				<div id="imagesBox"></div>
			</div>
			<div class="RC_Rg_groub">	
				<div id="RC_Rg_btns">
					<button type="button" id="RC_list" style="cursor: pointer">목록</button>
					<button type="submit" id="RC_rgister">등록</button>
					<button type="button" id="RC_cancel" style="cursor: pointer">취소</button>
				</div>
			</div>
		</form>
		<!-- 검색박스 -->
				<div class="cafeSearchWrap">
					<div class="cafeSearchBox">
						<div class="closeBtn"><i class="fas fa-times"></i></div>
						<div class="cafeSearch">	
							<h3>카페 검색</h3>		
							<div class="inputWrap">
								<label>카페이름</label>
								<input type="text" name="cafeName"/>
								<button id="cafeSchBtn" class="orangeBtn" type="button">검색</button>
							</div>			
							<div class="cafeResultWrap">
								<table class="cafeResult"></table>
							</div>
						</div>
					</div>
					<div class="cafeSearchBox2">
					</div>
				</div>
		<!-- /검색박스 -->			
		</div>
		<!-- /등록폼 -->
			<div id="map" style="width:500px;height:400px;"></div>
	</div>
</div>
<!-- <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d971f9b03ec09e4b77e1231e78cc625c"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=APIKEY&libraries=LIBRARY"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=APIKEY&libraries=services"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=APIKEY&libraries=services,clusterer,drawing"></script>	 -->
<!-- 틀1 : 등록된 모든카페 리스트 -->
<script id="cafeAll" type="text/x-handlebars-tamplate">
	{{#each.}}
		<tr class="resCafe" data-cafeName="{{cafeName}}" data-cafeNo="{{cafeNo}}">
			<td>{{zoneNo.zoneName}}</td>
			<td class="resCafeName">{{cafeName}}</td>
			<td>{{address}}</td>
		</tr>
	{{/each}}
</script>
<!-- 틀2 : 검색된 결과  -->
<script id="cafeRes" type="text/x-handlebars-tamplate">
	{{#each.}}
		<tr class="resCafe searchCafe" data-cafeName="{{cafeName}}" data-cafeNo="{{cafeNo}}">
			<td>{{zoneNo.zoneName}}</td>
			<td class="resCafeName">{{cafeName}}</td>
			<td>{{address}}</td>
		</tr>
	{{/each}}
</script>		
<script>
	//목록 버튼
	$("#RC_list").click(function() {
		location.href="${pageContext.request.contextPath}/user/community/cafeRecommend";
	})
	//취소 버튼
	//등록 폼 버튼
	
	//지도 테스트
/* 	var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
	var options = { //지도를 생성할 때 필요한 기본 옵션
		center: new kakao.maps.LatLng(33.450701, 126.570667), //지도의 중심좌표.
		level: 3 //지도의 레벨(확대, 축소 정도)
	};
	
	var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴 */
	
	/*** 검색박스 ***/
	
	//검색창, 전체리스트 다 보이게 구현 : 지역이름+카페이름+카페주소
 	$("button.searchPoint").click(function() {
		$(".cafeSearchWrap").show();
		$(".cafeResultWrap").show();
		var cafeName = $("input[name='cafeName']").val();
		$.ajax({
			url:"${pageContext.request.contextPath}/rest/cafeZone",
			type:"get",
			data: {"cafeName" : cafeName},
			dataType: "json",
			success:function(res){
				console.log(res);
				$(".cafeResult").empty();
				
				var $thNo = $("<th>").addClass("w10pc").text("지역 이름");
				var $thName = $("<th>").addClass("w25pc").text("카페 이름");
				var $thAddr = $("<th>").addClass("w60pc").text("카페 주소");
				var $tr = $("<tr>").append($thNo).append($thName).append($thAddr);
				
				$(".cafeResult").append($tr);
				
				// 등록된 모든 카페 보여주기  				
				var source = $("#cafeAll").html();
				var func = Handlebars.compile(source);
				$(".cafeResult").append(func(res));				
			}
		})	
		
	})
	
	//검색박스 -- 닫기
 	$(".cafeSearchWrap .closeBtn").click(function(){
		$(".cafeSearchWrap").hide();
	})
	
	//검색박스 --> 검색버튼
 	$("#cafeSchBtn").click(function() {
 		var cafeName = $("input[name='cafeName']").val();
		$.ajax({
			url:"${pageContext.request.contextPath}/rest/cafeZone",
			type:"get",
			data: {"cafeName" : cafeName},
			datatype : "json",
			success:function(res){
				console.log(res);
				$(".cafeResult").empty();
				$(".cafeResultWrap").hide();
				
				var $thNo = $("<th>").addClass("w10pc").text("지역 이름");
				var $thName = $("<th>").addClass("w25pc").text("카페 이름");
				var $thAddr = $("<th>").addClass("w60pc").text("카페 주소");
				var $tr = $("<tr>").append($thNo).append($thName).append($thAddr);
				
				$(".cafeResult").append($tr);
				
				if(res.length == 0) { // 등록된카페X -> 추천 글을 쓸수 있음
					var $tdNone = $("<td>").attr("colspan", "3").html("<span style='color:orange'><b>등록된 카페가 없습니다</b></span>");
					var $tr = $("<tr>").append($tdNone);
					$(".cafeResult").append($tr);					
				}else if(cafeName == ""){
					var $tdNone = $("<td>").attr("colspan", "3").html("<span style='color:red'><b>카페 이름을 입력하세요</b></span>");
					var $tr = $("<tr>").append($tdNone);
					$(".cafeResult").append($tr);							
			   }else { // 등록된카페O -> 핸들바즈 삽입(검색결과)				
					var source = $("#cafeRes").html();
					var func = Handlebars.compile(source);
					$(".cafeResult").append(func(res));
					
				}
				
				$(".cafeResultWrap").show();
				
			}
		}) 
	})
	
	$(document).on("click", ".resCafe", function(){
		var name = $(this).attr("data-cafeName");
		var no = $(this).attr("data-cafeNo");
		
		$(".cafeName").val(name);
		$(".cafeNo").val(no);
		$(".cafeSearchWrap").hide();
	})
</script>
<%-- 지우면 안됨 subMenu.jsp에 container 시작 태그 있음 --%>
</div>
<!-- container end -->

<%@ include file="../userInclude/footer.jsp" %>