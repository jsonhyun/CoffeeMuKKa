<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../userInclude/header.jsp" %>
<%@ include file="../userInclude/subMenu.jsp" %>

<!-- CKEditor -->
<script src="//cdn.ckeditor.com/4.14.0/standard/ckeditor.js"></script>

<style>
	.cafeRTitle {
		padding-bottom: 30px;
		border-bottom: 2px solid #545454;
		margin-bottom: 20px;
	}
	
	.cafeRForm .cafeR_groub {
		padding: 10px;
	}
	
	.cafeRForm input[type="text"] {
		padding: 3px 5px;
	}
	
	.cafeRForm .cafeR_groub label {
		float: left;
		width: 15%;
		font-weight: 700;
	}
	
	.cafeRForm .cafeSearchBtn {
		margin-right: 10px;
		padding: 5px 10px;
	} 
	
	.cafeRForm input[name="writingTitle"] {
		width: 80%;
	}
</style>
		
	<div class="content subPageContent">
		<!-- 서브페이지 콘텐츠 -->
		<div class="contentArea">
			<!-- 서브페이지 공통적인 타이틀 -->
			<h2 class="subPageTitle cafeRTitle">
				<span class="title">생생 카페 탐방기 > </span>
				<span class="red">글쓰기</span>
			</h2>
			<div class="cafeRForm">
				<form action="">
					<div class="cafeR_search cafeR_groub">
						<label>카페</label>
						<button class="cafeSearchBtn orangeBtn">카페찾기</button>
						<input type="text" placeholder=" ☜ 카페를 찾아주세요." readonly="readonly"/>
						<input type="hidden" name="cafeNo"/>
					</div>
					<div class="cafeR_TitleForm cafeR_groub">
						<label>제목</label>
						<input type="text" name="writingTitle" placeholder="탐방기 제목을 작성해주세요."/>
					</div>
					<div class="cafeR_textForm cafeR_groub">
						<textarea name="" id="p_content" class="form-control"></textarea>
						<script type="text/javascript">
							CKEDITOR.replace("p_content", 
											{height: 500});
						</script>
					</div>
				</form>
			</div>
			
		</div>
	</div>
	
<script>
</script>
<%-- 지우면 안됨 subMenu.jsp에 container 시작 태그 있음 --%>
</div>
<!-- container end -->

<%@ include file="../userInclude/footer.jsp" %>