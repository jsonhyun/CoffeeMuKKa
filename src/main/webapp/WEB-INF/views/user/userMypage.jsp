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
	#myMenu li:first-child a{
		color: white;
	}
	#myMenu li:first-child {
		background-color: #303A50;
		cursor: pointer;
	}
	#myMenu li:hover {
		background-color: #303A50;
		cursor: pointer;
	}
	#myMenu li:hover a{
		color: white;
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
	.btnSearch{
		width: 100px;
		height: 35px;
		background: white;
		border: 1px solid #ccc;
		cursor: pointer;
		margin-left: 10px;
	}
	.btnSearch:hover{
		color: white;
		background-color: #303A50;
		cursor: pointer;
	}
	.widthTel{
		width: 100px;
	}
	.addr{
		width: 300px;
		height: 35px;
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
		
		/* 회원타입 선택 */
		$("input:radio[name='userType']:radio[value='${dbVO.userType.userTypeName}']").prop('checked', true); // 선택하기 
		
		/* 닉네임 중복 확인 */
		$("#duplCheck").click(function() {
			var nick = $("input[name='nick']").val();
			
			var json = JSON.stringify({"nick":nick});
			
			$.ajax({
				url:"${pageContext.request.contextPath }/rest/duplchecknick/",
				type:"post",
				headers:{"Content-Type":"application/json"},
				data:json,
				dataType:"text",
				success:function(res){
					if(res == "duplicate"){
						alert("이미 사용중인 닉네임입니다.");
					}else{
						alert("사용 가능한 닉네임입니다.");
						$("#flagConfirm").val("true");
						$("#flagNickCheck").val("true");
					}
				}
			})
		})
		
		$("#modifyUsers").click(function() {
			/* 아이디 */
			var userId = $("input[name='id']").val();
			
			/* 닉네임 중복 확인 처리 */
			var nick = $("input[name='nick']").val();
			var nickHidden = $("#nickHidden").val();
			var flagConfirm = $("#flagConfirm").val();
			if(nick != nickHidden){
				if(flagConfirm == 'false'){
					$("#flagNickCheck").val("false");	
				}
			}
			var flagNickCheck = $("#flagNickCheck").val();
			
			if(flagNickCheck == 'false'){
				alert("닉네임 중복 확인을 해주세요.");
				return false;
			}
			
			/* 성별 */
			var gender = $("input[name='gender']:checked").val();
			
			/* 생일 */
			var birthday = $("input[name='birthday']").val();
			
			/* 전화번호 */
			var first = $("#firstNum").val();
			var second = $("#secondNum").val();
			var third = $("#thirdNum").val();
			var tel = first+"-"+second+"-"+third
			
			/* 주소 */
			var address = $("input[name='myAddress']").val();
			var detailAddress = $("input[name='myDetailAddress']").val();
			
			/* 이메일 */
			var email = $("input[name='myEmail']").val();
			
			/* 유저타입 */
			var userType = $("input[name='userType']:checked").val();
			if(userType == '점주'){
				userType = 1;
			}else if(userType == '회원'){
				userType = 2;
			}
			
			var json = JSON.stringify({"userId":userId, "nick":nick, "gender": gender, "birthday":birthday, "tel":tel, 
									   "address":address, "detailAddress":detailAddress, "email":email, "userType":{"userType":userType}});
			
			$.ajax({
				url:"${pageContext.request.contextPath }/rest/modify/",
				type:"post",
				headers:{"Content-Type":"application/json"},
				data:json,
				dataType:"text",
				success:function(res){
					if(res == "SUCCESS"){
						alert("회원정보가 수정되었습니다.");
					}
				}
			})
		})
		
		$("#btnPassChg").click(function() {
			$('#changePassModal').modal('show');
			$('#changePassModal').addClass("fade");
		})
		
		$("#btnConfirmPass").click(function() {
			var userId = $("input[name='id']").val();
			var password = $("input[name='nowPass']").val();
			
			var json = JSON.stringify({"userId":userId, "password":password});
			
			$.ajax({
				url:"${pageContext.request.contextPath }/rest/nowpassconfirm/",
				type:"post",
				headers:{"Content-Type":"application/json"},
				data:json,
				dataType:"text",
				success:function(res){
					if(res == "SUCCESS"){
						alert("비밀번호가 확인되었습니다.");
						$("input[name='newPass']").attr('disabled', false);
						$("input[name='newPassConfirm']").attr('disabled', false);
					}else{
						alert("현재 비밀번호를 다시 확인해주세요.");
						$("input[name='nowPass']").val("");
					}
				}
			})
		})
		
		$("#btnCancel").click(function() {
			$("input[name='nowPass']").val("");
			$("#newPass").val("");
			$("#newPassConfirm").val("");
			$("#span1").html("")
			$("#span2").html("")
			$("input[name='newPass']").attr('disabled', true);
			$("input[name='newPassConfirm']").attr('disabled', true);
			$('#changePassModal').modal('hide');
		})
		
		/* 비밀번호 정규표현식 체크 */
		var passRules = /^(?=.*\d{1,50})(?=.*[~`!@#$%\^&*()-+=]{1,50})(?=.*[a-zA-Z]{1,50}).{8,50}$/;
		
		$("#newPass").change(function() {
			var pass1 = $("#newPass").val();
			if(passRules.test(pass1)){
				$("#span1").html("사용가능").css("color", "green");
			}else{
				$("#span1").html("사용불가(숫자, 특수문자, 영문 1자리 이상 포함, 8자리 이상)").css("color", "red");
				$("#newPass").val('');
			}
		})
		$("#newPassConfirm").change(function() {
			var pass1 = $("#newPass").val();
			var pass2 = $("#newPassConfirm").val();
			if(pass1 == pass2){
				$("#span2").html("비밀번호 일치").css("color", "green");
			}else{
				$("#span2").html("비밀번호 불일치").css("color", "red");
				$("#newPassConfirm").val('');
			}
		})
		
		$("#btnChangePass").click(function() {
			var userId = $("input[name='id']").val();
			var password = $("#newPassConfirm").val();
			
			var json = JSON.stringify({"userId":userId, "password":password});
			
			$.ajax({
				url:"${pageContext.request.contextPath }/rest/modifypass/",
				type:"post",
				headers:{"Content-Type":"application/json"},
				data:json,
				dataType:"text",
				success:function(res){
					if(res == "SUCCESS"){
						alert("비밀번호가 변경되었습니다.");						
						$("#btnCancel").trigger("click");
					}else{
						alert("비밀번호 변경 불가! 다시 확인하고 변경해주세요.");
					}
				}
			})
		})
	})
</script>

<div>
	<div id="content">
		<ul id="myMenu">
			<li><a href="${pageContext.request.contextPath }/user/mypage?userId=${userId}">회원정보관리</a></li>
			<c:if test="${dbVO.userType.userType == 1 }">
				<li><a href="${pageContext.request.contextPath }/user/mycafe?userId=${userId}">내카페 관리</a></li>
			</c:if>
			<li><a href="${pageContext.request.contextPath }/user/mywishcafe?userId=${userId}">즐겨찾는 카페</a></li>
			<li><a href="${pageContext.request.contextPath }/user/myrecommand?userId=${userId}">나의 추천 카페</a></li>
			<li><a href="${pageContext.request.contextPath }/user/myreview?userId=${userId}">나의 카페 탐방기</a></li>
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
				<td>${boardCnt } 개</td>
				<td>최초 가입일자</td>
				<td><fmt:formatDate value="${dbVO.userJoinDate }" pattern="yyyy-MM-dd"/> </td>
			</tr>
		</table>
		
		<div class="subTitleName">승급 조건</div>
		<table class="tblGrade">
			<tr>
				<td style="width: 266px;">다음 등급</td>
				<td style="width: 314px;">
					<c:choose>
						<c:when test="${dbVO.userGrade.userGradeName == '커피새싹'}">
							<img src="${pageContext.request.contextPath }/resources/images/myomok.png" style="width: 30px;vertical-align: middle;margin-right: 5px;">
							<span>커피묘목</span>	
						</c:when>
						<c:when test="${dbVO.userGrade.userGradeName == '커피묘목'}">
							<img src="${pageContext.request.contextPath }/resources/images/yeolmae.png" style="width: 30px;vertical-align: middle;margin-right: 5px;">
							<span>커피열매</span>	
						</c:when>
					</c:choose>
					
				</td>
				<td style="width: 297px;">필요 게시물 수</td>
				<td>
					<c:choose>
						<c:when test="${dbVO.userGrade.userGradeName == '커피새싹'}">
							<span>20 개(${boardCnt } 개)</span>	
						</c:when>
						<c:when test="${dbVO.userGrade.userGradeName == '커피묘목'}">
							<span>100 개(${boardCnt } 개)</span>	
						</c:when>
					</c:choose>
				</td>
			</tr>
		</table>
		
		<div class="subTitleName">필수 사항</div>
		<table id="tblInfo">
			<tr>
				<td class="firstTd">아이디</td>
				<td class="secondTd">
					${dbVO.userId }
					<input type="hidden" value="${dbVO.userId }" name="id">
				</td>
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
					<input type="text" name="myName" value="${dbVO.name }" readonly="readonly" style="height: 35px;width: 200px;border: 1px solid #ccc;padding-left: 10px;">
				</td>
			</tr>
			<tr>
				<td class="firstTd">닉네임</td>
				<td class="secondTd">
					<input type="text" name="nick" value="${dbVO.nick }" style="height: 35px;width: 200px;border: 1px solid #ccc;padding-left: 10px;">
					<input type="hidden" id="nickHidden" value="${dbVO.nick }">
					<input type="hidden" id="flagNickCheck" value="true">
					<input type="hidden" id="flagConfirm" value="false">
					<input type="button" class="btnSearch" id="duplCheck" value="중복확인">
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
					<input type="button" class="btnSearch" onclick="openDaumZipAddress();" value="주소검색"><br>
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
			<input type="submit" id="modifyUsers" value="정보수정" class="btns">
		</div>
		
		<!-- 비밀번호 변경 modal start -->
		<div class="modal fade" id="changePassModal">
			<div class="modal-dialog modal-dialog-scrollable">
				<div class="modal-content">
				    
					<!-- Modal Header -->
					<div class="modal-header">
						<h3 class="modal-title">Coffee MuKKa 비밀번호 변경</h3>
					</div>
					
					<!-- Modal body -->
					<div class="modal-body">
						<div>
							<input class="inputRegi" type="password" name="nowPass" placeholder="현재 비밀번호" style="margin-bottom: 20px;margin-top: 20px;width: 230px;">
							<input type="button" value="비밀번호 확인" id="btnConfirmPass" style="height: 42px;background: #ed7d31;border: 1px;color: white;border-radius: 5px;width: 86px;cursor: pointer;"><br>
						</div>
					</div>
					
					<!-- Modal footer -->
					<div style="border-top: 1px solid #ccc;position: relative;">
						<input class="inputRegi" type="password" name="newPass" id="newPass"placeholder="새로운 비밀번호" style="margin-top: 30px;" disabled="disabled"><br>
						<span id="span1" style="position: absolute;top: 77px;left: 83px;font-size: 13px;"></span><br>
						<input class="inputRegi" type="password" name="newPassConfirm" id="newPassConfirm" placeholder="비밀번호 확인" disabled="disabled"><br>
						<span id="span2" style="position: absolute;top: 157px;left: 83px;font-size: 13px;"></span><br>
						<input type="button" class="btn btn-danger" id="btnCancel" style="margin-top: 5px; width: 167px;margin-right: -15px;cursor: pointer; margin-bottom:30px;" value="취소">
						<input type="button" class="btn btn-primary" id="btnChangePass" style="margin-top: 5px; margin-bottom:30px; width: 167px;cursor: pointer;" value="변경하기">
					</div>
				</div>
			</div>
		</div>
		<!-- 아이디찾기 modal end -->
		
	</div>
</div>
	
<%-- 지우면 안됨 subMenu.jsp에 container 시작 태그 있음 --%>
</div>
<!-- container end -->

<%@ include file="../userInclude/footer.jsp" %>