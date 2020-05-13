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
	.RC_Rg_groub{
		width: 98%;
		padding: 10px;
	}
	select.cate{
		width: 10%;
		height: 30px;
		margin-right: 12px;
	}
	label{
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
		<form action="register" method="post" enctype="multipart/form-data">
			<div class="RC_Rg_groub">	
				<label>카 테 고 리</label>
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
				<label>카페 위치</label>
				<button class="searchPoint orangeBtn">위치찾기</button>
				<input type="text" name="point" id="point" readonly>
			</div>					
			<div class="RC_Rg_groub">		
				<label>카페 상호명</label>
				<input type="text" name="title" id="title" placeholder=" >> 위치 검색후 없을시 직접입력">
			</div>		
			<div class="RC_Rg_groub">	
				<textarea rows="15" cols="100" name="text" id="text"></textarea>
			</div>
			<div class="RC_Rg_groub">	
				<label>이미지 첨부</label>
				<input type="file" name="imgfiles" multiple="multiple" id="file" style="cursor: pointer">
				<!-- 미리보기박스 -->
				<div id="imagesBox"></div>
			</div>
			<div class="RC_Rg_groub">	
				<div id="RC_Rg_btns">
					<button id="RC_list" style="cursor: pointer">목록</button>
					<button id="RC_rgister" type="submit">등록</button>
					<button id="RC_cancel" style="cursor: pointer">취소</button>
				</div>
			</div>
		</form>
		
	</div>
</div>
	
<script>
	$("#RC_list").click(function() {
		location.href="${pageContext.request.contextPath}/user/community/cafeRecommend";
	})
</script>
<%-- 지우면 안됨 subMenu.jsp에 container 시작 태그 있음 --%>
</div>
<!-- container end -->

<%@ include file="../userInclude/footer.jsp" %>