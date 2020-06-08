<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../userInclude/header.jsp" %>

<style>
	#content{
	    width: 1200px;
	    margin-left: 351px;
	    margin-bottom: 100px;
	    margin-top: 10px;
	    height: 1200px;
	    text-align: center;
	}
	#myMenu li{
		float: left;
	    width: 115px;
	    height: 40px;
	    text-align: center;
	    line-height: 40px;
	    border: 1px solid #ccc;
	    margin: 10px 0 10px 10px;
	}
	#myMenu li:first-child {
		color: white;
		background-color: #303A50;
		cursor: pointer;
	}
	#myMenu li:hover {
		color: white;
		background-color: #303A50;
		cursor: pointer;
	}
	.subTitleName{
	    width: 100px;
	    text-align: center;
	    height: 40px;
	    line-height: 40px;
	    margin: 20px 10px;
	    font-size: 18px;
	    font-weight: bold;
	}
	.tblGrade{
		width: 100%;
	    text-align: center;
	    border-top: 2px solid #545454;
	}
	.tblGrade td{
		border-left:1px;
		border-right:1px;
		border-bottom: 1px solid #ccc;
		height: 40px;
	}
	.firstTd{
		width: 250px;
	    background: #f2f2f2;
	    text-align: left;
	    padding-left: 70px;
	}
	.secondTd{
	    text-align: left;
	    padding-left: 70px;
	}
	#btnPassChg{
		width: 110px;
		height: 35px;
		background: white;
		border: 1px solid #ccc;
		cursor: pointer;
	}
	#btnPassChg:hover{
		color: white;
		background-color: #303A50;
		cursor: pointer;
	}
	#btnAddrSearch{
		width: 100px;
		height: 34px;
		background: white;
		border: 1px solid #ccc;
		cursor: pointer;
		margin-left: 10px;
	}
	#btnAddrSearch:hover{
		color: white;
		background-color: #303A50;
		cursor: pointer;
	}
	.widthTel{
		width: 100px;
	}
	.addr{
		width: 300px;
		height: 30px;
		margin: 5px 0px;
	}
	#tblInfo{
		width: 100%;
	    text-align: center;
	    border-top: 2px solid #545454;
	}
	#tblInfo td{
		border-left:1px;
		border-right:1px;
		border-bottom: 1px solid #ccc;
		height: 50px;
	}
	.btns{
		width: 150px;
    	height: 50px;
    	font-size: 16px;
	    background: white;
	    border: 1px solid #ccc;
	    cursor: pointer;
	}
	.btns:hover {
		color: white;
		background-color: #303A50;
		cursor: pointer;
	}
	.borderColor{
		border: 1px solid #ccc;
		padding-left: 10px;
	}
</style>

<script>
	$(".activeTitle").text(" > " + "마이페이지");
	function openDaumZipAddress() {
		new daum.Postcode({
			oncomplete:function(data) {
				jQuery("#addressMypage").val(data.address);
				jQuery("#detailAddressMypage").focus();
				console.log(data.address);
			}
		}).open();
	}
	
	$(function () {
		/* 성별 선택 */
		$("input:radio[name='gender']:radio[value='${dbVO.gender}']").prop('checked', true); // 선택하기
		
		/* 전화번호 입력 */
		var tel = '${dbVO.tel}';
		var telArray = tel.split('-');
		$("#firstNum").val(telArray[0]).prop("selected",true);
		$("#secondNum").val(telArray[1]);
		$("#thirdNum").val(telArray[2]);
		console.log(telArray[0]+','+telArray[1]+','+telArray[2]);
		
		/* 회원타입 선택 */
		$("input:radio[name='userType']:radio[value='${dbVO.userType.userTypeName}']").prop('checked', true); // 선택하기
		
		/* $("#modifyUsers").submit(function (e) {
			var first = $("#firstNum").val();
			var second = $("#secondNum").val();
			var third = $("#thirdNum").val();
			var tel = first+"-"+second+"-"+third
			var name = $("input[name='myName']").val();
			var nick = $("input[name='nick']").val();
			var gender = $("input[name='gender']").val();
			var address = $("input[name='myAddress']").val();
			var detailAddress = $("input[name='myDetailAddress']").val();
			var email = $("input[name='myEmail']").val();
			var userType = $("input[name='userType']").val();
			console.log(name);
			console.log(nick);
			console.log(gender);
			console.log(address);
			console.log(detailAddress);
			console.log(email);
			console.log(userType);
			console.log(tel);
			
		}) */
	})
</script>

<div>
	<div id="content">
		<ul id="myMenu">
			<li>회원정보관리</li>
			<c:if test="${dbVO.userType.userType == 1 }">
				<li>내카페 관리</li>
			</c:if>
			<li>즐겨찾는 카페</li>
			<li>나의 추천 카페</li>
			<li>나의 카페 탐방기</li>
		</ul>
		<div style="clear: both;"></div>
		<div class="subTitleName">내 등급 정보</div>
		<table class="tblGrade">
			<tr>
				<td>내 등급</td>
				<td>
					<img src="${pageContext.request.contextPath }/resources/images/${dbVO.userGrade.userGradeImage }" style="width: 30px;vertical-align: middle;margin-right: 5px;">
					${dbVO.userGrade.userGradeName }
				</td>
				<td>포인트 현황</td>
				<td>${dbVO.point } POINT</td>
			</tr>
			<tr>
				<td>내 게시글 수</td>
				<td>10 개</td>
				<td>최초 가입일자</td>
				<td><fmt:formatDate value="${dbVO.userJoinDate }" pattern="yyyy-MM-dd"/> </td>
			</tr>
		</table>
		
		<div class="subTitleName">승급 조건</div>
		<table class="tblGrade">
			<tr>
				<td>다음 등급</td>
				<td>커피묘목</td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>필요포인트</td>
				<td>10000 POINT(8000 POINT)</td>
				<td>또는</td>
				<td>필요 게시물 수</td>
				<td>50 개(10 개)</td>
			</tr>
		</table>
		
		<div class="subTitleName">필수 사항</div>
		<form action="mypage" method="post">
			<table id="tblInfo">
				<tr>
					<td class="firstTd">아이디</td>
					<td class="secondTd">${dbVO.userId }</td>
				</tr>
				<tr>
					<td class="firstTd">비밀번호</td>
					<td class="secondTd">
						<input type="button" id="btnPassChg" value="비밀번호 변경">
					</td>
				</tr>
				<tr>
					<td class="firstTd">이름</td>
					<td class="secondTd">
						<input type="text" name="myName" value="${dbVO.name }" style="height: 35px;width: 200px;border: 1px solid #ccc;padding-left: 10px;">
					</td>
				</tr>
				<tr>
					<td class="firstTd">닉네임</td>
					<td class="secondTd">
						<input type="text" name="nick" value="${dbVO.nick }" style="height: 35px;width: 200px;border: 1px solid #ccc;padding-left: 10px;">
					</td>
				</tr>
				<tr>
					<td class="firstTd">성별</td>
					<td class="secondTd">
						<input type="radio" name="gender" value="MALE"> 남
						<input type="radio" name="gender" value="FEMALE" style="margin-left: 20px;"> 여
					</td>
				</tr>
				<tr>
					<td class="firstTd">생년월일</td>
					<td class="secondTd">
						<input type="date" name="birthday" value='<fmt:formatDate value="${dbVO.birthday }" pattern="yyyy-MM-dd"/>' style="height: 35px;width: 200px;border: 1px solid #ccc;padding-left: 10px;">
					</td>
				</tr>
				<tr>
					<td class="firstTd">전화번호</td>
					<td class="secondTd">
						<select class="widthTel borderColor" id="firstNum" style="height: 30px;">
							<option value="010">010</option>
							<option value="011">011</option>
							<option value="016">016</option>
							<option value="018">018</option>
							<option value="02">02</option>
							<option value="031">031</option>
							<option value="032">032</option>
							<option value="033">033</option>
							<option value="041">041</option>
							<option value="042">042</option>
							<option value="043">043</option>
							<option value="051">051</option>
							<option value="052">052</option>
							<option value="053">053</option>
							<option value="054">054</option>
							<option value="055">055</option>
							<option value="061">061</option>
							<option value="062">062</option>
							<option value="063">063</option>
							<option value="064">064</option>
						</select>
						<span> - </span>
						<input type="text" class="widthTel borderColor" id="secondNum" style="height: 26px;">
						<span> - </span>
						<input type="text" class="widthTel borderColor" id="thirdNum" style="height: 26px;">
					</td>
				</tr>
				<tr>
					<td class="firstTd">주소</td>
					<td class="secondTd">
						<input type="text" class="addr borderColor" name="myAddress" id="addressMypage" value="${dbVO.address }">
						<input type="button" id="btnAddrSearch" onclick="openDaumZipAddress();" value="주소검색"><br>
						<input type="text" class="addr borderColor" name="myDetailAddress" id="detailAddressMypage" value="${dbVO.detailAddress }" placeholder="상세 주소">
					</td>
				</tr>
				<tr>
					<td class="firstTd">이메일</td>
					<td class="secondTd">
						<input type="text" class="addr borderColor" name="myEmail" value="${dbVO.email }">
					</td>
				</tr>
				<tr>
					<td class="firstTd">회원타입</td>
					<td class="secondTd">
						<input type="radio" name="userType" value="회원"> 개인회원
						<input type="radio" name="userType" value="점주" style="margin-left: 20px;"> 사업자회원
					</td>
				</tr>
			</table>
			<div style="margin-top: 25px;">
				<input type="button" value="취소" class="btns" style="margin-right: 10px;">
				<input type="submit" value="정보수정" class="btns">
			</div>
		</form>
	</div>
</div>
	
<%-- 지우면 안됨 subMenu.jsp에 container 시작 태그 있음 --%>
</div>
<!-- container end -->

<%@ include file="../userInclude/footer.jsp" %>