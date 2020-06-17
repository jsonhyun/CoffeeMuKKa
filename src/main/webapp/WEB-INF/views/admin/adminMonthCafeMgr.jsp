<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../adminInclude/header.jsp"%>

<style>
	/* 페이징 */
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
	
	/* best list */
	.bestBoardBox table td,
	.bestBoardBox table th {
		border: none;
	}
</style>
	<!--content area start-->
	<div id="content" class="pmd-content inner-page">
	<!--tab start-->
	    <div class="container-fluid full-width-container value-added-detail-page">
			<div>
				<div class="pull-right table-title-top-action">
					<div class="pmd-textfield pull-left">
					  <input type="text" id="exampleInputAmount" class="form-control" value="${cri.keyword }" placeholder="카페이름 검색" name="keyword" >
					</div>
					<a href="#" id="searchBtn" class="btn btn-primary pmd-btn-raised add-btn pmd-ripple-effect pull-left">Search</a>
				</div>
				<!-- Title -->
				<h1 class="section-title subPageTitle" id="services">
					<span>월간 카페 등록 및 관리</span>
				</h1><!-- End Title -->
				<!--breadcrum start-->
				<ol class="breadcrumb text-left">
				  <li><a href="${pageContext.request.contextPath }/admin/">Dashboard</a></li>
				  <li class="active">월간 카페 등록 및 관리</li>
				</ol><!--breadcrum end-->
			</div>
			<!-- Table -->
			<div class="table-responsive pmd-card pmd-z-depth">
				<table class="table table-mc-red pmd-table">
					<thead>
						<tr>
							<th>no</th>
							<th>카페명</th>
							<th>신청일</th>
							<th>게시일/게시예정일</th>
							<th>게시여부</th>
							<th>게시일등록</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="item" items="${list }">
							<tr>
								<td>${item.powNo }</td>
								<td>${item.cafeNo.cafeName}</td>
								<td><fmt:formatDate value="${item.regDate }" pattern="yyyy/MM/dd"/></td>
								<td>									
									<fmt:formatDate value="${item.postDate }" pattern="yyyy/MM/dd" var="postDate"/>
									<c:if test="${postDate != null }">${postDate }</c:if>
									<c:if test="${postDate == null }"><strong style="font-size: 14px; color: #ff5722">게시일 미등록</strong></c:if>
									<%-- <c:if test="${postDate == '0001/01/01' }"><strong style="font-size: 14px; color: #ff5722">게시일 미등록</strong></c:if> //로컬에서 작업할 때 --%>
								</td>
								<td>
									<c:if test="${item.powCdt == 'WAITING' }"><span style="color:#03a9f4;">게시 대기중</span></c:if>
									<c:if test="${item.powCdt == 'OPEN' }"><span style="color:#ff5722;">게시중</span></c:if>
									<c:if test="${item.powCdt == 'CLOSING' }"><span style="color:#e0a800;">게시완료</span></c:if>
									<c:if test="${item.powCdt == 'CANCEL' }"><span style="color:#e0a800;">취소</span></c:if>
								</td>
								<td>
									<c:if test="${postDate == null }">
									<%-- <c:if test="${postDate == '0001/01/01'}"> // 로컬에서 작업할 때--%>
										<button class="btn btn-success postDateAddBtn" data-powNo="${item.powNo }">게시일 등록</button>
									</c:if>
									<c:if test="${postDate != null && item.powCdt == 'WAITING'}">
										<fmt:formatDate value="${item.postDate }" pattern="yyyy" var="postYear"/>
										<fmt:formatDate value="${item.postDate }" pattern="MM" var="postMonth"/>										
										<button class="btn btn-warning postDateCancelBtn" data-powNo="${item.powNo}" data-postYear="${postYear }" data-postMonth="${postMonth }">게시 취소</button>
									</c:if>
								</td>
							</tr>
						</c:forEach>
				</tbody>
			</table>
			</div>
			<!-- 페이징 -->
			<div style="text-align: center;">
			  	<ul class="pagination list-inline taCenter">
				  	<c:if test="${pageMaker.prev == true }">
						<li><a href="monthCafeManager?page=${pageMaker.startPage-1}&keyword=${cri.keyword}">&laquo;</a></li>
					</c:if>
					<c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }" var="idx">
						<li class="${pageMaker.cri.page == idx?'active':'' }"><a href="monthCafeManager?page=${idx}&keyword=${cri.keyword}">${idx }</a></li>
					</c:forEach>
					<c:if test="${pageMaker.next == true }">
						<li><a href="monthCafeManager?page=${pageMaker.endPage+1}&keyword=${cri.keyword}">&raquo;</a></li>
					</c:if>
			  	</ul>
			</div>
			<!-- 페이징 end -->
		</div>
	</div>
	<!--tab start-->
	
	<!--content area end-->

<script>
	$("#searchBtn").click(function(){
		var keyword = $("input[name='keyword']").val();
		
		if(keyword == '') {
			alert("카페이름을 작성해주세요.");
			return false;
		}
		
		location.href = "monthCafeManager?keyword="+keyword;
		
		return false;
	})
	
	$('.postDateAddBtn').click(function(){
		var powNo = $(this).attr("data-powNo");
		location.href = "${pageContext.request.contextPath}/admin/cafeMgn/monthCafeManager/modify?powNo="+powNo+"&page=${cri.page}&keyword=${cri.keyword}";
	})
	
	$(".postDateCancelBtn").click(function(){
		var powNo = $(this).attr("data-powNo");
		var postYear = $(this).attr("data-postYear");
		var postMonth = $(this).attr("data-postMonth");
		
		location.href = "${pageContext.request.contextPath}/admin/cafeMgn/monthCafeManager/cancelModify?powNo="+powNo+"&year="+postYear+"&month="+postMonth+"&page=${cri.page}&keyword=${cri.keyword}";
	})
</script>
<%@ include file="../adminInclude/footer.jsp"%>