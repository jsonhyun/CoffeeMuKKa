<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../adminInclude/header.jsp"%>
		
	<!--content area start-->
	<div id="content" class="pmd-content content-area dashboard">
	
		<div class="container-fluid">
			<div class="row" id="card-masonry">
			 
			 <!-- 신규 현황 start -->
			 <div class="col-lg-4 col-sm-4 col-xs-12">
			 	<div class="pmd-card pmd-z-depth">
			 		<div class="pmd-card-title">신규카페승인대기</div>
			 		<div class="pmd-card-body pmd-display3 tCenter">N건</div>
			 	</div>
			 </div>		
			 <div class="col-lg-4 col-sm-4 col-xs-12">
			 	<div class="pmd-card pmd-z-depth">
			 		<div class="pmd-card-title">신규 탐방기</div>
			 		<div class="pmd-card-body pmd-display3 tCenter">N건</div>
			 	</div>
			 </div>		
			 <div class="col-lg-4 col-sm-4 col-xs-12">
			 	<div class="pmd-card pmd-z-depth">
			 		<div class="pmd-card-title">신규 Mukka人 추천</div>
			 		<div class="pmd-card-body pmd-display3 tCenter">N건</div>
			 	</div>
			 </div>	
			 <!-- 신규 현황 end -->	
			 
			 <!-- 그래프 start -->
			 <div class="col-xs-12 col-sm-12 col-md-6">
			 	<div class="pmd-card pmd-z-depth">			 	
				 	<div class="pmd-card-title">방문자 그래프</div>
				 	<div class="pmd-card-body"></div>
			 	</div>
			 </div>
			 <div class="col-xs-12 col-sm-12 col-md-6">
			 	<div class="pmd-card pmd-z-depth">
				 	<div class="pmd-card-title">탐방기, 추천글 갯수 그래프</div>
				 	<div class="pmd-card-body"></div>
			 	</div>
			 </div>
			 <!-- 그래프 end  -->
			 
			 <!-- Q&A 답변대기 start -->
			 <div class="col-xs-12 col-sm-12 col-md-12">
			 	<div class="component-box">
				 	<div class="pmd-card pmd-z-depth pmd-card-custom-view">
				 		<div class="pmd-card-title">Q&A 답변대기</div>
				 		<div class="table-responsive tableWrap">
				 			<table class="table pmd-table table-striped table-mc-red">
				 				<tr>
				 					<th>no</th>
				 					<th>제목</th>
				 					<th>작성자</th>
				 					<th>등록인</th>
				 					<th>답변</th>
				 				</tr>
				 				<tr>
				 					<td>1</td>
				 					<td>test</td>
				 					<td>user</td>
				 					<td>2020/05/02</td>
				 					<td><button type="button" class="btn pmd-ripple-effect btn-primary">답변달기</button></td>
				 				</tr>
				 				<tr>
				 					<td>2</td>
				 					<td>test</td>
				 					<td>user</td>
				 					<td>2020/05/02</td>
				 					<td><button type="button" class="btn pmd-ripple-effect btn-primary">답변달기</button></td>
				 				</tr>
				 			</table>
				 		</div>	
				 	</div>
			 	</div>
			 </div>
			 <!-- Q&A 답변대기 end -->
		</div>
	</div>
	
	</div><!--end content area-->
	
<%@ include file="../adminInclude/footer.jsp"%>