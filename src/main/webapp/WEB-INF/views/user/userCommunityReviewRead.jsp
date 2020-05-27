<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../userInclude/header.jsp" %>
<%@ include file="../userInclude/subMenu.jsp" %>
<style>
	.wrapStyle {
		border-top: 1px solid #545454;
		border-bottom: 1px solid #545454;
		padding: 15px;
	}

	/* title 영역 */
	.detaliCafeR_title_wrap .keyword {
		font-size: 14px;
	}
	
	.detaliCafeR_title_wrap .regDate {
		float: right;
		color: gray;
		font-weight: 300;
	}
	
	.detaliCafeR_title_wrap .d_cafeR_titleMiddle{
		padding: 10px;
	}
	
	.detaliCafeR_title_wrap .d_cafeR_title {
		font-size: 25px;
		font-weight: 700;
		float: left;
	}
	
	.detaliCafeR_title_wrap .d_cafeR_user {
		float: right;
	}
	
	.detaliCafeR_title_wrap .d_cafeR_user img{
		height: 25px;
		float: left;
		margin-right: 5px;
	}
	
	.detaliCafeR_title_wrap .d_cafeR_user p {
		float: left;
		font-size: 16px;
		font-weight: 700;
	}
	
	.detaliCafeR_title_wrap .d_cafe_icon {
		background-color: #deeaf6;
		display: inline-block;
		padding: 10px;
	}
	
	.detaliCafeR_title_wrap .d_cafe_icon a {
		color: #2d4686;
	}
	
	.detaliCafeR_title_wrap .d_cafe_icon img {
		height: 25px;
		float: left;
		margin-right: 10px;
	}
	
	.detaliCafeR_title_wrap .d_cafe_viewCnt {
		color: gray;
		float: right;
		line-height: 45px;
	}
	
	/* 콘텐츠 영역 */
	.d_cafeR_context_wrap {
		padding: 10px;
	}
	
	.d_cafeR_context_wrap .d_cafeR_context img {
		max-width: 100%;
		height: auto !important;
	}
	
	/* 지도 */
	.d_cafeR_context_wrap .d_cafeR_map{
		margin: 50px;
	}
	
	#map {
		width: 500px;
		height: 350px;
		margin: 0 auto;
	}
	
	/* 버튼 영역 */
	.d_cafeR_btn_wrap .d_cafeR_cnt {
		font-size: 20px;
		line-height: 18px;
		margin-right: 20px;
		margin-top: 10px;
	}
	
	.d_cafeR_btn_wrap p {
		margin-left: 5px;
	}
	
	.d_cafeR_btn_wrap .d_cafeR_btns button {
		font-size: 18px;
		margin-left: 10px;
	}
	
	/* 댓글 영역 */
	.replyStyle{
		border-bottom: 1px solid #545454;
		padding: 10px 25px;
	}
	
	/* 댓글 작성 */
	.d_cafeR_reply_wrap .d_cafeR_reply_input img {
		height: 37px;
		margin-right: 15px;
	}
	
	.d_cafeR_reply_wrap .d_cafeR_reply_input textarea[name="commentContent"] {
		height: 35px;
		width: 83%;
		margin-right: 15px;
		padding: 0 10px;
		line-height: 35px;
		font-size: 16px;
	}
	
	.d_cafeR_reply_wrap .d_cafeR_reply_input #d_cafeR_replyAddBtn {
		font-size: 18px;
	}
	
	/* 댓글 리스트 */
	.d_cafeR_reply_wrap .d_cafeR_replyList li {
		line-height: 35px;
		position: relative;
	}	
	
	.d_cafeR_reply_wrap .d_cafeR_replyList li img {
		height: 35px;
		margin-right: 30px;
	}
	
	.d_cafeR_reply_wrap .d_cafeR_replyList li .replyNick {
		font-weight: 700;
		margin-right: 30px;
	}
	
	.d_cafeR_reply_wrap .d_cafeR_replyList li .replyCmtBox {
		width: 480px;
	}
	
	.d_cafeR_reply_wrap .d_cafeR_replyList li .replyCmtBox > p {
		-ms-word-break: break-all;
		word-break: break-all;
	}
	
	.d_cafeR_reply_wrap .d_cafeR_replyList li > p:nth-of-type(3) {
		font-size: 14px;
	}
	
	.d_cafeR_reply_wrap .d_cafeR_replyList li .replyBtn {
		margin-right: 30px;
	}
	
	.d_cafeR_reply_wrap .replyPage {
		text-align: center;
	}
	
	/* 같은 카페 다른 리뷰 영역 */
	.cafeR_sameList {
		margin-top: 100px;
		overflow: hidden;
	}
	
	.cafeR_sameList .cafeR_sameTitle {
		font-size: 20px;
	}
	
	.cafeR_sameList .cafeR_sameTitle .sameBtn {
		width: 30px;
	    height: 30px;
	    border: 1px solid #aaa;
	    line-height: 30px;
	    text-align: center;
	    margin-left: 10px;
	    cursor: pointer;
	}
	
	/* 다른 포스트 list */
	.cafeR_sameList .a_cafeReview {
		display: block;
		float: left;
		width: 447px;
		border: 1px solid #545454;
		margin-bottom: 20px;
	}
	
	.cafeR_sameList .cafeR_box:hover .cafe_title{
		text-decoration: underline;
	}
	
	.cafeR_sameList .a_cafeReview {
		margin-right: 22px;
	}
	
	.cafeR_sameList .cafeR_titleBox {
		height: 200px;
		padding: 15px 10px;
		position: relative;
		color: #fff;
	}
	
	.cafeR_sameList .cafeR_titleBox .cafeR_titleImg {
		position: absolute;
	    top: 0;
	    left: 0;
	    width: 100%;
	    height: 100%;
	    z-index: -1;
	    overflow: hidden;
	}
	
	.cafeR_sameList .cafeR_titleBox .cafeR_titleImg .bg {
		width: 100%;
	    height: 100%;
	    position: absolute;
	    top: 0;
	    left: 0;
	    background: rgba(0,0,0,0.4);
	}
	
	.cafeR_sameList .cafeR_titleBox .cafeR_titleImg img {
		width: 100%;
    	min-height: 100%;
	}
	
	.cafeR_sameList .cafeR_writer {
		line-height: 50px;
		float: left;
	}
		
	.cafeR_sameList .cafeR_writer img {
		width: 50px;
		display: block;
		float: left;
		margin-right: 10px;
	}
	
	.cafeR_sameList .cafeR_writer span {
		display: block;
		float: left;
		color: #fff;
		font-size: 18px;
	}
	
	.cafeR_sameList .cafeR_recomCnt {
		float: right;
		width: 30px;
		height: 30px;
		border-radius: 40px;
		margin: 10px;
		text-align: center;
		line-height: 30px;
		font-weight: 700;
	}
	
	.cafeR_sameList .cafeR_titleBox h2 {
		position: absolute;
	    top: 50%;
	    left: 50%;
	    transform: translate(-50%, -50%);
	    width: 85%;
	    text-align: center;
	}
	
	.cafeR_sameList .cafeR_date {
		position: absolute;
	    top: 85%;
	    left: 50%;
	    transform: translate(-50%, -50%);
	    width: 85%;
	    text-align: right;
	    font-size: 20px;
	}	
	
	.cafeR_sameList .cafeR_infoBox {
		padding: 10px;
		padding-bottom: 0;
	}
	
	.cafeR_sameList .cafeR_infoTop {
		padding-bottom: 10px;
	}
	
	.cafeR_sameList .cafeR_infoTop h2{
		text-align: right;
		padding: 10px 0;
	}
	
	.cafeR_sameList .cafeR_text {
		overflow: hidden; 
		text-overflow: ellipsis;
		display: -webkit-box;
		-webkit-line-clamp: 4; /* 라인수 */
		-webkit-box-orient: vertical;
		word-wrap: break-word;
	}
	
	.cafeR_sameList .cafeR_replyCdtWrap {
		float: right;
		padding: 10px;
		padding-right: 0;
	}
	
	.cafeR_sameList .cafeR_replyCdt .cafeR_btns {
		border: 1px solid #545454;
		padding: 5px 10px;
		border-radius: 10px;
		float: left;
		margin-right: 10px;
	}
	
	/* 페이징 */
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
	
	
	/* 테마 아이콘 */
	.detaliCafeR_title_wrap .themeKeySmall {
		margin-right: 0;
	}
</style>	
	<div class="content subPageContent">
		<!-- 서브페이지 콘텐츠 -->
		<div class="contentArea">
			<!-- 서브페이지 공통적인 타이틀 -->
			<h2 class="subPageTitle">
				<span class="title">생생 카페 탐방기</span>
				<span class="subTit grayB"> | 여러분의 소중한 탐방기를 들려주세요!</span>
			</h2>
			<!-- title 영역 -->
			<div class="detaliCafeR_title_wrap bgLightGray wrapStyle">
				<div class="d_cafeR_titleTop clearfix">
					<div class="zoneOrangeIconSmall keyword">${board.zoneNo.zoneName }</div>
					<div class="themeKeySmall keyword themeName">#${board.themeNo.themeName }</div>
					<!-- 테마 순위 리스트 -->
					<c:forEach var="theme" items="${themeRank}">
						<div class="themeKeySmall keyword themeName">#${theme.themeName }</div>
					</c:forEach>
					
					<div class="regDate">
						등록일 : <fmt:formatDate value="${board.registrationDate }" pattern="yyyy/MM/dd"/>
						<c:if test="${board.registrationDate != board.updateDate}">
						 | 수정일 : <fmt:formatDate value="${board.updateDate }" pattern="yyyy/MM/dd"/>
						</c:if>
					</div>
				</div>
				<div class="d_cafeR_titleMiddle clearfix">
					<p class="d_cafeR_title">${board.writingTitle }</p>
					<div class="d_cafeR_user clearfix">
						<img src="${pageContext.request.contextPath }/resources/images/${board.userNo.userGrade.userGradeImage}" alt="등급아이콘" />
						<p>${board.userNo.nick }(${board.userNo.userId })</p>
					</div>
				</div>
				<div class="d_cafeR_cafe clearfix">
					<div class="d_cafe_icon clearfix">
						<a href="${pageContext.request.contextPath }/user/mukkaCafe/zone/read?cafeNo=${board.cafeNo.cafeNo}">
							<img src="${pageContext.request.contextPath }/resources/images/cafe_icon.png" alt="카페 아이콘" />
							<span class="orange bold">${board.cafeNo.cafeName }</span> 카페정보 <i class="fas fa-angle-right"></i>
						</a>
					</div>	
					<p class="d_cafe_viewCnt">
						조회수 <span class="orange"><fmt:formatNumber type="number" maxFractionDigits="3" value="${board.viewNumber}"/></span>
					</p>
				</div>
			</div>
			
			<!-- content 영역 -->
			<div class="d_cafeR_context_wrap">
				<div class="d_cafeR_context">
					${board.writingContent }
				</div>
				<div class="d_cafeR_map">
					<div id="map"></div>
					<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=1e1376bc4218f98e1f7612e86695629e&libraries=services"></script>
					<script>
						var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
					    mapOption = {
					        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
					        level: 3 // 지도의 확대 레벨
					    };  

						// 지도를 생성합니다    
						var map = new kakao.maps.Map(mapContainer, mapOption); 
						
						// 지도에 확대 축소 컨트롤을 생성한다
						var zoomControl = new kakao.maps.ZoomControl();

						// 지도의 우측에 확대 축소 컨트롤을 추가한다
						map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);
		
						// 주소-좌표 변환 객체를 생성합니다
						var geocoder = new kakao.maps.services.Geocoder();
		
						// 주소로 좌표를 검색합니다
						geocoder.addressSearch('${board.cafeNo.address }', function(result, status) {
		
						    // 정상적으로 검색이 완료됐으면 
						     if (status === kakao.maps.services.Status.OK) {
		
						        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
		
						        // 결과값으로 받은 위치를 마커로 표시합니다
						        var marker = new kakao.maps.Marker({
						            map: map,
						            position: coords
						        });
		
						        // 인포윈도우로 장소에 대한 설명을 표시합니다
						        var infowindow = new kakao.maps.InfoWindow({
						            content: '<div style="width:150px;text-align:center;padding:6px 0;">${board.cafeNo.cafeName}</div>'
						        });
						        infowindow.open(map, marker);
		
						        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
						        map.setCenter(coords);
						    } 
						});     
					</script>
				</div>
			</div>
			
			<!-- 버튼 영역 -->
			<div class="d_cafeR_btn_wrap clearfix bgLightGray wrapStyle">
				<div class="d_cafeR_cnt d_cafeR_voteBtn clearfix f_left">
					<a href="#" id="voteIcon" class="f_left off grayB">
						<i class="far fa-thumbs-up"></i>
					</a>
					<p class="grayB f_left">좋아요 <span id="voteNum"><fmt:formatNumber type="number" maxFractionDigits="3" value="${board.voteNumber }"/></span></p>
				</div>
				<div class="d_cafeR_cnt d_cafeR_replyBtn f_left">
					<i class="far fa-comment-dots clearfix grayB f_left"></i>
					<p class="grayB f_left">댓글 <span id="replyNum"><fmt:formatNumber type="number" maxFractionDigits="3" value="${board.replyCnt}"/></span></p>
				</div>
				<div class="d_cafeR_btns f_right">
					<button type="button" class="d_cafeR_modifyBtn greenLineBtn f_left">수정</button>
					<button type="button" class="d_cafeR_deleteBtn redLineBtn f_left">삭제</button>
					<button class="d_cafeR_listBtn navyBtn2 f_left">목록</button>
				</div>
			</div>
			
			<!-- 댓글 영역 -->
			<div class="d_cafeR_reply_wrap">
				<div class="d_cafeR_reply_input replyStyle clearfix">
					<!-- 로그인 된 회원의 등급 이미지 : 로그인 기능 구현 후 수정해야함 -->
					<img class="f_left" src="${pageContext.request.contextPath }/resources/images/Lv01_w1.png" alt="등급아이콘" />
					<textarea id="newCmt" class="f_left" name="commentContent" cols="30" rows="10" placeholder="여러분의 소중한 댓글을 남겨주세요."></textarea>
					<button id="d_cafeR_replyAddBtn" class="orangeBtn f_left">저장</button>
				</div>
				
				<!-- 댓글 list -->
				<div class="d_cafeR_replyList">
					<ul class="replyListUl"></ul>
					<div class="replyPage">
						<ul id="pagination" class="pagination"></ul>
					</div>
				</div>
			</div>
			
			<!-- 같은 카페의 다른 포스트 list -->
			<div class="cafeR_sameList">
				<c:if test="${sameCnt > 0 }">
					<div class="cafeR_sameTitle bottomLine clearfix">
							<p class="f_left"><span class="blue bold">${board.cafeNo.cafeName }</span>에 대한 <span class="orange bold"><fmt:formatNumber type="number" maxFractionDigits="3" value="${sameCnt }"/></span>개의 <span class="red bold">탐방기</span>가 더 있어요!</p>
						<c:if test="${sameCnt > 2 }">
							<div class="sameListBtn f_right">
								<div class="f_left orange"><span class="pageNum">1</span> / <span class="pageTotal">0</span></div>
								<div id="prevBtn" class="sameBtn f_left"><i class="fas fa-angle-left"></i></div>
								<div id="nextBtn" class="sameBtn f_left"><i class="fas fa-angle-right"></i></div>
							</div>
						</c:if>
					</div>
				</c:if>
				<div class="cafeR_List clearfix mb30">
					<c:forEach var="sameItem" items="${sameBoard }">
					<a href="${pageContext.request.contextPath }/user/community/cafeReview/read?boardNo=${sameItem.boardNo}&page=${cri.page}&searchZone=${cri.searchZone }&searchTheme=${cri.searchTheme }&searchType=${cri.searchType }&keyword=${cri.keyword}" class="a_cafeReview">
						<div class="cafeR_box">
							<div class="cafeR_titleBox">
								<div class="cafeR_titleImg">	
									<div class="bg"></div>						
									<img class="titleImg" src="" alt="카페대표이미지" />
									<script>
										// 같은 카페 다른 탐방기 list 대표이미지
										var imgPath = '${pageContext.request.contextPath }/user/displayFile?filename=';
										var sImgName = '${sameItem.files[0].imageName}';
										var imgName = sImgName.replace("s_", "");
										
										$(".cafeR_sameList .titleImg").attr("src", imgPath+imgName);
									</script>
								</div>
								<div class="cafeR_titleTop clearfix" >
									<div class="cafeR_writer clearfix">
										<img src="${pageContext.request.contextPath }/resources/images/${sameItem.userNo.userGrade.userGradeImage }" alt="등급아이콘" />
										<span class="cafeR_name bold">${sameItem.userNo.nick }</span>
										<span class="cafeR_id bold">(${sameItem.userNo.userId })</span>
									</div>
									<div class="cafeR_recomCnt bgRed">${sameItem.voteNumber }</div>						
								</div>
								<h2 class="classSec cafe_title">${sameItem.writingTitle }</h2>
								<div class="cafeR_date bold"><fmt:formatDate value="${sameItem.registrationDate }" pattern="yyyy/MM/dd"/></div>
							</div>
							<div class="cafeR_infoBox">
								<div class="cafeR_infoTop clearfix">
									<div class="zoneBtn zoneOrangeIconSmall">${sameItem.cafeNo.zoneNo.zoneName }</div>
									<div class="themeKeySmall themeName">#${sameItem.cafeNo.themeNo.themeName }</div>
									<h2>${sameItem.cafeNo.cafeName }</h2>
								</div>
								<%-- <p class="cafeR_text">
									${item.writingContent }
								</p> --%>
							</div>
							<div class="cafeR_replyCdt clearfix">
								<div class="cafeR_replyCdtWrap">
									<div class="cafeR_btns">
										<img src="${pageContext.request.contextPath }/resources/images/icon_reply.png" alt="icon" />
										<span class="cafeR_replyCnt">${sameItem.replyCnt }</span>
									</div>
									<div class="cafeR_btns">
										<img src="${pageContext.request.contextPath }/resources/images/icon_view.png" alt="icon" />
										<span class="cafeR_viewCnt">${sameItem.viewNumber }</span>
									</div>
								</div>
							</div>
						</div>
					</a>
					</c:forEach>
				</div>
			</div>
		</div>
		<!-- 서브페이지 콘텐츠 end -->
	</div>
	
<script>
</script>
<%-- 지우면 안됨 subMenu.jsp에 container 시작 태그 있음 --%>
</div>
<!-- container end -->


<!-- 댓글 구조 -->
<script id="template" type="text/x-handlebars-template">
	{{#each list}}
		<li class="replyStyle clearfix boardReply" data-cno="{{commentNo}}">
			<img class="f_left" src="${pageContext.request.contextPath }/resources/images/{{userNo.userGrade.userGradeImage}}" alt="등급아이콘" />
			<p class="f_left replyNick">{{userNo.nick}}</p>
			<div class="f_left replyCmtBox"><p>{{commentContent}}</p></div>
			<p class="regitDate orange f_right">{{dateHelper updateDate}}</p>
			<!-- login 기능 구현 후 c:if 해야함 -->
			<div class="replyBtn f_right">
				<a class="replyModify blueBtn off" href="#" data-cmtNo="{{commentNo}}" data-cmtCnt="{{commentContent}}">수정</a>
				<a class="replyRemove redBtn" href="#" data-cmtNo="{{commentNo}}">삭제</a>
			</div>
		</li>
	{{/each}}
</script>
<script id="replyModifyBox" type="text/x-handlebars-template">
	<div class="replyModify_box">
		<img class="f_left" src="{{userIcon}}" alt="등급아이콘"/>
		<p class="f_left replyNick">{{userNick}}</p>
		<div class="f_left replyCmtBox"><textarea id="modifyText" style="width:95%; padding: 10px;">{{commentContent}}</textarea></div>
		<div class="replyBtn f_right">
			<button class="modifyCancel blueBtn off" type="button">수정 취소</button>
			<button class="modifySumit redBtn" type="button" data-submitNo="{{commentNo}}">수정 저장</button>
		</div>
	</div>
</script>

<script>
	/*---- 댓글 -----------------------------------------------------------------------------------------------------*/
	var no = 1;
	Handlebars.registerHelper ("dateHelper", function(value){
		var d = new Date(value);
		var year = d.getFullYear();
		var month = d.getMonth() + 1;
		var day = d.getDate();
		return year + "/" + month + "/" + day;
	})
	
	/* 댓글 리스트 */
	function getPageList( page ){
		var boardNo = ${board.boardNo};
		
		$.ajax({
			url:"${pageContext.request.contextPath}/rest/replies/"+boardNo+"/"+page,
			type:"get",
			datatype:"json",
			success:function(res){
				//console.log(res);
				$(".boardReply").remove();
				var source = $("#template").html();
				var func = Handlebars.compile(source);
				$(".replyListUl").append(func(res));
				
				var startPage = res.pageMaker.startPage;
				var endPage = res.pageMaker.endPage;
				$("#pagination").empty();
				for(var i = startPage; i <= endPage; i++){
					var $li = $("<li>");
					if(i == no) {
						$li.addClass("active");
					}
					var $a = $("<a>").html(i);
					$li.append($a);
					$("#pagination").append($li);
				}
				
				var totalCnt = res.pageMaker.totalCount;
				$("#replyNum").text(totalCnt);
			}
		})
	}
	
	/* 댓글 리스트 show */
	getPageList(1);
	
	/* 댓글 페이징 */
	$(document).on("click", "#pagination a", function(){
		no = $(this).text();
		getPageList(no);
	})
	
	/* 댓글 추가 */
	$("#d_cafeR_replyAddBtn").click(function(){
		// login 기능 구현 후 수정해야함
		var userNo = 3;
		
		var boardNo = ${board.boardNo};
		var newCmt = $("#newCmt").val();
		
		if(newCmt == "") {
			alert("댓글 내용을 작성해주세요.");
			return false;
		}
		
		var json = JSON.stringify({"boardNo":{"boardNo" : boardNo}, "userNo": {"userNo" : userNo}, "commentContent":newCmt});
		$.ajax({
			url:"${pageContext.request.contextPath}/rest/replies/",
			type:"post",
			headers: {"Content-Type":"application/json"},
			data: json,
			dataType : "text",
			success: function(res){
				console.log(res);
				if(res == "SUCCESS"){
					alert("댓글이 등록되었습니다.");
					getPageList(no);
					$("#newCmt").val("");
				}
			}
		})		
	})
	
	/* 댓글 수정 : 댓글 수정 박스 */
	$(document).on("click",".replyModify", function(){
		
		var commentContent = $(this).attr("data-cmtcnt");
		var commentNo = $(this).attr("data-cmtno");

		var replyBox = $(this).closest("li");
		var iconSrc = replyBox.find("img").attr("src");
		var userNick = replyBox.find(".replyNick").text();
		//var commentContent = replyBox.find(".replyCmtBox > p").text();
		replyBox.children().hide();
		
		var source = $("#replyModifyBox").html();
		var data = {userIcon:iconSrc, userNick:userNick , commentContent: commentContent, commentNo: commentNo};
		var func = Handlebars.compile(source);
		replyBox.append(func(data)); 
		
		return false;
	})
	
	/* 댓글 수정 */
	// 수정 취소
	$(document).on("click", ".modifyCancel", function(){
		var replyBox = $(this).closest("li");
		replyBox.find(".replyModify_box").remove();
		replyBox.children().show();
	})
	
	// 수정 저장
	$(document).on("click", ".modifySumit", function(){
		var replyBox = $(this).closest("li");
		var commentContent = replyBox.find("#modifyText").val();
		var commentNo = $(this).attr("data-submitno");
		//console.log(commentContent);
		//console.log(commentNo);
		
		$.ajax({
			url:"${pageContext.request.contextPath}/rest/replies/"+commentNo,
			type:"put",
			headers : {"Content-Type":"application/json"},
			data: JSON.stringify({"commentContent" : commentContent}),
			dataType : "text",
			success:function(res){
				//console.log(res);
				if(res == "SUCCESS"){
					alert("수정되었습니다.");
					replyBox.find(".replyModify_box").remove();
					getPageList(no);
				}
			}
		})
		
	})
	
	/* 댓글 삭제 */
	$(document).on("click", ".replyRemove", function(){
		
		var commentNo = $(this).attr("data-cmtno");
		$.ajax({
			url:"${pageContext.request.contextPath}/rest/replies/"+commentNo,
			type:"delete",
			dataType : "text",
			success:function(res){
				console.log(res);
				if(res == "SUCCESS"){
					alert("삭제되었습나다.");						
					getPageList(no);
				}
			}
		})
		
		return false;
	})

	
	/*---- 게시글 -----------------------------------------------------------------------------------------------------*/
	// 수정 btn
	$(".d_cafeR_modifyBtn").click(function(){
		location.href = "${pageContext.request.contextPath }/user/community/cafeReview/modify?boardNo=${board.boardNo}&page=${cri.page}&searchZone=${cri.searchZone }&searchTheme=${cri.searchTheme }&searchType=${cri.searchType }&keyword=${cri.keyword}";
	})
	
	// 삭제 btn
	$(".d_cafeR_deleteBtn").click(function() {
		var flag = confirm("카페 탐방기를 삭제하시겠습니까?");
		if(flag) {
			location.href="${pageContext.request.contextPath }/user/community/cafeReview/remove?boardNo=${board.boardNo}&page=${cri.page}&searchZone=${cri.searchZone }&searchTheme=${cri.searchTheme }&searchType=${cri.searchType }&keyword=${cri.keyword}";
		}
	})
	
	// 목록 btn
	$(".d_cafeR_listBtn").click(function(){
		location.href = "${pageContext.request.contextPath }/user/community/cafeReview?page=${cri.page}&searchZone=${cri.searchZone }&searchTheme=${cri.searchTheme }&searchType=${cri.searchType }&keyword=${cri.keyword}";
	})
	
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
	
	// 좋아요(추천) - login 기능 구현시 수정해야함
	$("#voteIcon").click(function(e){
		e.preventDefault();
		var boardNo = ${board.boardNo};
		
		// login 기능 구현 후 수정해야함
		var userNo = 3;
		
		if($(this).hasClass("off")){
			$(this).empty();
			$(this).append('<i class="fas fa-thumbs-up"></i>');
			$(this).addClass("on").addClass('orange');
			$(this).removeClass("off").removeClass("grayB");
			$(this).next().addClass('orange').removeClass("grayB");
			
			$.ajax({
				url:"${pageContext.request.contextPath}/rest/votePlus",
				type:"get",
				data:{"boardNo" : boardNo, "userNo" : userNo},
				datatype:"json",
				success:function(res){
					console.log(res);
					$("#voteNum").text(res);
				}
			})
			
		} else if($(this).hasClass("on")){
			$(this).empty();
			$(this).append('<i class="far fa-thumbs-up"></i>');
			$(this).addClass("off").addClass('grayB');
			$(this).removeClass("on").removeClass("orange");
			$(this).next().addClass('grayB').removeClass("orange");
			
			$.ajax({
				url:"${pageContext.request.contextPath}/rest/voteMinus",
				type:"get",
				data:{"boardNo" : boardNo, "userNo" : userNo},
				datatype:"json",
				success:function(res){
					console.log(res);
					$("#voteNum").text(res);
				}
			})
		}		
	}) 
	
	
	/*---- 다른 탐방기 게시글 리스트 슬라이드 -----------------------------------------------------------------------------------------------------*/
	var sameBox = $(".cafeR_sameList > .cafeR_List");
	var sameCnt =  ${sameCnt};
	var samePage = Math.ceil(sameCnt / 2);
	var sameW = sameBox.width((920 * samePage) + (22 * samePage));
	
	var index = 0;
	var pageIndex = 1;
	
	$(".pageTotal").text(samePage);
	
	/* next */
	$("#nextBtn").click(function(){
		if(index == -(samePage-1)){
			return;
		}
		
		index--;
		pageIndex++;
		var marginLeft = index * 942;
		sameBox.stop().animate({"margin-left":marginLeft+"px"}, 500);
		$(".pageNum").text(pageIndex);
	})
	/* prev */
	$("#prevBtn").click(function(){
		if(index == 0){
			return;
		}
		
		index++;
		pageIndex--;
		var marginLeft = index * 942;
		sameBox.stop().animate({"margin-left":marginLeft+"px"}, 500);
		$(".pageNum").text(pageIndex);
	})
</script>

<%@ include file="../userInclude/footer.jsp" %>