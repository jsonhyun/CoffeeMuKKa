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
	
	.cafeSearchWrap .cafeSearch .inputWrap {
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
	
	.cafeSearchWrap .cafeResultWrap {
		max-height: 300px;
		overflow: auto;
		border-bottom: 1px solid #aaa;
		display: none;
	}
	
	.cafeSearchWrap .cafeSearchBox table {
		width: 100%;
		table-layout: fixed; 
	}
	
	.cafeSearchWrap .resCafe {
		cursor: pointer;
	}
	
	.cafeSearchWrap .resCafe:hover .resCafeName{
		text-decoration: underline;
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
							<div class="inputWrap">
								<label>카페이름</label>
								<input type="text" name="cafeName"/>
								<button id="cafeSchBtn" class="orangeBtn" type="button">검색</button>
							</div>			
							<div class="cafeResultWrap">
								<table class="cafeResult"></table>
							</div>
						</div>
					</div>
				</div>
				
			</div>
		</div>
	</div>
	
<script id="cafeRes" type="text/x-handlebars-tamplate">
	{{#each.}}
		<tr class="resCafe" data-cafeName="{{cafeName}}" data-cafeNo="{{cafeNo}}">
			<td>{{cafeNo}}</td>
			<td class="resCafeName">{{cafeName}}</td>
			<td>{{address}}</td>
		</tr>
	{{/each}}
</script>
<script>
	$(".cafeSearchBtn").click(function() {
		$(".cafeSearchWrap").show();
	})
	
	$(".cafeSearchWrap .closeBtn").click(function(){
		$(".cafeSearchWrap").hide();
	})
	
	$("#cafeSchBtn").click(function() {
		var cafeName = $("input[name='cafeName']").val();
		$.ajax({
			url:"${pageContext.request.contextPath}/rest/",
			type:"get",
			data: {"cafeName" : cafeName},
			datatype : "json",
			success:function(res){
				//console.log(res);
				$(".cafeResult").empty();
				$(".cafeResultWrap").hide();
				
				var $thNo = $("<th>").addClass("w10pc").text("카페 번호");
				var $thName = $("<th>").addClass("w25pc").text("카페 이름");
				var $thAddr = $("<th>").addClass("w60pc").text("카페 이름");
				var $tr = $("<tr>").append($thNo).append($thName).append($thAddr);
				
				$(".cafeResult").append($tr);
				
				if(res.length == 0) {
					var $tdNone = $("<td>").attr("colspan", "3").text("등록된 카페가 없습니다.");
					var $tr = $("<tr>").append($tdNone);
					$(".cafeResult").append($tr);
				} else {					
					var source = $("#cafeRes").html();
					var func = Handlebars.compile(source);
					$(".cafeResult").append(func(res));
				}
				
				$(".cafeResultWrap").show();
			}
		})
	})
	
	$(document).on("click", ".resCafe", function(){
		var name = $(this).attr("data-cafeName");
		var no = $(this).attr("data-cafeNo");
		
		$(".cafeName").val(name);
		$(".cafeNo").val(no);
		$(".cafeSearchWrap").hide();
	})
</script>
<%-- 지우면 안됨 subMenu.jsp에 container 시작 태그 있음 --%>
</div>
<!-- container end -->

<%@ include file="../userInclude/footer.jsp" %>