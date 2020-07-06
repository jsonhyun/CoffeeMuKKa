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
		<!-- 서브메뉴 li 들어가는곳 -->
		<ul class="subMenus"></ul>
		
		<div class="subBoardArea">
			<div class="subBoardTitle">
				<p>공지사항</p>
				<p><a href="#"><i class="fas fa-caret-right"></i> MORE</a></p>
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
				<p><a href="#"><i class="fas fa-caret-right"></i> MORE</a></p>
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
		function subMenuFocus(num){
			$(".subMenus li").eq(num).find(".subMenuName").addClass("orange").addClass("orangeBorder");
			$(document).on("mouseover", ".subMenus li:eq("+num+")", function(){
				$(this).find(".subMenuName").css("border-color", "#ED7D31");
			})
		}
	
		$(function(){
			var imgPath = "${pageContext.request.contextPath }/resources/images/";
			var pageUrlPath = "${pageContext.request.contextPath}/user/";
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
								
								var $a = $("<a>").attr("href", pageUrlPath+(obj.url)+(obj.subUrl[j].url)).append($span);
								var $li = $("<li>").append($a);
								
								$(".subMenus").append($li);
								//$(".subPageTitle .title").text(item.name);
							})	
							
							/* subMenu 포커스 */
							$(".subMenuName").removeClass("orange");
							$(".subMenuName").removeClass("orangeBorder");
							var subUrl = pageUrl[6] == null ? "" : "/"+pageUrl[6];
							$(obj.subUrl).each(function(j, item){
								//console.log(item.url);
								//console.log(subUrl.lastIndexOf(item.url)+ ", " + j + ", ");
								if(subUrl.lastIndexOf(item.url) == 0)  {
									subMenuFocus(j);
								}
							})
						}
					})		
					
				}
			})
			/* subMenu end */
			
			/* menu 포커스 */
			$("#mukkCafe").attr("src", imgPath+"menu1.png");
			$("#community").attr("src", imgPath+"menu2.png");
			$("#pointShop").attr("src", imgPath+"menu3.png");
			$("#notic").attr("src", imgPath+"menu4.png");
			$(".menuName span").css("color", "#fff");
			
			if(pageUrl.indexOf("mukkaCafe") > -1){
				$("#mukkCafe").attr("src", imgPath+"menu1_1.png");
				$(".menuName span").eq(0).css("color", "#ED7D31");
			}
			if(pageUrl.indexOf("community") > -1){
				$("#community").attr("src", imgPath+"menu2_2.png");
				$(".menuName span").eq(1).css("color", "#ED7D31");
			}
			if(pageUrl.indexOf("pointShop") > -1){
				$("#pointShop").attr("src", imgPath+"menu3_3.png");
				$(".menuName span").eq(2).css("color", "#ED7D31");
			}
			if(pageUrl.indexOf("notice") > -1){
				$("#notice").attr("src", imgPath+"menu4_4.png");
				$(".menuName span").eq(3).css("color", "#ED7D31");
			}			
		}) 
	</script>