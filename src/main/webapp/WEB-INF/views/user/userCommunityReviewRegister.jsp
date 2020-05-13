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
	
	.cafeRForm {
		position: relative;
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
	} 
	
	.cafeRForm input[name="writingTitle"] {
		width: 80%;
	}
	
	.cafeSearchWrap {
		position: absolute;
		top: 0;
		left: 0;
		background-color: rgba(0,0,0,.5);
		width: 100%;
		height: 100%;
		display: none;
	}
	
	.cafeSearchWrap .cafeSearchBox {
		width: 800px;
		margin: 0 auto;
		background-color: #fff;
		padding: 10px;
		margin-top: 100px;
		position: relative;
	}
	
	.cafeSearchWrap .closeBtn{
		position: absolute;
		top: 10px;
		right: 20px;
		font-size: 18px;
		color: #ED7D31;
		cursor: pointer;
	}
	
	.cafeSearchWrap .cafeSearch{
		text-align: center;
	}
	
	.cafeSearchWrap .cafeSearch form {
		padding: 10px;
	}
	
	.cafeSearchWrap .cafeSearch label {
		display: inline-block;
		width: 100px;
		text-align: center;
		font-weight: 500;
	}
	
	.cafeSearchWrap .cafeSearch input[type="text"] {
		margin-right: 5px;
	}
	
	.cafeSearchWrap .cafeSearchBox table {
		width: 100%;
		table-layout: fixed; 
		display: none;
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
						<button type="button" class="cafeSearchBtn orangeBtn">카페찾기</button>
						<input class="cafeName" type="text" placeholder=" ☜ 카페를 찾아주세요." readonly="readonly"/>
						<input class="cafeNo" type="hidden" name="cafeNo"/>
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
				<div class="cafeSearchWrap">
					<div class="cafeSearchBox">
						<div class="closeBtn"><i class="fas fa-times"></i></div>
						<div class="cafeSearch">	
							<h3>카페 검색</h3>					
							<form action="">
								<label>카페이름</label>
								<input type="text" name="cafeName"/>
								<input class="orangeBtn" type="submit" value="검색"/>
							</form>
							<table class="cafeResult">
								<tr>
									<th class="w20pc">카페 번호</th>
									<th class="w20pc">카페 이름</th>
									<th class="w60pc">카페 주소</th>
								</tr>
								<tr>
									<td>aa</td>
									<td>aa</td>
									<td class="classOne">aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa</td>
								</tr>
								<tr>
									<td>aa</td>
									<td>aa</td>
									<td class="classOne">aaaaaaaaaaaaaaaaaaaaaaaaaaa</td>
								</tr>
							</table>
						</div>
					</div>
				</div>
				
			</div>
		</div>
	</div>
	
<script>
	$(".cafeSearchBtn").click(function() {
		$(".cafeSearchWrap").show();
	})
	
	$(".cafeSearchWrap .closeBtn").click(function(){
		$(".cafeSearchWrap").hide();
	})
</script>
<%-- 지우면 안됨 subMenu.jsp에 container 시작 태그 있음 --%>
</div>
<!-- container end -->

<%@ include file="../userInclude/footer.jsp" %>