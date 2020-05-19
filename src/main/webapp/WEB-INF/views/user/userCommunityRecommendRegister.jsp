<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../userInclude/header.jsp" %>
<%@ include file="../userInclude/subMenu.jsp" %>

<style>
	/* 등록카페 확인버튼 */
	div.subTitleandBtn{
		width: 100%;
		position: relative;
	}
	h2.subPageTitle{
		width: 50%;
	}
	button.searchPoint{
		border-radius: 3px;
		margin-left: 10px;
		position: absolute;
		top: 5px;
		background-color: #303A50;
	}
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
		width: 11%;
		height: 30px;
		margin-right: 12px;
	}
	label.RC_label{
		font-weight: bold;
		width: 15%;
		float: left;
	}

	input#point{
		width: 71%;
		height: 30px;
		background-color: #FAFAFA;		
	}
	input#title{
		width: 84%;
		height: 30px;
		background-color: #FAFAFA;
	}
	button.recommdenPoint{
		height: 30px;
		border-radius: 3px;
		margin-left: 19px;
	}
	/* 추천카페 맵 */
	.map_wrap, .map_wrap * {
		margin:0;
		padding:0;
		font-family:'Malgun Gothic',dotum,'돋움',sans-serif;
		font-size:12px;
	}
	.map_wrap a, .map_wrap a:hover, .map_wrap a:active{color:#000;text-decoration: none;}
	.map_wrap {position:relative;width:100%;height:500px;}
	#menu_wrap {position:absolute;top:0;left:0;bottom:0;width:250px;margin:10px 0 30px 10px;padding:5px;overflow-y:auto;background:rgba(255, 255, 255, 0.7);z-index: 1;font-size:12px;border-radius: 10px;}
	.bg_white {background:#fff;}
	#menu_wrap hr {display: block; height: 1px;border: 0; border-top: 2px solid #5F5F5F;margin:3px 0;}
	#menu_wrap .option{text-align: center;}
	#menu_wrap .option p {margin:10px 0;}  
	#menu_wrap .option button {margin-left:5px;}
	#placesList li {list-style: none;}
	#placesList .item {position:relative;border-bottom:1px solid #888;overflow: hidden;cursor: pointer;min-height: 65px;}
	#placesList .item span {display: block;margin-top:4px;}
	#placesList .item h5, #placesList .item .info {text-overflow: ellipsis;overflow: hidden;white-space: nowrap;}
	#placesList .item .info{padding:10px 0 10px 55px;}
	#placesList .info .gray {color:#8a8a8a;}
	#placesList .info .jibun {padding-left:26px;background:url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_jibun.png) no-repeat;}
	#placesList .info .tel {color:#009900;}
	#placesList .item .markerbg {float:left;position:absolute;width:36px; height:37px;margin:10px 0 0 10px;background:url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png) no-repeat;}
	#placesList .item .marker_1 {background-position: 0 -10px;}
	#placesList .item .marker_2 {background-position: 0 -56px;}
	#placesList .item .marker_3 {background-position: 0 -102px}
	#placesList .item .marker_4 {background-position: 0 -148px;}
	#placesList .item .marker_5 {background-position: 0 -194px;}
	#placesList .item .marker_6 {background-position: 0 -240px;}
	#placesList .item .marker_7 {background-position: 0 -286px;}
	#placesList .item .marker_8 {background-position: 0 -332px;}
	#placesList .item .marker_9 {background-position: 0 -378px;}
	#placesList .item .marker_10 {background-position: 0 -423px;}
	#placesList .item .marker_11 {background-position: 0 -470px;}
	#placesList .item .marker_12 {background-position: 0 -516px;}
	#placesList .item .marker_13 {background-position: 0 -562px;}
	#placesList .item .marker_14 {background-position: 0 -608px;}
	#placesList .item .marker_15 {background-position: 0 -654px;}
	#pagination {margin:10px auto;text-align: center;}
	#pagination a {display:inline-block;margin-right:10px;}
	#pagination .on {font-weight: bold; cursor: default;color:#777;}	
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
	div#imagesBox img{
		width: 150px;
		height: 150px;
		margin: 10px;
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
	/* 추천카페검색 */
	.cafeSearchWrap .goCageInfo_reiview {
		width: 800px;
		margin: 0 auto;
		background-color: #fff;
		padding: 10px;
		text-align: center;
	}
	button.btnCafeInfo,button.btnCafeReview{
		height: 50px;
		margin: 5px;
		background-color: white;
		color: #5D5D5D;
		border: 2px solid #BDBDBD;
	}
	.fa-greater-than{
		color: #ED7D31;
	}	
	.cafeSearchWrap .goCageInfo_reiview button.btnCafeInfo:hover,button.btnCafeReview:hover{
		border: 2px solid #ED7D31;
		background-color: white;
		cursor: pointer;
		background-color: #FCFCFC;
	}
	.cafeSearchWrap .goCageInfo_reiview h3{
		text-align: center;
	}	
	.cafeSearchWrap .goCageInfo_reiview div#map{
		width: 100%;
		height: 350px;
		margin-top: 15px;
	}					
</style>
<div class="content subPageContent">
	<!-- 서브페이지 콘텐츠 -->
	<div class="contentArea">
		<!-- 서브페이지 공통적인 타이틀 -->
		<div class="subTitleandBtn">
			<h2 class="subPageTitle">
				<span class="title">MuKKa人 추천 카페  > </span>
				<span class="red">글쓰기</span>
				<button type="button" class="searchPoint orangeBtn">등록카페 확인</button>			
			</h2>
			
		</div>	
		<h3 id="RC_line"></h3>
		<!-- 등록폼 -->
		<div id="RC_regiForm">
		<form action="register" method="post" enctype="multipart/form-data">
			<input type="hidden" name="boardNo2.boardNo" value="2">
			<input type="hidden" name="userNo.userNo" value="1"><!-- 임시 -->	
			<!-- 카테고리 -->		
			<div class="RC_Rg_groub">	
				<label class="RC_label">카&nbsp;&nbsp;&nbsp;테&nbsp;&nbsp;&nbsp;고&nbsp;&nbsp;&nbsp;리</label>
				<select class="cate" name="zoneNo.zoneNo">
					<option selected="selected" value="위치">전체(위치별)</option>
					<option value="1">동성로</option>
					<option value="2">수성못 들안길</option>
					<option value="3">두류공원 이월드</option>
					<option value="4">달서구</option>
					<option value="5">수성구</option>
					<option value="6">서구-북구</option>
					<option value="7">중구</option>
					<option value="8">동구</option>
					<option value="9">남구</option>
					<option value="10">달성군</option>
					<option value="11">팔공산</option>
				</select>
				<select class="cate" name="themeNo.themeNo">
					<option selected="selected" value="키워드">전체(테마별)</option>				
					<option value="1">#데이트</option>
					<option value="2">#뷰</option>
					<option value="3">#착한아메</option>
					<option value="4">#디저트</option>
					<option value="5">#댕댕이</option>
					<option value="6">#작업</option>
				</select>
			</div>

			<!-- 추천카페 : 이름, 주소 -->					
			<div class="RC_Rg_groub">		
				<label class="RC_label">카 페&nbsp;&nbsp;상&nbsp; 호&nbsp; 명</label>
				<input type="text" name="writingTitle" id="title">
			</div>
			<!-- 등록카페 확인 -->	
			<div class="RC_Rg_groub">	
				<label class="RC_label">카 페&nbsp;&nbsp;주&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;소</label>
				<input type="text" name="address" id="point">
				<button type="button" class="recommdenPoint orangeBtn">추천 카페 찾기</button>		
			</div>
			<!-- 추천카페 장소찾기 -->
			<div class="map_wrap">
			    <div id="map" style="width:100%;height:100%;position:relative;overflow:hidden;"></div>
			
			    <div id="menu_wrap" class="bg_white">
			        <div class="option">
			            <div>
			                <form onsubmit="searchPlaces(); return false;">
			                    키워드 : <input type="text" value="이태원 맛집" id="keyword" size="15"> 
			                    <button type="submit">검색하기</button> 
			                </form>
			            </div>
			        </div>
			        <hr>
			        <ul id="placesList"></ul>
			        <div id="pagination"></div>
			    </div>
			</div>						
			<!-- 카페후기 글 -->		
			<div class="RC_Rg_groub">	
				<textarea rows="15" cols="100" name="writingContent" id="text"></textarea>
			</div>
			<!-- 카페 이미지 첨부 -->
			<div class="RC_Rg_groub">	
				<label class="RC_label">이미지 첨부</label>
				<input type="file" name="imgfiles" multiple="multiple" id="file" style="cursor: pointer">
				<!-- 미리보기박스 -->
				<div id="imagesBox"></div>
			</div>
			<!-- 등록버튼들 -->
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
							<h3>등록카페 검색</h3>		
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
					<div class="goCageInfo_reiview"></div>
					
				</div>
		<!-- /검색박스 -->			
		</div>
	</div>
</div>
<!-- <div id="map" style="width:100%;height:400px;"></div> -->
<!-- <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=82c67a5c009ecc3de6e3c10d398c0061&libraries=services"></script> -->
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
<!-- 틀3 : 등록된 카페가 있는경우 -> 해당카페 상세보기 or 탐방기작성으로 유도 -->
<script id="goCafeInfo" type="text/x-handlebars-tamplate">
	{{#each.}}
		<h3>이미 <span class='red'>Coffee MuKKa</span> 에 등록된 카페입니다</h3>
		<button type="button" class="btnCafeInfo" value="{{cafeNo}}"><span class="red"><b>{{cafeName}}</b></span> 상세정보 보기 <i class="fas fa-greater-than"></i></button>
		<button type="button" class="btnCafeReview">생생 카페 <span class="blue"><b>탐방기</b></span> 작성하기 <i class="fas fa-greater-than"></i></button>
	{{/each}}	
</script>
<!-- 틀4 : 등록된 카페가 없는 경우 -> 카페검색 -->
<script id="searchCafeInfo" type="text/x-handlebars-tamplate">
</script>

<!-- 자바스크립트 & 제이쿼리 -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=82c67a5c009ecc3de6e3c10d398c0061&libraries=services"></script>
<script>
	//목록 버튼
	$("#RC_list").click(function() {
		location.href="${pageContext.request.contextPath}/user/community/cafeRecommend";
	})
	
	//취소 버튼
	$("#RC_cancel").click(function () {
		var result = confirm("작성중인 글을 취소하시겠습니까?");
		if(result){ //yes
			location.href="${pageContext.request.contextPath}/user/community/cafeRecommend";
		}else{ //no
			
		}
	})
	
	//등록 폼 버튼
	$("form").submit(function(){
		
	})
	
	/***************************** 검색박스 *****************************************/
	
	//검색창, 전체리스트 다 보이게 구현 : 지역이름+카페이름+카페주소
 	$("button.searchPoint").click(function() {
		$(".cafeSearchWrap").show();
		$("input[name='cafeName']").val(""); // 버튼만 누르면 input 초기화 -> 모든 카페리스트 다 보임
		
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
				
				$(".cafeResultWrap").show();
				$(".goCageInfo_reiview").hide();
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
					var $tdNone = $("<td>").attr("colspan", "3").html("<span style='color:orange'><b><span class='red'>Coffee MuKKa</span> 에 등록된 카페가 없습니다</b></span>");
					var $tr = $("<tr>").append($tdNone);
					$(".cafeResult").append($tr);
					$(".goCageInfo_reiview").hide();
					
				}else if(cafeName == ""){
					var $tdNone = $("<td>").attr("colspan", "3").html("<span style='color:red'><b>카페 이름을 정확히 입력하세요</b></span>");
					var $tr = $("<tr>").append($tdNone);
					$(".cafeResult").append($tr);
					$(".goCageInfo_reiview").hide();
			   }else { // 등록된카페O -> 핸들바즈 삽입(검색결과)
					$(".goCageInfo_reiview").show();
					var source = $("#cafeRes").html();
					var func = Handlebars.compile(source);
					$(".cafeResult").append(func(res));
									
					var source2 = $("#goCafeInfo").html();
					var func2 = Handlebars.compile(source2);
					$(".goCageInfo_reiview").append(func2(res));
					
					$("#goCafeInfo").empty(); // 버튼 자가증식 막기
				}
				
				$(".cafeResultWrap").show();
				
			}
		}) 
	})
	
	//탐방기 작성 버튼 - 동적 생성
	$(document).on("click", ".btnCafeReview", function(){
		location.href="${pageContext.request.contextPath}/user/community/cafeReview/register";
	})
	
	//카페 상세정보 보기 - 동적 생성
	$(document).on("click", ".btnCafeInfo", function(){		
		location.href="${pageContext.request.contextPath}/user/mukkaCafe"; // 임시로 작성
	})
	
	$(document).on("click", ".resCafe", function(){
		var name = $(this).attr("data-cafeName");
		var no = $(this).attr("data-cafeNo");
		
		$(".cafeName").val(name);
		$(".cafeNo").val(no);
		$(".cafeSearchWrap").hide();
	})
	
	$("#file").change(function() {
		//var file = $(this)[0].files[0]; // $(this)[0] : javascript 객체
		
		var files = $(this)[0].files;
		//var file = e.target.files;        https://greatps1215.tistory.com/5
		console.log(files);
		$("#imagesBox").empty();
			for(var i = 0; i<files.length;i++){
			var reader = new FileReader(); //javascript 객체
			reader.readAsDataURL(files[i]);
			reader.onload = function(e){
				var $img = $("<img>").attr("src", e.target.result);
				$("#imagesBox").append($img);
			}
			}
	})
	
	//지도
	// 마커를 담을 배열입니다
	var markers = [];
	
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	    mapOption = {
	        center: new kakao.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
	        level: 3 // 지도의 확대 레벨
	    };  
	
	// 지도를 생성합니다    
	var map = new kakao.maps.Map(mapContainer, mapOption); 
	
	// 장소 검색 객체를 생성합니다
	var ps = new kakao.maps.services.Places();  
	
	// 검색 결과 목록이나 마커를 클릭했을 때 장소명을 표출할 인포윈도우를 생성합니다
	var infowindow = new kakao.maps.InfoWindow({zIndex:1});
	
	// 키워드로 장소를 검색합니다
	searchPlaces();
	
	// 키워드 검색을 요청하는 함수입니다
	function searchPlaces() {
	
	    var keyword = document.getElementById('keyword').value;
	
	    if (!keyword.replace(/^\s+|\s+$/g, '')) {
	        alert('키워드를 입력해주세요!');
	        return false;
	    }
	
	    // 장소검색 객체를 통해 키워드로 장소검색을 요청합니다
	    ps.keywordSearch( keyword, placesSearchCB); 
	}
	
	// 장소검색이 완료됐을 때 호출되는 콜백함수 입니다
	function placesSearchCB(data, status, pagination) {
	    if (status === kakao.maps.services.Status.OK) {
	
	        // 정상적으로 검색이 완료됐으면
	        // 검색 목록과 마커를 표출합니다
	        displayPlaces(data);
	
	        // 페이지 번호를 표출합니다
	        displayPagination(pagination);
	
	    } else if (status === kakao.maps.services.Status.ZERO_RESULT) {
	
	        alert('검색 결과가 존재하지 않습니다.');
	        return;
	
	    } else if (status === kakao.maps.services.Status.ERROR) {
	
	        alert('검색 결과 중 오류가 발생했습니다.');
	        return;
	
	    }
	}
	
	// 검색 결과 목록과 마커를 표출하는 함수입니다
	function displayPlaces(places) {
	
	    var listEl = document.getElementById('placesList'), 
	    menuEl = document.getElementById('menu_wrap'),
	    fragment = document.createDocumentFragment(), 
	    bounds = new kakao.maps.LatLngBounds(), 
	    listStr = '';
	    
	    // 검색 결과 목록에 추가된 항목들을 제거합니다
	    removeAllChildNods(listEl);
	
	    // 지도에 표시되고 있는 마커를 제거합니다
	    removeMarker();
	    
	    for ( var i=0; i<places.length; i++ ) {
	
	        // 마커를 생성하고 지도에 표시합니다
	        var placePosition = new kakao.maps.LatLng(places[i].y, places[i].x),
	            marker = addMarker(placePosition, i), 
	            itemEl = getListItem(i, places[i]); // 검색 결과 항목 Element를 생성합니다
	
	        // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
	        // LatLngBounds 객체에 좌표를 추가합니다
	        bounds.extend(placePosition);
	
	        // 마커와 검색결과 항목에 mouseover 했을때
	        // 해당 장소에 인포윈도우에 장소명을 표시합니다
	        // mouseout 했을 때는 인포윈도우를 닫습니다
	        (function(marker, title) {
	            kakao.maps.event.addListener(marker, 'mouseover', function() {
	                displayInfowindow(marker, title);
	            });
	
	            kakao.maps.event.addListener(marker, 'mouseout', function() {
	                infowindow.close();
	            });
	
	            itemEl.onmouseover =  function () {
	                displayInfowindow(marker, title);
	            };
	
	            itemEl.onmouseout =  function () {
	                infowindow.close();
	            };
	        })(marker, places[i].place_name);
	
	        fragment.appendChild(itemEl);
	    }
	
	    // 검색결과 항목들을 검색결과 목록 Elemnet에 추가합니다
	    listEl.appendChild(fragment);
	    menuEl.scrollTop = 0;
	
	    // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
	    map.setBounds(bounds);
	}
	
	// 검색결과 항목을 Element로 반환하는 함수입니다
	function getListItem(index, places) {
	
	    var el = document.createElement('li'),
	    itemStr = '<span class="markerbg marker_' + (index+1) + '"></span>' +
	                '<div class="info">' +
	                '   <h5>' + places.place_name + '</h5>';
	
	    if (places.road_address_name) {
	        itemStr += '    <span>' + places.road_address_name + '</span>' +
	                    '   <span class="jibun gray">' +  places.address_name  + '</span>';
	    } else {
	        itemStr += '    <span>' +  places.address_name  + '</span>'; 
	    }
	                 
	      itemStr += '  <span class="tel">' + places.phone  + '</span>' +
	                '</div>';           
	
	    el.innerHTML = itemStr;
	    el.className = 'item';
	
	    return el;
	}
	
	// 마커를 생성하고 지도 위에 마커를 표시하는 함수입니다
	function addMarker(position, idx, title) {
	    var imageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
	        imageSize = new kakao.maps.Size(36, 37),  // 마커 이미지의 크기
	        imgOptions =  {
	            spriteSize : new kakao.maps.Size(36, 691), // 스프라이트 이미지의 크기
	            spriteOrigin : new kakao.maps.Point(0, (idx*46)+10), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표
	            offset: new kakao.maps.Point(13, 37) // 마커 좌표에 일치시킬 이미지 내에서의 좌표
	        },
	        markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imgOptions),
	            marker = new kakao.maps.Marker({
	            position: position, // 마커의 위치
	            image: markerImage 
	        });
	
	    marker.setMap(map); // 지도 위에 마커를 표출합니다
	    markers.push(marker);  // 배열에 생성된 마커를 추가합니다
	
	    return marker;
	}
	
	// 지도 위에 표시되고 있는 마커를 모두 제거합니다
	function removeMarker() {
	    for ( var i = 0; i < markers.length; i++ ) {
	        markers[i].setMap(null);
	    }   
	    markers = [];
	}
	
	// 검색결과 목록 하단에 페이지번호를 표시는 함수입니다
	function displayPagination(pagination) {
	    var paginationEl = document.getElementById('pagination'),
	        fragment = document.createDocumentFragment(),
	        i; 
	
	    // 기존에 추가된 페이지번호를 삭제합니다
	    while (paginationEl.hasChildNodes()) {
	        paginationEl.removeChild (paginationEl.lastChild);
	    }
	
	    for (i=1; i<=pagination.last; i++) {
	        var el = document.createElement('a');
	        el.href = "#";
	        el.innerHTML = i;
	
	        if (i===pagination.current) {
	            el.className = 'on';
	        } else {
	            el.onclick = (function(i) {
	                return function() {
	                    pagination.gotoPage(i);
	                }
	            })(i);
	        }
	
	        fragment.appendChild(el);
	    }
	    paginationEl.appendChild(fragment);
	}
	
	// 검색결과 목록 또는 마커를 클릭했을 때 호출되는 함수입니다
	// 인포윈도우에 장소명을 표시합니다
	function displayInfowindow(marker, title) {
	    var content = '<div style="padding:5px;z-index:1;">' + title + '</div>';
	
	    infowindow.setContent(content);
	    infowindow.open(map, marker);
	}
	
	 // 검색결과 목록의 자식 Element를 제거하는 함수입니다
	function removeAllChildNods(el) {   
	    while (el.hasChildNodes()) {
	        el.removeChild (el.lastChild);
	    }
	}
	 
	$("div.map_wrap").hide();
	/***************** 추천카페 찾기 버튼 ******************/
	$("button.recommdenPoint").click(function() {
		$("div.map_wrap").slideToggle(1200);
	})
</script>


<%-- 지우면 안됨 subMenu.jsp에 container 시작 태그 있음 --%>
</div>
<!-- container end -->

<%@ include file="../userInclude/footer.jsp" %>