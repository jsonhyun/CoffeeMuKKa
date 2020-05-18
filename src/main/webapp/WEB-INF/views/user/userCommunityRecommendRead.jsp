<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../userInclude/header.jsp" %>
<%@ include file="../userInclude/subMenu.jsp" %>

<style>
	/* 상세보기 - 타이틀 */
	div#RC_readTitle{
		width: 100%;
		height: 103px;
		background-color: #f7f7f7;
		color: #545454;
		border-top: 2px solid #545454;		
		border-bottom: 2px solid #545454;
		margin-bottom: 20px;		
	}
	/* 타이틀1 */
	div#RC_readTitle div#RC_readTitle1{
		width: 99%;
		height: 23px;
		padding: 5px;
	}
	div#RC_readTitle div#RC_readTitle1 div.zoneOrangeIconSmall,div.themeKeySmall{
		margin-left: 10px;
		font-size: 14px;
	}	
	div#RC_readTitle div#RC_readTitle1 div#RC_update{
		float: right;
		margin-right: 10px;
	}
	/* 타이틀2 */
	div#RC_readTitle div#RC_readTitle2{
		width: 99%;
		height: 30px;
		padding: 5px;
	}
	div#RC_readTitle div#RC_readTitle2 span#RC_writingTitle{
		width: 50%;
		margin-left: 10px;
		font-weight: bold;
		font-size: 21px;		
	}
	div#RC_readTitle2 div#RC_userInfo{
		width: 33%;
		float: right;
		text-align: right;
		background-color: red;
		margin-right: 10px;
		line-height: 30px;
		position: relative;
	}		
	div#RC_readTitle2 div#RC_userInfo img#gradeImg{
		width: 25px;
		height: 25px;
		margin-top: 3px;
		position: absolute;
		left: 0;		
	}
	span#RC_userNick{
		width: 55%;
		background: yellow;
		line-height: 10px;
		position: absolute;
		right:0;
		top:9px;	
	}	
	/* 타이틀3 */
	div#RC_readTitle div#RC_readTitle3{
		width: 99%;
		height: 30px;
		padding: 5px;
	}
	div#RC_readTitle div#RC_readTitle3 img#rc_point{
		margin-left: 10px;
		width: 20px;
		height: 20px;
	}	
	div#RC_readTitle div#RC_readTitle3 span.blue{
	}	
	div#RC_readTitle div#RC_readTitle3 span#RC_viewCnt{
		float: right;
		margin-right: 10px;		
	}
	/* 글내용 */
	div#RC_content{
		width: 100%;
		height: 600px;
		border: 1px solid red;
	}
	div#RC_content div.temp{
		width: 100%;
		height: 250px;
		margin-top: 10px;
	}
	div#RC_content div#RC_btns{
		width: 100%;
		background-color: #f7f7f7;
		color: #545454;
		border-top: 2px solid #545454;		
		border-bottom: 2px solid #545454;
	}					

	
</style>
	
<div class="content subPageContent">
	<!-- 서브페이지 콘텐츠 -->
	<div class="contentArea">
		<!-- 서브페이지 공통적인 타이틀 -->
		<h2 class="subPageTitle">
			<span class="title">MuKKa人 추천 카페</span>
			<span class="subTit grayB"> | 세 상 에! 이런 카페가 있는지 몰랐지?</span>
		</h2>
		<div id="RC_readTitle">
			<!-- 지역 + 키워드  + 수정날짜 -->
			<div id="RC_readTitle1">
				<div class="zoneBtn zoneOrangeIconSmall">${board.zoneNo.zoneName}</div>	
				<c:choose>
					<c:when test="${board.themeNo.themeNo == 1}">
						<div class="date themeKeySmall">#${board.themeNo.themeName}</div>
					</c:when>
					<c:when test="${board.themeNo.themeNo == 2}">
						<div class="view themeKeySmall">#${board.themeNo.themeName}</div>
					</c:when>
					<c:when test="${board.themeNo.themeNo == 3}">
						<div class="ame themeKeySmall">#${board.themeNo.themeName}</div>
					</c:when>
					<c:when test="${board.themeNo.themeNo == 4}">
						<div class="dessert themeKeySmall">#${board.themeNo.themeName}</div>
					</c:when>
					<c:when test="${board.themeNo.themeNo == 5}">
						<div class="dog themeKeySmall">#${board.themeNo.themeName}</div>
					</c:when>																																								
					<c:otherwise>
						<div class="work themeKeySmall">#${board.themeNo.themeName}</div>		
					</c:otherwise>
				</c:choose>
				<div id="RC_update"><fmt:formatDate value="${board.updateDate}" pattern="yyyy/MM/dd"/></div>						
			</div>
			<div id="RC_readTitle2">
				<span id="RC_writingTitle">${board.writingTitle}</span>
				<div id="RC_userInfo">
					<img id="gradeImg"  src = "${pageContext.request.contextPath }/resources/images/${board.userNo.userGrade.userGradeImage}">
					<span id="RC_userNick">${board.userNo.nick}(${board.userNo.userId})</span>
				</div>
			</div>
			<div id="RC_readTitle3">
				<img id= "rc_point" src ="${pageContext.request.contextPath }/resources/images/rc_point.png">
				<span class="blue">${board.address}</span>
				<span id="RC_viewCnt">조회수 ${board.viewNumber}</span>
			</div>		
		</div>
		<!-- 게시글내용 : 사진, 글 -->
		<div id="RC_content">
			<!-- <div class="temp">이미지사진</div>
			<div class="temp">이미지사진</div> -->
			<c:forEach var="file" items="${board.files}">
				<img src = "${pageContext.request.contextPath }/user/displayFile?filename=${file.imageName}">
			</c:forEach>
			<p id="RC_contentText">${board.writingContent}</p>
			<div id="RC_btns">
				좋아요
				댓글
				<button>수정</button>
				<button>삭제</button>
				<button>목록</button>
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