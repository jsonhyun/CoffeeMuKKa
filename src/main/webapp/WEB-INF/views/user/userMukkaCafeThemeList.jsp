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
	.selectLeft button{
		padding: 0 5px 0 5px;
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
	    border-top: 1px solid #545454;
	    border-bottom: 1px solid #545454;
	    position: relative;
	}
	
	.locationListLeft img{
		width: 160px;
		height: 160px;
	}
	
	.locationListCenter{
		line-height: 40px;
	    float: left;
	    width: 530px;
	    border-top: 1px solid #545454;
	    border-bottom: 1px solid #545454;
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
	    padding-right: 5px;
	    margin-right: 5px;
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
		border-top: 1px solid #545454;
		border-bottom: 1px solid #545454;
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
	    text-overflow: ellipsis;
	    overflow: hidden;
	    padding-right: 30px;
	    white-space:nowrap;
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
	

	.pagination {
		display: inline-block;
	  	padding-left: 0;
	  	margin: 20px 0;
	  	border-radius: 4px;
}
	.pagination > li {
  		display: inline;
}
	.pagination > li > a,
	.pagination > li > span {
		position: relative;
		float: left;
		padding: 6px 12px;
		margin-left: -1px;
		line-height: 1.42857143;
		color: #303A50;
		text-decoration: none;
		background-color: #fff;
		border: 1px solid #ddd;
}
	.pagination > li:first-child > a,
	.pagination > li:first-child > span {
		margin-left: 0;
		border-top-left-radius: 4px;
		border-bottom-left-radius: 4px;
}
	.pagination > li:last-child > a,
	.pagination > li:last-child > span {
		border-top-right-radius: 4px;
		border-bottom-right-radius: 4px;
}
	.pagination > li > a:hover,
	.pagination > li > span:hover,
	.pagination > li > a:focus,
	.pagination > li > span:focus {
		color: #23527c;
		background-color: #eee;
		border-color: #ddd;
}
	.pagination > .active > a,
	.pagination > .active > span,
	.pagination > .active > a:hover,
	.pagination > .active > span:hover,
	.pagination > .active > a:focus,
	.pagination > .active > span:focus {
		z-index: 2;
		color: #fff;
		cursor: default;
		background-color: #303A50;
		border-color: #303A50;
}
	.pagination > .disabled > span,
	.pagination > .disabled > span:hover,
	.pagination > .disabled > span:focus,
	.pagination > .disabled > a,
	.pagination > .disabled > a:hover,
	.pagination > .disabled > a:focus {
		color: #777;
		cursor: not-allowed;
		background-color: #fff;
		border-color: #ddd;
}
	.pagination-lg > li > a,
	.pagination-lg > li > span {
		padding: 10px 16px;
		font-size: 18px;
}
	.pagination-lg > li:first-child > a,
	.pagination-lg > li:first-child > span {
		border-top-left-radius: 6px;
		border-bottom-left-radius: 6px;
}
	.pagination-lg > li:last-child > a,
	.pagination-lg > li:last-child > span {
		border-top-right-radius: 6px;
		border-bottom-right-radius: 6px;
}
	.pagination-sm > li > a,
	.pagination-sm > li > span {
		padding: 5px 10px;
		font-size: 12px;
}
	.pagination-sm > li:first-child > a,
	.pagination-sm > li:first-child > span {
       border-top-left-radius: 3px;
	   border-bottom-left-radius: 3px;
}
	.pagination-sm > li:last-child > a,
	.pagination-sm > li:last-child > span {
		border-top-right-radius: 3px;
		border-bottom-right-radius: 3px;
}
div.themeListCafe{
	width: 100%;
}
ul.themeListCafeWrap{
	width: 100%;
}
ul.themeListCafeWrap li{
	float: left;
	width: 23%;
	height: 290px;
	margin: 8px;
	border: 1px solid #A6A6A6;
	position: relative;
}
ul.themeListCafeWrap li img{
	width: 100%;
	height: 170px;
}

	.cafeVoteNum{
		float: right;
	    width: 25px;
	    height: 25px;
	    border-radius: 40px;
	    margin: 10px;
	    text-align: center;
	    line-height: 25px;
	    font-weight: 700;
	    position: absolute;
	    top: 0px;
	    right: 0px;
	    font-size: 12px;
	}
	
	.star{
		position: absolute;
	    top: 11px;
    	left: 5px;
	}
	
	.blackOpacity{
		background-color: rgba(0,0,0,.2);
		position: absolute;
		width: 100%;
		height: 170px;
		top: 0;
		left: 0;
		
	}
	div.firstKeyword,div.rankTheme_one,div.rankTheme_two{
		font-size: 11px;
	}
	div.firstKeyword,h3.theme_cafeName{
		margin-left: 5px;
		margin-top: 5px;
	}
	h1.before_heart{
		text-align: right;
		margin-right: 10px;
	}
	div.themeCafeList{
		width: 100%;
		height: 370px;
	}
</style>

<!-- bar-rating -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/fontawesome-stars.css">
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/jquery.barrating.min.js"></script>

<script type="text/javascript"> 
	$(function() {
		
		
		<c:forEach var="starpoint" items="${starpoint }" varStatus="status">
			$('.starPoint').eq(${status.index }).barrating({
					theme: 'fontawesome-stars', 
					initialRating: ${starpoint}, 
					readonly: true
				})
		</c:forEach>
		
		$("#btnSearch").click(function () {
			var searchZone = $("#searchZone").val();
			var searchTheme = $("#searchTheme").val();
			var searchType = $("#searchType").val();
			var keyword = $("#keyword").val();
			location.href = "theme?searchZone="+searchZone+"&searchTheme="+searchTheme+"&searchType="+searchType+"&keyword="+keyword;
		})
		
		
	})
</script>

		<div class="content subPageContent">
			<!-- 서브페이지 콘텐츠 -->
			<div class="contentArea">
				<h2 class="subPageTitle">
					<span class="title">테마별</span> <span class="subTit grayB"> |
						키워드 중심의 카페정보</span>
				</h2>
		
				<!-- 서브콘텐츠 시작 -->
		<div class="themeCafeList">
				<!-- 위치, 테마 선택 및 검색란 -->
				<div class="cafeLocationSearch clearfix">
					<div class="selectLeft">
						<!-- <button class="keyword">#전체</button>
						<button class="keyword">#데이트</button>
						<button class="keyword">#뷰</button>
						<button class="keyword">#착한아메</button>
						<button class="keyword">#디저트</button>
						<button class="keyword">#댕댕이</button>
						<button class="keyword">#작업</button> -->
					<select name="searchZone" id="searchZone">
						<option value="all" ${cri.searchZone=='all'? 'selected':'' }>전체(위치별)</option>
						<option value="1" ${cri.searchZone=='1'? 'selected':'' }>동성로</option>
						<option value="2" ${cri.searchZone=='2'? 'selected':'' }>수성못 들안길</option>
						<option value="3" ${cri.searchZone=='3'? 'selected':'' }>두류공원 이월드</option>
						<option value="4" ${cri.searchZone=='4'? 'selected':'' }>달서구</option>
						<option value="5" ${cri.searchZone=='5'? 'selected':'' }>수성구</option>
						<option value="6" ${cri.searchZone=='6'? 'selected':'' }>서구-북구</option>
						<option value="7" ${cri.searchZone=='7'? 'selected':'' }>중구</option>
						<option value="8" ${cri.searchZone=='8'? 'selected':'' }>동구</option>
						<option value="9" ${cri.searchZone=='9'? 'selected':'' }>남구</option>
						<option value="10" ${cri.searchZone=='10'? 'selected':'' }>달성군</option>
						<option value="11" ${cri.searchZone=='11'? 'selected':'' }>팔공산</option>
					</select>
					<select name="searchTheme" id="searchTheme">
						<option value="all" ${cri.searchTheme=='all'? 'selected':'' }>전체(테마별)</option>
						<option value="1" ${cri.searchTheme=='1'? 'selected':'' }>#데이트</option>
						<option value="2" ${cri.searchTheme=='2'? 'selected':'' }>#뷰</option>
						<option value="3" ${cri.searchTheme=='3'? 'selected':'' }>#착한아메</option>
						<option value="4" ${cri.searchTheme=='4'? 'selected':'' }>#디저트</option>
						<option value="5" ${cri.searchTheme=='5'? 'selected':'' }>#댕댕이</option>
						<option value="6" ${cri.searchTheme=='6'? 'selected':'' }>#작업</option>
					</select>						
					</div>
					<div class="selectRight">
						<select name="searchType" id="searchType">
							<option value="n" ${cri.searchType==null? 'selected':'' }>----</option>
							<option value="cafeName" ${cri.searchType=='cafeName'? 'selected':'' }>카페명</option>
						</select> 
						<input type="text" name="keyword" id="keyword" value="${cri.keyword }" placeholder="검색어를 입력하세요." /> 
						<input type="submit" id="btnSearch" value="검색" class="navyBtn" />
					</div>
				</div>
				<!-- 위치별 카페 리스트 -->
				<div class="themeListCafe">
					<ul class="themeListCafeWrap">
						<c:forEach var="cafe" items="${list }" varStatus="i">
							<li><a
								href="${pageContext.request.contextPath }/user/mukkaCafe/zone/read?cafeNo=${cafe.cafeNo}">
									<c:forEach var="img" items="${imgList }">
										<c:if test="${img.cafeNo.cafeNo == cafe.cafeNo }">
											<img
												src="${pageContext.request.contextPath }/resources/images/sumnail/${img.imageName}">
										</c:if>
									</c:forEach>
									<div class="blackOpacity"></div>
									<div class="star">
										<select class="starPoint">
											<option value="1">1</option>
											<option value="2">2</option>
											<option value="3">3</option>
											<option value="4">4</option>
											<option value="5">5</option>
										</select>
									</div>
									<div class="cafeVoteNum bgRed">${cafe.voteNumber }</div> <c:set
										var="theme" value="${cafe.themeNo.themeNo }" /> <c:choose>
										<c:when test="${theme == 1 }">
											<div class="themeKeySmall date bold firstKeyword">#${cafe.themeNo.themeName
												}</div>
										</c:when>
										<c:when test="${theme == 2 }">
											<div class="themeKeySmall view bold firstKeyword">#${cafe.themeNo.themeName
												}</div>
										</c:when>
										<c:when test="${theme == 3 }">
											<div class="themeKeySmall ame bold firstKeyword">#${cafe.themeNo.themeName
												}</div>
										</c:when>
										<c:when test="${theme == 4 }">
											<div class="themeKeySmall dessert bold firstKeyword">#${cafe.themeNo.themeName
												}</div>
										</c:when>
										<c:when test="${theme == 5 }">
											<div class="themeKeySmall dog bold firstKeyword">#${cafe.themeNo.themeName
												}</div>
										</c:when>
										<c:when test="${theme == 6 }">
											<div class="themeKeySmall work bold firstKeyword">#${cafe.themeNo.themeName
												}</div>
										</c:when>
									</c:choose>
									<div class="themeKeySmall bold rankTheme_one"></div>
									<div class="themeKeySmall bold rankTheme_two"></div>
									<h3 class="theme_cafeName">${cafe.cafeName }</h3>
									<h1 class="before_heart">
										<i class="fa fa-heart-o" aria-hidden="true"></i>
									</h1>
							</a></li>
						</c:forEach>
					</ul>
			  </div>
		 </div> 
		<!-- 페이징 처리 부분 -->
		<div style="text-align: center;">
			<ul class="pagination">
				<c:if test="${pageMaker.prev == true }">
					<li><a href="theme?page=${pageMaker.startPage-1 }&searchZone=${cri.searchZone }&searchTheme=${cri.searchTheme }&searchType=${cri.searchType }&keyword=${cri.keyword}">&laquo;</a></li>
				</c:if>
				<c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }" var="idx">
					<li class="${pageMaker.cri.page == idx?'active':'' }"><a href="theme?page=${idx }&searchZone=${cri.searchZone }&searchTheme=${cri.searchTheme }&searchType=${cri.searchType }&keyword=${cri.keyword}">${idx }</a></li>
				</c:forEach>
				<c:if test="${pageMaker.next == true }">
					<li><a href="theme?page=${pageMaker.endPage+1 }&searchZone=${cri.searchZone }&searchTheme=${cri.searchTheme }&searchType=${cri.searchType }&keyword=${cri.keyword}">&raquo;</a></li>
				</c:if>
			</ul>
		</div>
		</div>
	</div>	
<%-- 지우면 안됨 subMenu.jsp에 container 시작 태그 있음 --%>
</div>
<script>
	var arr = new Array();
	<c:forEach var="themeList" items="${themeList}" varStatus="status">
		arr.push("${themeList.themeName}");
	</c:forEach>
	var len = arr.length;
	var cnt = Math.floor(len/2);
	
	var arr1 = new Array();
	
	for(var i=0;i<=cnt;i++){ 
		arr1.push(arr.splice(0,2));
	}
	
	for(var i =0;i<arr1.length-1;i++){
		console.log(arr1[i]);
		$(".rankTheme_one").eq(i).text("#"+arr1[i][0]);
		$(".rankTheme_two").eq(i).text("#"+arr1[i][1]);
	}
	
	// 테마분류 색상 설정
	$(".rankTheme_one").each(function(i, obj){
		var name = $(this).text();
		var keywordK = ["#데이트", "#뷰", "#착한아메", "#디저트", "#댕댕이", "#작업"];
		var keyword = ["date", "view", "ame", "dessert", "dog", "work"];
		
		for(var i=0; i<keyword.length; i++){
			if(name.indexOf(keywordK[i]) > -1) {
				$(this).addClass(keyword[i]);
			}
		}
		
	})
	
	$(".rankTheme_two").each(function(i, obj){
		var name = $(this).text();
		var keywordK = ["#데이트", "#뷰", "#착한아메", "#디저트", "#댕댕이", "#작업"];
		var keyword = ["date", "view", "ame", "dessert", "dog", "work"];
		
		for(var i=0; i<keyword.length; i++){
			if(name.indexOf(keywordK[i]) > -1) {
				$(this).addClass(keyword[i]);
			}
		}
		
	})		
</script>
<!-- container end -->
<%@ include file="../userInclude/footer.jsp" %>