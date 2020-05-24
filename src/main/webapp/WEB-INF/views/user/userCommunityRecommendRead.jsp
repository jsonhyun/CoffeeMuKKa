<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../userInclude/header.jsp" %>
<%@ include file="../userInclude/subMenu.jsp" %>



<!-- ------------------------------------------------------------ C S S ------------------------------------------------------------ -->
<style>
	/*** 추천카페 CSS 목차 ***/
	
	/* 
	 *
	 * 1. 제목
	 * 2. 내용(사진/지도/글)
	 * 3. 버튼영역(좋아요, 댓글수, 수정&삭제&목록 버튼)
	 * 4. 댓글(댓글입력, 댓글목록(수정&삭제), 댓글페이징)
	 * 5. 리스트배너1
	 * 6. 리스트배너2
	 *
	 */
	 
	 
	/* --------------- 공 통 --------------- */
	.wrapStyle {
	    border-top: 1px solid #545454;
		border-bottom: 1px solid #545454;
		padding: 15px;
	}
	 
	/************** 1. 제목   *************/	
	
	.RC_titleWrap .keyword {
		font-size: 14px;
	}
	
	.RC_titleWrap .RC_regDate {
		float: right;
		color: gray;
		font-weight: 300;
		margin-right: 13px;
	}
	
	.RC_titleWrap .RC_title2{
		padding: 10px;
	}
	
	.RC_titleWrap .RC_readTitleName {
		font-size: 25px;
		font-weight: 700;
		float: left;
	}
	
	.RC_titleWrap .RC_userInfo {
		float: right;
	}
	
	.RC_titleWrap .RC_userInfo img{
		height: 25px;
		float: left;
		margin-right: 5px;
	}
	
	.RC_titleWrap .RC_userInfo p {
		float: left;
		font-size: 16px;
		font-weight: 700;
	}
	
	.RC_titleWrap .RC_pointIcon {
		background-color: #deeaf6;
		display: inline-block;
		padding: 10px;
	}
	
	.RC_titleWrap .RC_pointIcon a {
		color: #2d4686;
	}
	
	.RC_titleWrap .RC_pointIcon img {
		height: 25px;
		float: left;
		margin-right: 10px;
	}
	#RC_viewCnt{
		float: right;
		color: gray;
		font-weight: 300;
		margin-right: 13px;
		margin-top: 10px;	
	}
	
	/************** 2. 내용   *************/
	
	.RC_contentWrap {
		padding: 10px;
	}
	.RC_contentWrap .readImgBox{ /* 이미지 사이즈 고민 */
		text-align: center;
	}
	.RC_contentWrap .readImgBox img{ /* 이미지 사이즈 고민 */
		width: 100%;
		margin-top: 15px;
	}
	div#addMap{
		width: 102%;
		margin-top: 15px;
		margin-bottom: 15px;
	}
	span.mapTitle{
		background-color: #303A50;
		color: white;
		font-weight: bold;
		padding-left: 5px;
		padding-right: 5px;
		border-radius: 3px;
		letter-spacing: 2px;
	}
	.RC_contentWrap #map{ 
		width: 100%;
		height: 400px;
	}
	
	/************** 3. 버튼영역   *************/
	
	.RC_btnWrap .RC_countBox {
		font-size: 20px;
		line-height: 18px;
		margin-right: 20px;
		margin-top: 10px;
	}
	
	.RC_btnWrap p {
		margin-left: 5px;
	}
	
	.RC_btnWrap .RC_btnAll button {
		font-size: 18px;
		margin-left: 10px;
	}
	
	/************** 4. 댓글영역   *************/
	
	.replyStyle{
		border-bottom: 1px solid #545454;
		padding: 10px 25px;
	}
	
	/* -- 댓글 작성 */
	.RC_replyWrap .RC_replyInputBox img {
		height: 37px;
		margin-right: 15px;
	}
	
	.RC_replyWrap .RC_replyInputBox textarea[name="commentContent"] {
		height: 35px;
		width: 83%;
		margin-right: 15px;
		padding: 0 10px;
		line-height: 35px;
		font-size: 16px;
	}
	
	.RC_replyWrap .RC_replyInputBox #RC_replyAddBtn {
		font-size: 18px;
	}
	
	/* -- 댓글 리스트 */
	.RC_replyWrap .RC_replyList li {
		line-height: 35px;
		position: relative;
	}	
	
	.RC_replyWrap .RC_replyList li img {
		height: 35px;
		margin-right: 30px;
	}
	
	.RC_replyWrap .RC_replyList li .replyNick {
		font-weight: 700;
		margin-right: 30px;
	}
	
	.RC_replyWrap .RC_replyList li .replyCmtBox {
		width: 480px;
	}
	
	.RC_replyWrap .RC_replyList li .replyCmtBox > p {
		-ms-word-break: break-all;
		word-break: break-all;
	}
	
	.RC_replyWrap .RC_replyList li > p:nth-of-type(3) {
		font-size: 14px;
	}
	
	.RC_replyWrap .RC_replyList li .replyBtn {
		margin-right: 30px;
	}
	
	.RC_replyWrap .replyPage {
		text-align: center;
	}
	
	/* -- 댓글 페이징 */
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
	
	/************** 5. 리스트배너1,2 : 같은카페명 & 같은키워드   *************/
	
	.RC_sameList {
		margin-top: 70px;
	}
	
	.RC_sameList .RC_sameTitle {
		font-size: 20px;
	}
	
	.RC_sameList .RC_sameTitle .RC_sameBtn {
		width: 30px;
	    height: 30px;
	    border: 1px solid #aaa;
	    line-height: 30px;
	    text-align: center;
	    margin-left: 10px;
	    cursor: pointer;
	}
	
	.RC_sameList .RC_noImgList{
		text-align: center;
	}
	.RC_noImgList p.RC_noListMent{
		color: #5D5D5D;
	}
	.RC_noImgList span.hotpink{
		color:#FF007F;
		font-size: 18px;
	}
	
	.RC_banner{
		width: 918px;
		height: 265px;
	}
	.RC_bannerWrap{
		width: 918px;
		height: 265px;
		overflow: hidden;
	}
	.RC_banner .RC_bannerWrap li {
		float: left;
		width: 222px;
		height: 260px;
		margin: 3px;
		border: 1px solid #545454;
	}
	.RC_banner .RC_bannerWrap li div.RC_listBtnImgWrap{
		width: 100%;
		height: 160px;
		overflow: hidden;
	}
	.RC_banner .RC_bannerWrap li div.RC_listBtnImgContainer img{
		width: 100%;
		height: 160px;
		transition:all 1s;
		transform-origin:left-top;
	}
	
	.RC_banner .RC_bannerWrap li div.RC_listBtnImgContainer img:hover{
		transform:scale(1.2);
	}		
	.RC_banner .RC_bannerWrap li div.RC_listBtnTitle1{
		width: 90%;
		height: 33px;
		padding: 8px;
	}
	.RC_banner .RC_bannerWrap li div.RC_listBtnTitle1 div.zoneBtn,div.themeKeySmall{
		font-size: 12px;
		margin-top: 5px;
	}
 	.RC_banner .RC_bannerWrap li div.RC_listBtnTitle2{
		width: 90%;
		height: 45px;
		padding: 8px;
	}
</style>


<!-- ------------------------------------------------------------ H T M L ------------------------------------------------------------ -->

	<!-- *** 추천카페 HTML 목차 ***  -->
	
	<!-- 
	 *
	 * 1. 제목
	 * 2. 내용(사진/지도/글)
	 * 3. 버튼영역(좋아요, 댓글수, 수정&삭제&목록 버튼)
	 * 4. 댓글(댓글입력, 댓글목록(수정&삭제), 댓글페이징)
	 * 5. 리스트배너1
	 * 6. 리스트배너2
	 *
	 */ -->

<!-- -------------------------------------------------------------------------------------------------------------------------------- -->
	 
	<div class="content subPageContent"><!-- 큰틀1 -->	
		<div class="contentArea"><!-- 큰틀2 -->
				
			<h2 class="subPageTitle">
				<span class="title">MuKKa人 추천 카페</span>
				<span class="subTit grayB"> | 세 상 에! 이런 카페가 있는지 몰랐지?</span>
			</h2>
			
			<!-- *히든처리 : 게시글 번호 : boardNo -->
			<input type="hidden" name="board.boardNo" value="${board.boardNo}">
			
<!-- ************************************************************* 1. 제목  ************************************************************** -->

			<div class="RC_titleWrap bgLightGray wrapStyle">
			
			    <!-- (1) 지역/테마/등록일&수정일 -->
				<div class="RC_title1 clearfix">
					<div class="zoneOrangeIconSmall keyword">${board.zoneNo.zoneName }</div>
					<c:choose>
						<c:when test="${board.themeNo.themeNo == 1}">
							<div class="date keyword themeKeySmall">#${board.themeNo.themeName}</div>
						</c:when>
						<c:when test="${board.themeNo.themeNo == 2}">
							<div class="view keyword themeKeySmall">#${board.themeNo.themeName}</div>
						</c:when>
						<c:when test="${board.themeNo.themeNo == 3}">
							<div class="ame keyword themeKeySmall">#${board.themeNo.themeName}</div>
						</c:when>
						<c:when test="${board.themeNo.themeNo == 4}">
							<div class="dessert keyword themeKeySmall">#${board.themeNo.themeName}</div>
						</c:when>
						<c:when test="${board.themeNo.themeNo == 5}">
							<div class="dog keyword themeKeySmall">#${board.themeNo.themeName}</div>
						</c:when>
						<c:otherwise>
							<div class="work keyword themeKeySmall">#${board.themeNo.themeName}</div>
						</c:otherwise>
					</c:choose>
					<div class="RC_regDate">
						등록일 : <fmt:formatDate value="${board.registrationDate }" pattern="yyyy/MM/dd" />
						<c:if test="${board.registrationDate != board.updateDate}">
							 | 수정일 : <fmt:formatDate value="${board.updateDate }" pattern="yyyy/MM/dd" />
						</c:if>
					</div>
				</div>
				
				<!-- (2) 타이틀/등급아이콘,닉네임,아이디 -->
				<div class="RC_title2 clearfix">
					<p class="RC_readTitleName" id="RC_cafeName">${board.writingTitle }</p>
					<div class="RC_userInfo clearfix">
						<img src="${pageContext.request.contextPath }/resources/images/${board.userNo.userGrade.userGradeImage}" alt="등급아이콘">
						<p>${board.userNo.nick }(${board.userNo.userId })</p>
					</div>
				</div>
				
				<!-- (3) 주소 -->
				<div class="RC_title3">
					<div class="RC_pointIcon clearfix">
						<img src="${pageContext.request.contextPath }/resources/images/location.png" alt="주소아이콘">
						<span class="blue bold" id="RC_address">${board.address}</span>
					</div>
					<div id="RC_viewCnt">
						조회수 <span class="orange"><fmt:formatNumber type="number" maxFractionDigits="3" value="${board.viewNumber}"/></span> <!-- 조회수 : 3자리 마다 쉼표 -->
					</div>
				</div>
				
			</div>
		
<!-- ******************************************************** 2. 내용(사진/지도/글)  ********************************************************* -->

			<div class="RC_contentWrap">
			
				<!-- (1) 이미지 -->			
				<c:forEach var="file" items="${board.files}">
					<input type="hidden" class="readImgName" value="${file.imageName}">
				</c:forEach>								
				<div class="readImgBox">
					<!-- 이미지꺼내서 첨부하기 -->
				</div>
				
				<!-- (2) 지도첨부 -->
				<div id="addMap">
					<span class="mapTitle">지도</span> | ${board.address}
				</div>
			    <div id="map"></div>
			    
				<!-- (3) 글내용 : pre태그로 textarea에서 쓴 형태 그대로 저장 -->
				<div id="RC_contentText">
					<pre style="padding:30px;">${board.writingContent}</pre>
				</div>
				
			</div>			
			
<!-- *********************************************** 3. 버튼영역(좋아요, 댓글수, 수정&삭제&목록 버튼)  *********************************************** -->

			<div class="RC_btnWrap clearfix bgLightGray wrapStyle">
			    
			    <!-- (1) 카운트: 좋아요 -->
				<div class="RC_countBox RC_voteBtn clearfix f_left">
					<a href="#" id="voteIcon" class="f_left off grayB">
						<i class="far fa-thumbs-up"></i>
					</a>
					<p class="grayB f_left">좋아요 <span id="voteNum"><fmt:formatNumber type="number" maxFractionDigits="3" value="${board.voteNumber}"/></span></p>
				</div>
				
				<!-- (2) 카운트: 댓글수 -->
				<div class="RC_countBox RC_replyBtn f_left">
					<i class="far fa-comment-dots clearfix grayB f_left"></i>
					<p class="grayB f_left">댓글 <span id="replyNum"><fmt:formatNumber type="number" maxFractionDigits="3" value="${board.replyCnt}"/></span></p>
				</div>
				
				<!-- (3) 수정/삭제/목록 -->
				<div class="RC_btnAll f_right">
					<button type="button" class="greenLineBtn f_left" id="RC_modifyBtn">수정</button>
					<button type="button" class="redLineBtn f_left" id="RC_deleteBtn">삭제</button>
					<button class="navyBtn2 f_left" id="RC_listBtn">목록</button>
				</div>
				
			</div>
			
<!-- *********************************************** 4. 댓글영역(댓글입력, 댓글리스트(수정&삭제), 댓글페이징)  *********************************************** -->

			<div class="RC_replyWrap">
			
	            <!-- (1) 댓글입력 -->		
				<div class="RC_replyInputBox replyStyle clearfix">
					<!-- 로그인 된 회원의 등급 이미지 : 로그인 기능 구현 후 수정해야함 -->
					<img class="f_left" src="${pageContext.request.contextPath }/resources/images/Lv01_w1.png" alt="등급아이콘">
					<textarea id="newReply" class="f_left" name="commentContent" cols="30" rows="10" placeholder="여러분의 소중한 댓글을 남겨주세요."></textarea>
					<button id="RC_replyAddBtn" class="orangeBtn f_left">저장</button>
				</div>
				
				<!-- (2) 댓글리스트 -->
				<div class="RC_replyList">
				
				    <!-- 댓글리스트 -->
					<ul class="replyListUl"></ul>
					
					<!-- 댓글페이징 -->
					<div class="replyPage">				
						<ul id="pagination" class="pagination"></ul>
					</div>
				</div>
				
			</div>			
			
			
			
<!-- ********************************************************* 5. 리스트배너1 -- 같은카페명  ********************************************************* -->

		<div class="RC_sameList">
             
            <!-- (1) 제목 & 게시글나머지숫자 --> 
            		
			<!-- 관련추천글 X : 제목 + noImg + 여러분의 소중한 추천 카페 후기를 기다리고 있어요! -->
			<c:if test="${sameCafeCnt == 0 }">
				<div class="RC_sameTitle bottomLine clearfix">
						<p class="f_left">
							<span class="blue bold">${board.writingTitle}</span>에 대한 
							<span class="orange bold">관련된 </span>
							<span class="red bold">추천글</span>이 아직 없습니다.
						</p>
				</div>
			</c:if>
							
			<c:if test="${sameCafeCnt == 0 }">
				<div class="RC_noImgList">
					<img src ="${pageContext.request.contextPath}/resources/images/rc_noImg.png" alt="NoImg">
					<p class ="RC_noListMent bold">여러분의 소중한 <span class="hotpink">추천 카페 후기</span>를 기다리고 있어요!</p>
				</div>
			</c:if>
			
					
			<!-- 관련추천글 O : 제목 + 나머지 추천카페 게시물 숫자 -->
			<c:if test="${sameCafeCnt > 0 }">
				<div class="RC_sameTitle bottomLine clearfix">
					<p class="f_left">
						<span class="blue bold">${board.writingTitle}</span>에 대한 
						<span class="orange bold"><fmt:formatNumber type="number" maxFractionDigits="3" value="${sameCafeCnt }"/></span>개의 
						<span class="red bold">추천글</span>이 더 있어요!
					</p>
					
					<!-- 페이징 버튼생성 -->
					<c:if test="${sameCafeCnt > 4 }">
						<div class="RC_sameListBtns f_right">
							<div class="f_left orange"><span class="pageNum1">1</span> / <span class="pageTotal1">0</span></div>
							<div class="RC_sameBtn f_left" id="prevBtn1"><i class="fas fa-angle-left"></i></div>
							<div class="RC_sameBtn f_left" id="nextBtn1"><i class="fas fa-angle-right"></i></div>
						</div>
					</c:if>
				</div>
			</c:if>
		
		</div>
			
		<!-- 관련추천글 O : 이미지배너 -->
		<c:if test="${sameCafeCnt > 0 }">
			<div class="RC_banner mb30">
			
				<div class="RC_bannerWrap">
					<ul id="banner1">
						<c:forEach var="sameCafe" items="${sameCafe}">
							<a href="${pageContext.request.contextPath}/user/community/cafeRecommend/read?boardNo=${sameCafe.boardNo}">
								<li>
									<div class="RC_listBtnImgWrap">
										<div class="RC_listBtnImgContainer">
											<!-- 이미지 이름 꺼내서 삽입하기 -->
											<c:forEach var="img" items="${slistImg}">
												<c:if test="${img.boardNo.boardNo == sameCafe.boardNo }">
													<img src="${pageContext.request.contextPath }/user/displayFile?filename=${img.imageName}" class="thumbNailImg" onerror="this.src='${pageContext.request.contextPath}/resources/images/rc_noImg.png'">
												</c:if>
											</c:forEach>
										</div>
									</div>
									<div class="RC_listBtnTitle1">
										<!-- 위치 -->
										<div class="zoneBtn zoneOrangeIconSmall keyword">${sameCafe.zoneNo.zoneName}</div>
										<!-- 키워드 -->
										<c:choose>
											<c:when test="${sameCafe.themeNo.themeNo == 1}">
												<div class="date themeKeySmall keyword">#${sameCafe.themeNo.themeName}</div>
											</c:when>
											<c:when test="${sameCafe.themeNo.themeNo == 2}">
												<div class="view themeKeySmall keyword">#${sameCafe.themeNo.themeName}</div>
											</c:when>
											<c:when test="${sameCafe.themeNo.themeNo == 3}">
												<div class="ame themeKeySmall keyword">#${sameCafe.themeNo.themeName}</div>
											</c:when>
											<c:when test="${sameCafe.themeNo.themeNo == 4}">
												<div class="dessert themeKeySmall keyword">#${sameCafe.themeNo.themeName}</div>
											</c:when>
											<c:when test="${sameCafe.themeNo.themeNo == 5}">
												<div class="dog themeKeySmall keyword">#${sameCafe.themeNo.themeName}</div>
											</c:when>
											<c:otherwise>
												<div class="work themeKeySmall keyword">#${sameCafe.themeNo.themeName}</div>
											</c:otherwise>
										</c:choose>
									</div>
									<div class="RC_listBtnTitle2">
										<h3>${sameCafe.writingTitle}</h3>
									</div>
								</li>
							</a>
						</c:forEach>
					</ul>
				</div>

			</div>
		</c:if>
		


<!-- ********************************************************* 6. 리스트배너2 -- 같은키워드명  ********************************************************* -->
		<div class="RC_sameList">
            <!-- (1) 제목 & 게시글나머지숫자 --> 
            		
			<!-- 관련추천글 X : 제목 + noImg + 여러분의 소중한 추천 카페 후기를 기다리고 있어요! -->
			<c:if test="${sameKeywordCnt == 0 }">
				<div class="RC_sameTitle bottomLine clearfix">
					<p class="f_left">
						<span style="color: navy" class="bold">#${board.zoneNo.zoneName} #${board.themeNo.themeName}</span>에 대한 
						<span class="orange bold">관련된</span> 
						<span class="red bold">추천글</span>이 아직 없습니다.
					</p>
				</div>
			</c:if>
			<c:if test="${sameKeywordCnt == 0 }">
				<div class="RC_noImgList">
					<img src="${pageContext.request.contextPath}/resources/images/rc_noImg.png" alt="NoImg">
					<p class="RC_noListMent bold">
						여러분의 소중한 <span class="hotpink">추천 카페 후기</span>를 기다리고 있어요!
					</p>
				</div>
			</c:if>

			<!-- 관련추천글 O : 제목 + 나머지 추천카페 게시물 숫자 -->
			<c:if test="${sameKeywordCnt > 0 }">
				<div class="RC_sameTitle bottomLine clearfix">
					<p class="f_left">
						<span style="color:navy" class="bold">#${board.zoneNo.zoneName} #${board.themeNo.themeName}</span>에 대한 
						<span class="orange bold"><fmt:formatNumber type="number" maxFractionDigits="3" value="${sameKeywordCnt }"/></span>개의 
						<span class="red bold">추천글</span>이 더 있어요!
					</p>
					
					<!-- 페이징 버튼생성 -->
					<c:if test="${sameKeywordCnt > 4 }">
						<div class="RC_sameListBtns f_right">
							<div class="f_left orange"><span class="pageNum2">1</span> / <span class="pageTotal2">0</span></div>
							<div class="RC_sameBtn f_left" id="prevBtn2"><i class="fas fa-angle-left"></i></div>
							<div class="RC_sameBtn f_left" id="nextBtn2"><i class="fas fa-angle-right"></i></div>
						</div>
					</c:if>
				</div>
			</c:if>
		</div>
		
		<!-- 관련추천글 O : 이미지배너 -->
		<c:if test="${sameKeywordCnt > 0 }">
			<div class="RC_banner mb30">
				<div class="RC_bannerWrap">
					<ul id="banner2">
						<c:forEach var="sameKeyword" items="${sameKeyword}">
							<a href="${pageContext.request.contextPath}/user/community/cafeRecommend/read?boardNo=${sameKeyword.boardNo}">
								<li>
									<div class="RC_listBtnImgWrap">
										<div class="RC_listBtnImgContainer">
							                <!-- 이미지 이름 꺼내서 삽입하기 -->		
											<c:forEach var="img" items="${klistImg}">
												 <c:if test="${img.boardNo.boardNo == sameKeyword.boardNo }">
													<img src = "${pageContext.request.contextPath }/user/displayFile?filename=${img.imageName}" class="thumbNailImg" onerror="this.src='${pageContext.request.contextPath}/resources/images/rc_noImg.png'">										
												</c:if>
											</c:forEach>								
										</div>
									</div>
									<div class="RC_listBtnTitle1">
										<!-- 위치 -->
										<div class="zoneBtn zoneOrangeIconSmall keyword">${sameKeyword.zoneNo.zoneName}</div>
										<!-- 키워드 -->
										<c:choose>
											<c:when test="${sameKeyword.themeNo.themeNo == 1}">
												<div class="date themeKeySmall keyword">#${sameKeyword.themeNo.themeName}</div>
											</c:when>
											<c:when test="${sameKeyword.themeNo.themeNo == 2}">
												<div class="view themeKeySmall keyword">#${sameKeyword.themeNo.themeName}</div>
											</c:when>
											<c:when test="${sameKeyword.themeNo.themeNo == 3}">
												<div class="ame themeKeySmall keyword">#${sameKeyword.themeNo.themeName}</div>
											</c:when>
											<c:when test="${sameKeyword.themeNo.themeNo == 4}">
												<div class="dessert themeKeySmall keyword">#${sameKeyword.themeNo.themeName}</div>
											</c:when>
											<c:when test="${sameKeyword.themeNo.themeNo == 5}">
												<div class="dog themeKeySmall keyword">#${sameKeyword.themeNo.themeName}</div>
											</c:when>
											<c:otherwise>
												<div class="work themeKeySmall keyword">#${sameKeyword.themeNo.themeName}</div>
											</c:otherwise>
										</c:choose>
									</div>
									<div class="RC_listBtnTitle2">
										<h3>${sameKeyword.writingTitle}</h3>
									</div>
								</li>
							</a>
						</c:forEach>
					</ul>
				</div>
			</div>
		</c:if>		
	</div><!-- 큰틀1 -->
</div><!-- 큰틀2 -->	
<!-- 서브페이지 콘텐츠 end -->
<%-- 지우면 안됨 subMenu.jsp에 container 시작 태그 있음 --%>
</div>
<!-- container end -->


<!-- ------------------------------------------------------------ HandleBars ------------------------------------------------------------ -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=82c67a5c009ecc3de6e3c10d398c0061&libraries=services"></script>
<!-- (1) 댓글틀 : 댓글리스트 -->
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

<!-- (2) 댓글틀 : 댓글수정 -->
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




<!-- ------------------------------------------------------ JavaScript & jQuery ------------------------------------------------------ -->
<script>
	/*** 추천카페 JavaScript & jQuery 목차 ***/
	
	/* 
	 *
	 * 1. 제목
	 * 2. 내용(사진/지도/글)
	 * 3. 버튼영역(좋아요, 댓글수, 수정&삭제&목록 버튼)
	 * 4. 댓글(댓글입력, 댓글목록(수정&삭제), 댓글페이징)
	 * 5. 리스트배너1
	 * 6. 리스트배너2
	 *
	 */
	 
	 
	 
	/****** 1. 제목 ******/
	
	// -- 지도(주소) -- //
	
	// 주소, 카페이름 빼오기
	var address = $("#RC_address").text();
	//console.log("주소"+address);
	var cafeName = $("#RC_cafeName").text();
	if(address == ""){ //정확한 주소를 알 수 없을때
		$("#RC_address").removeClass("blue").addClass("red");
		$("#RC_address").text("정확한 주소를 확인할 수 없습니다.");
		$("div#addMap").hide(); // 지도 Title remove
		$("div#map").hide(); // 지도 remove
	}
	//console.log("카페이름"+cafeName);
	// 주소-좌표 변환 객체를 생성합니다
	var geocoder = new kakao.maps.services.Geocoder();
	
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		mapOption = {
			center : new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
			level : 3 // 지도의 확대 레벨
		};

	// 지도를 생성합니다    
	var map = new kakao.maps.Map(mapContainer, mapOption);

	// 주소로 좌표를 검색합니다 -- address
	geocoder.addressSearch(address, function(result, status) {
		// 정상적으로 검색이 완료됐으면 
		if (status === kakao.maps.services.Status.OK) {
			var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
			// 결과값으로 받은 위치를 마커로 표시합니다
			var marker = new kakao.maps.Marker({
				map : map,
				position : coords
			});
			// 인포윈도우로 장소에 대한 설명을 표시합니다
			var infowindow = new kakao.maps.InfoWindow({                              //cafeName
				content : '<div style="width:150px;text-align:center;padding:6px 0;">'+cafeName+'</div>'
			});
			infowindow.open(map, marker);
			// 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
			map.setCenter(coords);
		}
	});
	
	
	/****** 2. 내용 ******/
	
	// -- 내용:사진출력 -- //
	
	var filesCnt = $(".readImgName").length;
	var arr = new Array(filesCnt);
	for(var i = 0; i<filesCnt;i++){
		arr[i] = $(".readImgName").eq(i).val();
		//alert(arr[i]);
		var start = arr[i].substring(0,12);
		var end = arr[i].substring(14);
		
		//console.log(start+end);
		fileName = start + end;
		//alert(fileName);
		
		$("div.readImgBox").append("<img src = '${pageContext.request.contextPath }/user/displayFile?filename="+fileName+"'>");			 	
	}
	
	
	/****** 3. 버튼영역 ******/
	
	// -- 수정버튼 -- //	
	$("#RC_modifyBtn").click(function() {
		location.href="${pageContext.request.contextPath}/user/community/cafeRecommend/modify?boardNo=${board.boardNo}";
	})
	// -- 삭제버튼 -- //	
	$("#RC_deleteBtn").click(function() {
		location.href="${pageContext.request.contextPath}/user/community/cafeRecommend";
	})	
	
	// -- 목록버튼 -- //	
	$("#RC_listBtn").click(function() {
		location.href="${pageContext.request.contextPath}/user/community/cafeRecommend";
	})
	


	/****** 5,6. 리스트배너 ******/	
	
	// -- 원본파일 불러오기(선명한파일) -- //
	$(".thumbNailImg").each(function(i, obj) {
		var file = $(this).attr("src");
		//console.log("TEST========="+file);
		var start = file.substring(0,51);
		var end = file.substring(53);
		var fileName = start + end;
		$(this).attr("src", fileName);
		//console.log("TEST========="+fileName);
	})
	
	// ---------------------- 첫번째 배너 -------------------------------- //
	var sameCafeCnt = ${sameCafeCnt}; // 관련총 게시물 개수 ex.9
	console.log(sameCafeCnt);
	var pageNum1 = $(".pageNum1").text();
	
	//페이징
	var pageTotal1 = Math.ceil(${sameCafeCnt} / 4); // ex. 3페이지
	$(".pageTotal1").text(pageTotal1); // 1/3
	
	//ul너비 자동계산 주입시키기
	var width1 = (920*pageTotal1);
	$("ul#banner1").css("width",width1);
	//next버튼
	var index1 = 0;
	$("#nextBtn1").click(function() {
		
		if(index1 == -(pageTotal1-1)){
			alert("오른쪽 끝입니다.");
			return;
		}
		
		pageNum1++;
		$(".pageNum1").text(pageNum1);
		
		index1--;
		var marginLeft = index1 * 920;
		$("ul#banner1").animate({"margin-left":marginLeft+"px"},1500);
	})
	//prev버튼
	$("#prevBtn1").click(function() {
		if(index1 == 0){
			alert("왼쪽 끝입니다.");
			return;
		}
		pageNum1--;
		$(".pageNum1").text(pageNum1);
		
		index1++;
		var marginLeft = index1 * 920; 
		$("ul#banner1").animate({"margin-left":marginLeft+"px"},1500);
	})
	
	
	// ---------------------- 두번째 배너 -------------------------------- //
	var sameKeywordCnt = ${sameKeywordCnt}; 
	var pageNum2 = $(".pageNum2").text();
	
	//페이징
	var pageTotal2 = Math.ceil(${sameKeywordCnt} / 4); 
	$(".pageTotal2").text(pageTotal2); 
	
	//ul너비 자동계산
	var width2 = (920*pageTotal2);
	$("ul#banner2").css("width",width2);
	//next버튼
	var index2 = 0;
	$("#nextBtn2").click(function() {
		
		if(index2 == -(pageTotal2-1)){
			alert("오른쪽 끝입니다.");
			return;
		}
		
		pageNum2++;
		$(".pageNum2").text(pageNum2);
		
		index2--;
		var marginLeft = index2 * 920;
		$("ul#banner2").animate({"margin-left":marginLeft+"px"},1500);
	})
	//prev버튼
	$("#prevBtn2").click(function() {
		if(index2 == 0){
			alert("왼쪽 끝입니다.");
			return;
		}
		pageNum2--;
		$(".pageNum2").text(pageNum2);
		
		index2++;
		var marginLeft = index2 * 920; 
		$("ul#banner2").animate({"margin-left":marginLeft+"px"},1500);
	})
	
	/****** 4. 댓글 ******/
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
	$("#RC_replyAddBtn").click(function(){
		// login 기능 구현 후 수정해야함
		var userNo = 3;
		
		var boardNo = ${board.boardNo};
		var newReply = $("#newReply").val();
		
		var json = JSON.stringify({"boardNo":{"boardNo" : boardNo}, "userNo": {"userNo" : userNo}, "commentContent":newReply});
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
					$("#newReply").val("");
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
</script>

<%@ include file="../userInclude/footer.jsp" %>