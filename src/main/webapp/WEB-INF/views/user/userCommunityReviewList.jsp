<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../userInclude/header.jsp" %>
<%@ include file="../userInclude/subMenu.jsp" %>

<style>
	/* 선택 검색 */
	.cafeReviewSearch {
		padding: 10px 0;
		padding-top: 20px;
	}

	.cafeReviewSearch .selectLeft {
		float: left;
	}
	
	.cafeReviewSearch .selectRight {
		float: right;
	}
	
	/* 탐방기 */
	.cafeReviewArea .cafeRCnt {
		font-weight: 400;
		font-size: 16px;
	}
	
	.cafeReviewArea .cafeR_titleWrap {
		padding: 10px 0;
	}
	
	.cafeReviewArea .cafeR_title {
		float: left;
	}
	
	.cafeReviewArea .cafeR_topBtns {
		float: right;
	}
	
	.cafeReviewArea .cafeR_topBtn {
		float: left;
		font-size: 14px;
	}
	
	.cafeReviewArea .cafeR_totalBtn {
		margin-right: 10px;
	}
	
	.cafeReviewArea .cafeR_add {
		padding: 7px 10px;
		border-radius: 10px;
	}
	
	.cafeReviewArea .cafeR_addBtn {
		color: #fff;
   		font-size: 14px;
	}
	
	.cafeReviewArea .cafeR_totalBtn:hover {
		border-color: #ED7D31;
	}
	
	.cafeReviewArea .cafeR_add:hover {
		background-color: #F46B45;	
	}
	
	.cafeReviewArea .cafeR_box {
		float: left;
		width: 48.6%;
		border: 1px solid #545454;
	}
	
	.cafeReviewArea .cafeR_box:nth-of-type(odd) {
		margin-right: 20px;
	}
	
	.cafeReviewArea .cafeR_titleBox {
		height: 200px;
		padding: 15px 10px;
		position: relative;
		color: #fff;
	}
	
	.cafeReviewArea .cafeR_writer {
		line-height: 50px;
		float: left;
	}
		
	.cafeReviewArea .cafeR_writer img {
		width: 50px;
		display: block;
		float: left;
		margin-right: 10px;
	}
	
	.cafeReviewArea .cafeR_writer span {
		display: block;
		float: left;
		color: #fff;
		font-size: 18px;
	}
	
	.cafeReviewArea .cafeR_recomCnt {
		float: right;
		width: 30px;
		height: 30px;
		border-radius: 40px;
		margin: 10px;
		text-align: center;
		line-height: 30px;
		font-weight: 700;
	}
	
	.cafeReviewArea .cafeR_titleBox h2 {
		position: absolute;
	    top: 50%;
	    left: 50%;
	    transform: translate(-50%, -50%);
	    width: 85%;
	    text-align: center;
	}
	
	.cafeReviewArea .cafeR_date {
		position: absolute;
	    top: 85%;
	    left: 50%;
	    transform: translate(-50%, -50%);
	    width: 85%;
	    text-align: right;
	    font-size: 20px;
	}	
	
	.cafeReviewArea .cafeR_infoBox {
		padding: 10px;
		border-bottom: 1px solid #545454;
	}
	
	.cafeReviewArea .cafeR_infoTop {
		padding-bottom: 10px;
	}
	
	.cafeReviewArea .cafeR_infoTop h2{
		display: inline-block;
	}
	
	.cafeReviewArea .cafeR_text {
		overflow: hidden; 
		text-overflow: ellipsis;
		display: -webkit-box;
		-webkit-line-clamp: 4; /* 라인수 */
		-webkit-box-orient: vertical;
		word-wrap: break-word;
	}
	
	.cafeReviewArea .cafeR_replyCdtWrap {
		float: right;
		padding: 10px;
		padding-right: 0;
	}
	
	.cafeReviewArea .cafeR_replyCdt .cafeR_btns {
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
			
		<!-- 게시판 베스트 -->
		<div class="bestBoardBox">
			<div class="boardTitle bottomLine2">
				<p>베스트</p>
				<p>월간</p>
			</div>
			<table class="post1-5">
				<tr>
					<td class="no"><p class="bgRed">1</p></td>
					<td>
						<a href="#" class="title">test</a>
						<span class="review red">(20)</span>
					</td>
				</tr>
				<tr>
					<td class="no"><p class="bgRed">2</p></td>
					<td>
						<a href="#" class="title">test</a>
						<span class="review red">(20)</span>
					</td>
				</tr>
				<tr>
					<td class="no"><p class="bgRed">3</p></td>
					<td>
						<a href="#" class="title">test</a>
						<span class="review red">(20)</span>
					</td>
				</tr>
				<tr>
					<td class="no"><p class="bgPink">4</p></td>
					<td>
						<a href="#" class="title">testaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa</a>
						<span class="review red">(20)</span>
					</td>
				</tr>
				<tr>
					<td class="no"><p class="bgPink">5</p></td>
					<td>
						<a href="#" class="title">test</a>
						<span class="review red">(20)</span>
					</td>
				</tr>
			</table>
			<table class="post6-10">
				<tr>
					<td class="no"><p class="bgPink">6</p></td>
					<td>
						<a href="#" class="title">test</a>
						<span class="review red">(20)</span>
					</td>
				</tr>
				<tr>
					<td class="no"><p class="bgPink">7</p></td>
					<td>
						<a href="#" class="title">test</a>
						<span class="review red">(20)</span>
					</td>
				</tr>
				<tr>
					<td class="no"><p class="bgPink">8</p></td>
					<td>
						<a href="#" class="title">test</a>
						<span class="review red">(20)</span>
					</td>
				</tr>
				<tr>
					<td class="no"><p class="bgPink">9</p></td>
					<td>
						<a href="#" class="title">testaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa</a>
						<span class="review red">(20)</span>
					</td>
				</tr>
				<tr>
					<td class="no"><p class="bgPink">10</p></td>
					<td>
						<a href="#" class="title">test</a>
						<span class="review red">(20)</span>
					</td>
				</tr>
			</table>
		</div>
		<!-- 게시판 베스트 end -->
		
		<!-- 선택 검색 -->
		<div class="cafeReviewSearch bottomLine2 clearfix">
			<div class="selectLeft">
				<select name="" id="">
					<option value="all">전체</option>
				</select>
				<select name="" id="">
					<option value="all">전체</option>
				</select>
			</div>
			<div class="selectRight">
				<select name="" id="">
					<option value="">제목</option>
				</select>
				<input type="text" name="" placeholder="검색어를 입력하세요." />
				<input type="submit" value="검색" class="navyBtn"/>
			</div>
		</div>
		
		<!-- 탐방기 -->
		<div class="cafeReviewArea">
			<div class="cafeR_titleWrap clearfix">				
				<h3 class="cafeR_title">오늘의 탐방기 | <span class="red cafeRCnt">N개</span></h3>
				<div class="cafeR_topBtns">
					<div class="cafeR_topBtn cafeR_totalBtn grayLineBtn"><a href="#"><span class="red bold">베스트 글</span> 전체 보기</a></div>
					<div class="cafeR_topBtn cafeR_add navyBtn"><a href="#" class="cafeR_addBtn">탐방기 쓰기</a></div>
				</div>
			</div>
			<div class="cafeR_list clearfix mb30">
				<!-- 탐방기 글 박스 -->
				<div class="cafeR_box">
					<div class="cafeR_titleBox temp">
						<div class="cafeR_titleTop clearfix" >
							<div class="cafeR_writer clearfix">
								<img src="${pageContext.request.contextPath }/resources/images/Lv03_w2.png" alt="" />
								<span class="cafeR_name bold">민수는 커피</span>
								<span class="cafeR_id bold">(minsuong)</span>
							</div>
							<div class="cafeR_recomCnt bgRed">8</div>						
						</div>
						<h2 class="classSec">갓 구운 촉촉한 식빵과 꿀의 결합</h2>
						<div class="cafeR_date bold">2020/05/02</div>
					</div>
					<div class="cafeR_infoBox">
						<div class="cafeR_infoTop clearfix">
							<div class="zoneBtn zoneOrangeIconSmall">위치</div>
							<div class="dessert themeKeySmall">#디저트</div>
							<h2>러브패리사</h2>
						</div>
						<p class="cafeR_text">
							포스트 글내용이 적힙니다 포스트 글내용이 적힙니다 포스트 글내용이 적힙니다 포스트 글내용이 적힙니다 포스트
							글내용이 적힙니다 포스트 글내용이 적힙니다 포스트 글내용이 적힙니다 포스트 글내용이 적힙니다 포스트 글내용이 적힙니다
							포스트 글내용이 적힙니다 포스트 글내용이 적힙니다 포스트 글내용이 적힙니다 포스트 글내용이 적힙니다
						</p>
					</div>
					<div class="cafeR_replyCdt clearfix">
						<div class="cafeR_replyCdtWrap">
							<div class="cafeR_btns">
								<img src="${pageContext.request.contextPath }/resources/images/icon_reply.png" alt="icon" />
								<span class="cafeR_replyCnt">000</span>
							</div>
							<div class="cafeR_btns">
								<img src="${pageContext.request.contextPath }/resources/images/icon_view.png" alt="icon" />
								<span class="cafeR_viewCnt">000</span>
							</div>
						</div>
					</div>
				</div>
				<!-- 탐방기 글 end -->
			</div>
		</div>
	</div>
</div>
	
<script>
</script>
<%-- 지우면 안됨 subMenu.jsp에 container 시작 태그 있음 --%>
</div>
<!-- container end -->

<%@ include file="../userInclude/footer.jsp" %>