<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../adminInclude/header.jsp"%>
		
	<!--content area start-->
	<div id="content" class="pmd-content inner-page">
	<!--tab start-->
	    <div class="container-fluid full-width-container value-added-detail-page">
			<div>
				<div class="pull-right table-title-top-action">
					<div class="pmd-textfield pull-left">
					  <input type="text" id="exampleInputAmount" class="form-control" placeholder="Search for...">
					</div>
					<a href="javascript:void(0);" class="btn btn-primary pmd-btn-raised add-btn pmd-ripple-effect pull-left">Search</a>
				</div>
				<!-- Title -->
				<h1 class="section-title subPageTitle" id="services">
					<span>신규 등록 카페 승인</span>
				</h1><!-- End Title -->
				<!--breadcrum start-->
				<ol class="breadcrumb text-left">
				  <li><a href="${pageContext.request.contextPath }/admin/">Dashboard</a></li>
				  <li class="active">신규 등록 카페 승인</li>
				</ol><!--breadcrum end-->
			</div>
			<!-- Table -->
			<div class="table-responsive pmd-card pmd-z-depth">
				<table class="table table-mc-red pmd-table">
					<thead>
						<tr>
							<th>no</th>
							<th>카페명</th>
							<th>점주명</th>
							<th>등록일자</th>
							<th>승인여부</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td data-title="">1</td>
							<td data-title=""><a href="#">cafeName</a></td>
							<td data-title="">Name</td>
							<td data-title="">2020/05/05</td>
							<td data-title="">대기</td>
						</tr>
				</tbody>
			</table>
			</div>
			<!-- Card Footer -->
			<div class="pmd-card-footer">
			  <ul class="pmd-pagination list-inline taCenter">
				  <!-- 페이징 숫자 버튼 자리 -->
				  <li>페이징 숫자 자리</li>
			  </ul>
			</div>
		</div>
	</div>
	<!--tab start-->
	
	<!--content area end-->
	
<%@ include file="../adminInclude/footer.jsp"%>