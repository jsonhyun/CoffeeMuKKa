<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- container start -->
<div class="container clearfix">
	<aside>
		<div class="subTitleArea">
			<div class="subTitleWrap">
				<p class="subTitle"></p>
				<p class="subText"></p>
			</div>
		</div>
		<ul class="subMenus"></ul>
		
		<div class="subBoardArea">
			<div class="subBoardTitle">
				<p>공지사항</p>
				<p><a href=""><i class="fas fa-caret-right"></i> MORE</a></p>
			</div>
			<ul class="subBoardList">
				<li>
					<a href="#">
						<i class="fas fa-caret-right"></i> 공지사항글 테스트 1
					</a>
				</li>
				<li>
					<a href="#">
						<i class="fas fa-caret-right"></i> 공지사항글 테스트 2
					</a>
				</li>
				<li>
					<a href="#">
						<i class="fas fa-caret-right"></i> 공지사항글 테스트 3
					</a>
				</li>
				<li>
					<a href="#">
						<i class="fas fa-caret-right"></i> 공지사항글 테스트 4
					</a>
				</li>
			</ul>
		</div>
		
		<div class="subBoardArea">
			<div class="subBoardTitle">
				<p>이벤트</p>
				<p><a href=""><i class="fas fa-caret-right"></i> MORE</a></p>
			</div>
			<ul class="subBoardList">
				<li>
					<a href="#">
						<i class="fas fa-caret-right"></i> 공지사항글 테스트 1
					</a>
				</li>
				<li>
					<a href="#">
						<i class="fas fa-caret-right"></i> 공지사항글 테스트 2
					</a>
				</li>
				<li>
					<a href="#">
						<i class="fas fa-caret-right"></i> 공지사항글 테스트 3
					</a>
				</li>
				<li>
					<a href="#">
						<i class="fas fa-caret-right"></i> 공지사항글 테스트 4
					</a>
				</li>
			</ul>
		</div>
		
	</aside>
	<script>
		$(function(){
			var imgPath = "${pageContext.request.contextPath }/resources/images/";
			var pageUrl = location.href.split("/");
			
			/* subMenu */
			$(".subMenus").empty();
			$.ajax({
				url: "${pageContext.request.contextPath}/resources/data/subMenuData.json",
				type: "get",
				dataType: "json",
				success:function(res){
					//console.log(res);
					var subItem = res.subItem;
					
					$(subItem).each(function(i, obj) {
						if(pageUrl[5].indexOf(obj.url) > -1){
							$(".activeTitle").text(" > " + obj.title);
							$(".subTitleArea").css("background-image", "url('${pageContext.request.contextPath}/resources/images/"+obj.menuImg+"')")
							$(".subTitle").text(obj.title);
							$(".subText").html(obj.text);
							
							/* subMenu a태그 */
							$(obj.subMenu).each(function(j, item){
								//<li><a href="#"><span>submenu</span></a></li>
								var $span = $("<span>").addClass("subMenuName").text(item.name);
								/* 서브메뉴 각 페이지가 존재한다면 수정해야함. #은 임시 */
								/* ${pageContext.request.contextPath}/user/mukkaCafe/서브페이지 */
								var $a = $("<a>").attr("href", "#").append($span);
								var $li = $("<li>").append($a);
								
								$(".subMenus").append($li);
							})	
						}
					})		
					
					/* subMenu 포커스 */
					$(".subMenuName").removeClass("orange");
					$(".subMenuName").removeClass("orangeBorder");
					
					// 서브페이지 첫 화면 포커스
					if(pageUrl != ""){
						$(".subMenus li").eq(0).find(".subMenuName").addClass("orange").addClass("orangeBorder");
						$(document).on("mouseover", ".subMenus li:eq(0)", function(){
							$(this).find(".subMenuName").css("border-color", "#ED7D31");
						})
					}
				}
			})
			/* subMenu end */
			
			/* menu 포커스 */
			$("#mukkCafe").attr("src", imgPath+"menu1.png");
			$("#community").attr("src", imgPath+"menu2.png");
			$("#pointShop").attr("src", imgPath+"menu3.png");
			$("#board").attr("src", imgPath+"menu4.png");
			$(".menuName span").css("color", "#fff");
			
			if(pageUrl.indexOf("mukkaCafe") > -1){
				$("#mukkCafe").attr("src", imgPath+"menu1_1.png");
				$(".menuName span").eq(0).css("color", "#ED7D31");
			}
			if(pageUrl.indexOf("community") > -1){
				$("#community").attr("src", imgPath+"menu2_2.png");
				$(".menuName span").eq(1).css("color", "#ED7D31");
			}
		})
	</script>