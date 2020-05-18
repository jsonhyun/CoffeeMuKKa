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
	
	/* 콘텐츠 영역 */
	.d_cafeR_context_wrap {
		padding: 10px;
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
	
	.d_cafeR_reply_wrap .d_cafeR_replyList li > p:nth-of-type(1) {
		font-weight: 700;
		margin-right: 30px;
	}
	
	.d_cafeR_reply_wrap .d_cafeR_replyList li > p:last-child {
		position: absolute;
		font-size: 14px;
		top: 0;
		right: 25px;
	}
	
	/* 같은 카페 다른 리뷰 영역 */
	.cafeR_sameList {
		margin-top: 100px;
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
		width: 48.6%;
		border: 1px solid #545454;
		margin-bottom: 20px;
	}
	
	.cafeR_sameList .cafeR_box:hover .cafe_title{
		text-decoration: underline;
	}
	
	.cafeR_sameList .a_cafeReview:nth-of-type(odd) {
		margin-right: 20px;
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
					<div class="regDate"><fmt:formatDate value="${board.registrationDate }" pattern="yyyy/MM/dd"/></div>
				</div>
				<div class="d_cafeR_titleMiddle clearfix">
					<p class="d_cafeR_title">${board.writingTitle }</p>
					<div class="d_cafeR_user clearfix">
						<img src="${pageContext.request.contextPath }/resources/images/${board.userNo.userGrade.userGradeImage}" alt="등급아이콘" />
						<p>${board.userNo.nick }(${board.userNo.userId })</p>
					</div>
				</div>
				<div class="d_cafeR_cafe">
					<div class="d_cafe_icon clearfix">
						<a href="#">
							<img src="${pageContext.request.contextPath }/resources/images/cafe_icon.png" alt="카페 아이콘" />
							<span class="orange bold">${board.cafeNo.cafeName }</span> 카페정보 <i class="fas fa-angle-right"></i>
						</a>
					</div>	
				</div>
			</div>
			
			<!-- content 영역 -->
			<div class="d_cafeR_context_wrap">
				${board.writingContent }
			</div>
			
			<!-- 버튼 영역 -->
			<div class="d_cafeR_btn_wrap clearfix bgLightGray wrapStyle">
				<div class="d_cafeR_cnt d_cafeR_voteBtn clearfix f_left">
					<a href="#" class="f_left">
						<i class="far fa-thumbs-up orange voteIcon"></i>
					</a>
					<p class="orange f_left">좋아요 ${board.voteNumber }</p>
				</div>
				<div class="d_cafeR_cnt d_cafeR_replyBtn f_left">
					<i class="far fa-comment-dots clearfix grayB f_left"></i>
					<p class="grayB f_left">댓글 ${board.replyCnt}</p>
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
					<textarea class="f_left" name="commentContent" cols="30" rows="10" placeholder="여러분의 소중한 댓글을 남겨주세요."></textarea>
					<!-- <input class="f_left" type="text" name="commentContent" placeholder="여러분의 소중한 댓글을 남겨주세요."/> -->
					<button id="d_cafeR_replyAddBtn" class="orangeBtn f_left">저장</button>
				</div>
				
				<!-- 댓글 샘플 -->
				<div class="d_cafeR_replyList">
					<ul>
						<li class="replyStyle clearfix">
							<img class="f_left" src="${pageContext.request.contextPath }/resources/images/Lv01_w1.png" alt="등급아이콘" />
							<p class="f_left">닉네임1</p>
							<p class="f_left">댓글 내용</p>
							<p class="regitDate orange">2020/05/02</p>
						</li>
					</ul>
				</div>
			</div>
			
			<!-- 같은 카페의 다른 포스트 list -->
			<div class="cafeR_sameList">
				<c:if test="${sameCnt > 0 }">
					<div class="cafeR_sameTitle bottomLine clearfix">
							<p class="f_left"><span class="blue bold">${board.cafeNo.cafeName }</span>에 대한 <span class="orange bold">${sameCnt }</span>개의 <span class="red bold">탐방기</span>가 더 있어요!</p>
						<c:if test="${sameCnt > 4 }">
							<div class="sameListBtn f_right">
								<div class="sameBtn prevBtn f_left"><i class="fas fa-angle-left"></i></div>
								<div class="sameBtn nextBtn f_left"><i class="fas fa-angle-right"></i></div>
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
									<img class="titleImg" src="${pageContext.request.contextPath }/user/displayFile?filename=${sameItem.files[0].imageName}" alt="카페대표이미지" />
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

<script>
	// 목록 btn
	$(".d_cafeR_listBtn").click(function(){
		location.href = "${pageContext.request.contextPath }/user/community/cafeReview?page=${cri.page}&searchZone=${cri.searchZone }&searchTheme=${cri.searchTheme }&searchType=${cri.searchType }&keyword=${cri.keyword}"
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
</script>

<%@ include file="../userInclude/footer.jsp" %>