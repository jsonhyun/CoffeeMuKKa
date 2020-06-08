<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../userInclude/header.jsp" %>
<%@ include file="../userInclude/subMenu.jsp" %>

<!-- 별점 관련 -->
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/w3.css">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/fontawesome-stars.css">
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/jquery.barrating.min.js"></script>
<style>
	/* 별점 */
	.starPointWrap {
		width: 300px;
		margin: 0 auto;
		line-height: 50px;
	}
	.spoint{
		height: 50px;
	    line-height: 55px;
	    background-color: #f4f4f4;
	    border-radius: 10px;
	    width: 200px;
	    padding-left: 20px;
	    float: left;
	}
	/* 카페 별점 크기 */
	.br-theme-fontawesome-stars .br-readonly a {
		font-size: 22px;
	}
	/* 카페 별점의 별 색상 */
	.br-theme-fontawesome-stars .br-widget a.br-selected:after {
		color: red;
	}
	/* 별점 점수 */
	#jumsu{
		height: 50px;
	    line-height: 50px;
	    float: left;
	    margin-left: -70px;
	    margin-bottom: 20px;
		font-size: 20px;
	}
	.termMonth {
		float: right;
	}
	
	/* 베스트 리스트 공통 */
	.no {
		width: 60px;
		height: 60px;
		line-height: 60px;
		text-align: center;
		color: #fff;
		font-weight: 700;
		font-size: 30px;
	}
	
	.imgBox {
		position: relative;
		height: 100%;
		overflow: hidden;
	}
	
	.imgBox img{
		width: 100%;
		min-height: 100%;
		display: block;
	}
	
	.imgBox .dummy {
		width: 100%;
		height: 100%;
		background-color: rgba(0,0,0,.5);
		position: absolute;
		top: 0;
		left: 0;
	}
	
	.topWrap {
		position: absolute;
		top: 10px;
		left: 10px;
	}
	
	.topWrap > div {
		margin: 15px 10px;
	}
	
	.topWrap .cafeName {
		color: #fff;
		font-size: 25px;
		font-weight: 700;
		line-height: 60px;
	}
	
	.bottomWrap {
		position: absolute;
		bottom: 20px;
		left: 20px;
		width: 90%;
	}
	
	.bottomWrap > img {
		position: absolute;
		right: 0;
		bottom: 0;
	}
	
	.cafeRivewCnt {
		overflow: hidden;
		width: 250px;
		text-align: center;
		margin: 0 auto;
		margin-bottom: 20px;
	}
	
	.cafeRivewCnt img {
		width: 30px;
		float: left;
		margin: 0 10px;
	}
	
	.cafeRivewCnt span {
		font-size: 20px;
	}
	
	.hoverTaget:hover .cafeName {
		text-decoration: underline;
	}
	
	/* 1위 */
	#rank_1{
		height: 350px;	
		border-top: 1px solid #545454;
		border-bottom: 1px solid #545454;
		margin-bottom: 30px;
	}
	
	#rank_1 .bestLeft {
		width: 50%;
		height: 350px;
	}
	
	#rank_1 .bestLeft {
		position: relative;
	}
	
	#rank_1 .bestRight {
		width: 45.5%;
		padding: 20px;
	}
	
	#rank_1 .cafeOneLine {
		font-size: 20px;
		margin-bottom: 10px;
		min-height: 58px;
	}
	
	#rank_1 .cafeDetailText {
		font-size: 16px;
		min-height: 72px;
	}
	
	#rank_1 .icons {
		overflow: hidden;
		margin-top: 10px;
	}
	
	#rank_1 .icon {
		overflow: hidden;
		border: 1px solid #545454;
	    padding: 5px 18px;
	    border-radius: 10px;
	    margin-right: 10px;
	    line-height: 25px;
	    width: 14%;
	    text-align: center;
	}
	
	#rank_1 .icon:nth-last-of-type(1) {
		margin-right: 0;
	}
	
	#rank_1 .icon i {
		font-size: 20px;
		margin-top: 3px;
		margin-right: 5px;
	}
	
	#rank_1 .icon img {
		width: 25px;
		margin-right: 5px;
	}
	
	#rank_1 .icon span {
		font-size: 16px;
		color: gray;
	}
	
	/* 2, 3위 */
	#rank_2_3 {
		margin-bottom: 30px;
	}
	
	#rank_2_3 > div {
		width: 48%;		
		border-bottom: 1px solid #545454;
	}
	
	#rank_2_3 > div:nth-of-type(1){
		float: left;
	}
	
	#rank_2_3 > div:nth-of-type(2){
		float: right;
	}
	
	#rank_2_3 > div > a {
		height: 330px;
		position: relative;
		display: block;
		margin-bottom: 15px;
	}
	
	/* 4 ~ 10위 */
	#rank_4_10 > div {
		float: left;
		width: 200px;
		height: 200px;
		margin-right: 40px;
		margin-bottom: 40px;
	}
	
	#rank_4_10 > div:nth-of-type(4n) {
		margin-right: 0;
	}
	
	#rank_4_10 > div a.imgBox {
		display: block;
		position: relative;
	}
	
	#rank_4_10 > div a img {
		width: auto;
		height: 100%;
		min-width: 100%;
		position: absolute;
		left: 50%;
		transform: translateX(-50%);
		transition:all 1s;
		transform-origin:300%;	
	}
	
	#rank_4_10 .hoverTaget:hover img {
		transform:scale(1.2);
	}
	
	#rank_4_10 .no {
		position: absolute;
		z-index: 1;
		top: 10px;
		left: 10px;
	}
	
	#rank_4_10 .dummy {
		font-size: 18px;
		font-weight: 500;
		color: #fff;
		line-height: 220px;
		text-align: center;
	}
	
	#rank_4_10 > div:nth-last-of-type(1){
		text-align: center;
	}
	
	#rank_4_10 .cafeBtn {
		display: inline-block;
		border: 1px solid #545454;
		padding: 10px;
	}
	
	#rank_4_10 .cafeBtn:nth-of-type(1) {
		margin: 35px 0;
	}
	
</style>

	<div class="content subPageContent">
		<!-- 서브페이지 콘텐츠 -->
		<div class="contentArea">
			<!-- 서브페이지 공통적인 타이틀 -->
			<h2 class="subPageTitle">
				<span class="title">MuKKa 베스트</span>
				<span class="subTit grayB"> | MuKKa人이 애정하는 그 카페 <span class="orange term"></span></span>
			</h2>
			
			<!-- 1위 -->
			<div id="rank_1" class="bestBox clearfix">
				<a href="${pageContext.request.contextPath }/user/mukkaCafe/zone/read?cafeNo=${bestCafe[0].cafeNo}" class="hoverTaget">
					<div class="bestLeft f_left">
						<div class="imgBox">
							<%-- <c:forEach ></c:forEach> --%>
							<img src="${pageContext.request.contextPath }/resources/images/sumnail/${bestCafe[0].images[0].imageName}" alt="카페이미지" />
							<div class="dummy"></div>	
						</div>
						<div class="topWrap clearfix">
							<p class="no bgPurple f_left">1</p>
							<div class="zoneBtn zoneOrangeIconSmall f_left keyword">#${bestCafe[0].zoneNo.zoneName}</div><!-- ${item.cafeNo.zoneNo.zoneName } -->
							<p class="cafeName f_left">${bestCafe[0].cafeName}</p>
						</div>
						<div class="bottomWrap">
							<div class="themeKeySmall themeName keyword">#${bestCafe[0].themeNo.themeName}</div>
							<!-- 테마 순위 리스트 -->
							<c:forEach var="theme" items="${themeMap}" varStatus="status">
								<c:if test="${bestCafe[0].cafeNo == theme.key }">
									<c:forEach var="themeItem" items="${theme.value }">
										<div class="themeKeySmall themeName keyword">#${themeItem.themeName }</div>
									</c:forEach>
								</c:if>
							</c:forEach>
							<img src="${pageContext.request.contextPath }/resources/images/cafe_best_icon.png" alt="베스트아이콘" />
						</div>
					</div>
				</a>
				<div class="bestRight f_right">
					<div class="starPointWrap clearfix">
						<div class="star spoint">
							<select class="starPoint"> 
								<option value="1">1</option> 
								<option value="2">2</option> 
								<option value="3">3</option> 
								<option value="4">4</option> 
								<option value="5">5</option> 
							</select>
						</div>
						<div id="jumsu"><span class="starNum"></span><span class="gray">/ 5</span></div>						
						<div class="termMonth">(<span class="termMonthText"></span>월 별점)</div>
					</div>
					<div class="cafeRivewCnt">
						<img src="${pageContext.request.contextPath }/resources/images/community_icon.png" alt="아이콘" />
						<span>전체 <span class="orange sameCnt"></span>개의 탐방기</span>
					</div>
					<script>
						console.log('${bestCafe[0].oneline}');
					</script>
					<p class="cafeOneLine classSec">${bestCafe[0].oneline}</p>
					<p class="cafeDetailText classSec_3line gray">${bestCafe[0].content}</p>
					<script>
						console.log('${bestCafe[0].cafeName}');
						console.log('${bestCafe[0].themeNo.themeName}');
					</script>
					<div class="icons">
						<div class="icon f_left">
							<img class="f_left" src="${pageContext.request.contextPath }/resources/images/icon_view.png" alt="아이콘" />
							<!-- <i class="far fa-eye gray f_left"></i> -->
							<span class="iconCnt">${bestCafe[0].viewNumber }</span>
						</div>
						<div class="icon f_left">
							<i class="far fa-thumbs-up gray f_left"></i>
							<span class="iconCnt">${bestCafe[0].voteNumber }</span>
						</div>
						<div class="icon f_left">
							<i class="fas fa-heart gray f_left"></i>
							<span class="iconCnt">${wishCnt}</span>
						</div>
						<div class="icon f_left">
							<img class="f_left" src="${pageContext.request.contextPath }/resources/images/icon_reply.png" alt="아이콘" />
							<!-- <i class="far fa-comment-dots gray f_left"></i> -->
							<span class="iconCnt">${commentCnt}</span>
						</div>
					</div>
				</div>
			</div>
			
			<!-- 2, 3위 -->
			<div id="rank_2_3" class="bestBox clearfix">
				<c:forEach var="bestCafe" items="${bestCafe}" begin="1" end="2" varStatus="status">
					<div>
						<a href="${pageContext.request.contextPath }/user/mukkaCafe/zone/read?cafeNo=${bestCafe.cafeNo}" class="hoverTaget">
							<div class="imgBox">
								<img src="${pageContext.request.contextPath }/resources/images/sumnail/${bestCafe.images[0].imageName}" alt="카페이미지" />
								<div class="dummy"></div>
							</div>
							<div class="topWrap clearfix">
								<p class="no bgPurple f_left">${status.index+1}</p>
								<div class="zoneBtn zoneOrangeIconSmall f_left keyword">#${bestCafe.zoneNo.zoneName }</div><!-- ${item.cafeNo.zoneNo.zoneName } -->
								<p class="cafeName f_left">${bestCafe.cafeName }</p>
							</div>
							<div class="bottomWrap">
								<div class="themeKeySmall themeName keyword">#${bestCafe.themeNo.themeName }</div>
								<!-- 테마 순위 리스트 -->
								<c:forEach var="theme" items="${themeMap}" varStatus="status">
									<c:if test="${bestCafe.cafeNo == theme.key }">
										<c:forEach var="themeItem" items="${theme.value }">
											<div class="themeKeySmall themeName keyword">#${themeItem.themeName }</div>
										</c:forEach>
									</c:if>
								</c:forEach>
								<img src="${pageContext.request.contextPath }/resources/images/cafe_best_icon.png" alt="베스트아이콘" />
							</div>
						</a>
						<div class="starPointWrap clearfix">
							<div class="star spoint">
								<select class="starPoint"> 
									<option value="1">1</option> 
									<option value="2">2</option> 
									<option value="3">3</option> 
									<option value="4">4</option> 
									<option value="5">5</option> 
								</select>
							</div>
							<div id="jumsu"><span class="starNum"></span><span class="gray">/ 5</span></div>
							<div class="termMonth">(<span class="termMonthText"></span>월 별점)</div>
						</div>
						
						<div class="cafeRivewCnt">
							<img src="${pageContext.request.contextPath }/resources/images/community_icon.png" alt="아이콘" />
							<span>전체 <span class="orange sameCnt"></span>개의 탐방기</span>
						</div>
					</div>
				</c:forEach>
			</div>
			
			<!-- 4 ~ 10위 -->
			<div id="rank_4_10" class="bestBox clearfix">
				<c:forEach var="bestCafe" items="${bestCafe}" begin="3" end="9" varStatus="status">
					<div>
						<a href="${pageContext.request.contextPath }/user/mukkaCafe/zone/read?cafeNo=${bestCafe.cafeNo}" class="imgBox hoverTaget">
							<p class="no bgPurple f_left">${status.index+1}</p>
							<img src="${pageContext.request.contextPath }/resources/images/sumnail/${bestCafe.images[0].imageName}" alt="카페이미지" />
							<div class="dummy classSec"><span class="cafeName">${bestCafe.cafeName }</span></div>
						</a>
					</div>
				</c:forEach>
				
				<div>
					<a href="${pageContext.request.contextPath }/user/mukkaCafe/zone" class="cafeBtn">
						<span class="orange">카페정보</span> (위치별) >
					</a>
					<a href="${pageContext.request.contextPath }/user/mukkaCafe/theme" class="cafeBtn">
						<span class="orange">카페정보</span> (테마별) >
					</a>
				</div>
				
			</div>
		</div>
	</div>
	
<script>
	// 숫자 포멧
	function pad(n, width) {
	  n = n + '';
	  return n.length >= width ? n : new Array(width - n.length + 1).join('0') + n;
	}

	//카페 세부정보 별점 
	var bestSP = ${bestSP};
	var sameCnt = ${sameCnts};
	
	for(var i=0; i<3; i++){		
		$('.starPoint').eq(i).barrating({
			theme: 'fontawesome-stars',
			initialRating: Math.round(bestSP[i]),
			readonly: true
		})
		$(".starNum").eq(i).text(bestSP[i]);
		$(".sameCnt").eq(i).text(sameCnt[i]);
	}
	
	// 테마분류 색상 설정
	$(".themeName").each(function(i, obj){
		var name = $(this).text();
		var keywordK = ["#데이트", "#뷰", "#착한아메", "#디저트", "#댕댕이", "#작업"];
		var keyword = ["date", "view", "ame", "dessert", "dog", "work"];
		
		for(var i=0; i<keyword.length; i++){
			if(name.indexOf(keywordK[i]) > -1) {
				$(this).addClass(keyword[i]);
			}
		}
	})
	
	// 베스트 순위 산출 기간
	var nowYear = new Date().getFullYear();
	console.log(nowYear);
	var nowMonth = new Date().getMonth() + 1;
	var preMonth = nowMonth - 1;
	var preMonthPad = pad(preMonth, 2);	
	var lastDay = (new Date(nowYear, preMonth, 0)).getDate();
	var term = "("+nowYear+"."+preMonthPad+".01 ~ "+preMonthPad+"."+lastDay+")";
	$(".term").text(term);
	$(".termMonthText").text(preMonth);
	
</script>
<%-- 지우면 안됨 subMenu.jsp에 container 시작 태그 있음 --%>
</div>
<!-- container end -->

<%@ include file="../userInclude/footer.jsp" %>