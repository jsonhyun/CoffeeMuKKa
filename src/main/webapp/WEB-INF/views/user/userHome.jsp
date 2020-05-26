<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../userInclude/header.jsp" %>
<style>
	/* 파워링크 */
	.powerLinkArea {
		margin-top: 30px;
		margin-bottom: 30px;
	}

	.powerLinkArea h2 {
		text-align: center;
	}
	
	.powerLinkWrap ul {
		overflow: hidden;
		width: 1160px;
		margin: 0 auto;
	}
	
	.powerLinkWrap ul li {
		/* 임시 표시 */
		background-color: #ddd;
		
		float: left;
		width: 200px;
		height: 250px;
		margin: 15px;
	}
	
	/* 카페 리스트 */
	.cafeListArea {
		overflow: hidden;
		margin-bottom: 30px;
	}
	
	.newCafeImgs {
		/* 임시 설정 */
		background-color: #ddd;
		
		width: 100%;
		height: 200px;
	}
	
	.newCafeTitleWrap {
		margin: 10px;
		overflow: hidden;
	}
	
	.newCafeTitleWrap .cafeName {
		float: left;
		font-size: 20px;
		font-weight: 700;
		margin-left: 15px;
		line-height: 34px;
	}
	
	.newCafeSmallImgs ul{
		overflow: hidden;
	}
	
	.newCafeSmallImgs ul li {
		/* 임시 설정 */
		background-color: #ddd;
		
		float: left;
		width: 31.5%;
		height: 100px;
		margin: 5px;
		margin-top: 0;
	}
	
	.likeCafeTitle span {
		font-size: 16px;
		font-weight: 400;
	}
	
	.likeCafeList1 {
		overflow: hidden;
		margin-bottom: 15px;
	}
	
	.cafeList1 {
		/* 임시설정 */
		background-color: #ddd;	
		
		float: left;
		width: 50%;
		height: 234px;
	}
	
	.cafeList2-5 {
		float: right;
		width: 48%;
	}
	
	.cafeList2-5 ul {
		overflow: hidden;
	}
	
	.cafeList2-5 ul li {
		/* 임시 설정 */
		background-color: #ddd;
		
		float: left;
		width: 46%;
		height: 112px;
		margin: 5px;
		margin-top: 0;
	}
	
	.cafeList2-5 ul li:nth-of-type(n+3) {
		margin-top: 5px;
	}
	
	.likeCafeList2 ul{
		overflow: hidden;
	}
	
	.likeCafeList2 ul li {
		/* 임시 설정 */
		background-color: #ddd;
	
		float: left;
		width: 18%;
		height: 100px;
		margin: 5px;
		margin-top: 0;
	}
	
	/* 베스트 카페탐방기 */
	.baseCafeReview {
		margin-bottom: 30px;	
	}
	
	.baseCafeReview .baseList1-3 {
		text-align: center;
		padding: 15px;
	}
	
	.baseCafeReview .baseList1-3 ul {
		overflow: hidden;
		width: 80%;
		margin: 0 auto;
	}
	
	.baseCafeReview .baseList1-3 ul li {
		/* 임시설정 */
		background-color: #ddd;
		
		float: left;
		width: 31%;
		height: 170px;
		margin: 10px;
		margin-top: 30px;
	}
	
	.baseCafeReview .baseList1-3 ul li.best1 {
		height: 200px;
		margin-top: 0;
	}
	
	.baseCafeReview .bestLists ul{
		overflow: hidden;
	}
	
	.baseCafeReview .bestLists ul li {
		/* 임시설정 */
		background-color: #ddd;
		
		float: left;
		width: 18.3%;
		height: 150px;
		margin: 10px;
	}
	
	/* 카페추천 / 추천 랭킹 */
	.cafeRecommend {
		overflow: hidden;
		margin-bottom: 30px;
	}
	
	.cafeRecommend .newListImgs ul{
		overflow: hidden;
	}
	.cafeRecommend .RC_listImgWrap{
		width: 180px;
		height: 150px;
		overflow: hidden;
	}
	.cafeRecommend .newListImgs ul li {
		/* 임시설정 */
		/* background-color: #ddd; */
		
		float: left;
		width: 31.5%;
		height: 150px;
		margin: 5px;
	}
	
	.cafeRecommend .newListImgs ul li:nth-of-type(n+4) {
		margin-top: 5px;
	}
	.cafeRecommend .newListImgs ul li img{
		width: 180px;
		height: 150px;
		transition:all 1s;
		transform-origin:left-top;
	}
	
	.cafeRecommend .newListImgs ul li img:hover{
		transform:scale(1.2);
	}	
	
	.cafeRecommend .bestRankList .bestIcons {
		overflow: hidden;
	}
	
	.cafeRecommend .bestRankList .bestIcons .bestIcon {
		background-color: #ED7D31;
		padding: 5px 10px;
		float: left;
		margin-right: 10px;
		border-radius: 5px;
	}
	
	.cafeRecommend .bestRankList .bestIcons .bestIcon a {
		font-size: 18px;
		color: #fff;
	}
	
	.cafeRecommend .bestRankList .bestList {
		margin-top: 15px;
		line-height: 30px;
	}
	
	.cafeRecommend .bestRankList .bestList span {
		display: inline-block;
	}
	
</style>

	<div class="content container">
		
		<!-- 파워링크 -->
		<div class="powerLinkArea">
			<h2>오늘 여기서 커피한잔 어때?</h2>
			<div class="powerLinkWrap">
				<ul>
					<li><a href="#"></a></li>
					<li><a href="#"></a></li>
					<li><a href="#"></a></li>
					<li><a href="#"></a></li>
					<li><a href="#"></a></li>
				</ul>
			</div>
		</div>
		
		<!-- 카페 리스트 -->
		<div class="cafeListArea">
			<div class="newCafeList left">
				<h2 class="newCafeTitle bottomLine">N월 반짝반짝 신상카페</h2>
				<div class="newCafeImgs">
					<!-- 카페 이미지 들어갈 자리 -->
				</div>
				<div class="newCafeTitleWrap">
					<div class="zoneIcon zoneOrangeIcon">지역</div>
					<p class="cafeName">카페이름</p>
				</div>
				<div class="newCafeSmallImgs">
					<ul>
						<li></li>
						<li></li>
						<li></li>
					</ul>
				</div>
			</div>
			
			<div class="mukkaLikeCafeList right">
				<h2 class="likeCafeTitle bottomLine">MuKKa人이 애정하는 그카페 <span>(2020.00.00 ~ 00.00)</span></h2>
				<div class="likeCafeList1">
					<div class="cafeList1"></div>
					<div class="cafeList2-5">
						<ul>
							<li></li>
							<li></li>
							<li></li>
							<li></li>
						</ul>
					</div>
				</div>
				<div class="likeCafeList2">
					<ul>
						<li></li>
						<li></li>
						<li></li>
						<li></li>
						<li></li>
					</ul>
				</div>
			</div>
		</div>
		
		<!-- 베스트 카페탐방기 -->
		<div class="baseCafeReview">
			<h2 class="Title bottomLine">MuKKa人이 전하는 생생 카페탐방기(BEST)</h2>
			<div class="baseList1-3 bottomLine">
				<ul>
					<li></li>
					<li class="best1"></li>
					<li></li>
				</ul>
				<p>월간 BEST TOP3</p>
			</div>
			<div class="bestLists">
				<ul>
					<li></li>
					<li></li>
					<li></li>
					<li></li>
					<li></li>
					<li></li>
					<li></li>
					<li></li>
					<li></li>
					<li></li>
				</ul>
			</div>
		</div>
		
		<!-- 카페추천 / 추천 랭킹 -->
		<div class="cafeRecommend">
			<div class="newList left">
				<h2 class="Title bottomLine">실시간 카페 추천</h2>
				<div class="newListImgs">
					<ul>
						<c:forEach var="board" items="${rclist}">
							<a href="${pageContext.request.contextPath}/user/community/cafeRecommend/read?boardNo=${board.boardNo}">
								<li>
									<div class="RC_listImgWrap">
										<div class="RC_listImgContainer">
											<!-- 이미지 이름 꺼내서 삽입하기 -->
											<c:forEach var="img" items="${rclistImg}">
												<c:if test="${img.boardNo.boardNo == board.boardNo }">
													<img
														src="${pageContext.request.contextPath }/user/displayFile?filename=${img.imageName}"
														class="thumbNailImg" alt="카페대표이미지"
														onerror="this.src='${pageContext.request.contextPath}/resources/images/rc_noImg.png'">
												</c:if>
											</c:forEach>
										</div>
									</div>
								</li>
							</a>
						</c:forEach>
					</ul>
				</div>
			</div>

		<div class="bestRankList right">
				<h2 class="Title bottomLine">열혈 MuKKa人 <span>(2020.00.00 ~ 00.00)</span></h2>
				<div class="bestIcons">
					<div class="bestIcon"><a href="#">1-10</a></div>
					<div class="bestIcon"><a href="#">11-20</a></div>
					<div class="bestIcon"><a href="#">21-30</a></div>
				</div>
				<div class="bestList">
					<p>
						<span class="no w50">1.</span>
						<span class="icon w100">icon?</span>
						<span class="cafeName w150">이름</span>
						<span class="reviewCnt w100">리뷰 000</span>
					</p>
					<p>
						<span class="no w50">2.</span>
						<span class="icon w100">icon?</span>
						<span class="cafeName w150">이름</span>
						<span class="reviewCnt w100">리뷰 000</span>
					</p>
				</div>
			</div>
		</div>
		
	</div>
	
	<!-- infoBaner main에만 -->
	<div class="banerArea"></div>
<script>
//원본파일 불러오기(선명한 파일)
$(".thumbNailImg").each(function(i, obj) {
	var file = $(this).attr("src");
	var start = file.substring(0,51);
	var end = file.substring(53);
	var fileName = start + end;
	$(this).attr("src", fileName);
	console.log(fileName);
})
</script>	
<%@ include file="../userInclude/footer.jsp" %>