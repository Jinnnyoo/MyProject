<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>主页</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/index.css">

</head>

<body>
	<!-- 头部菜单栏 -->
	<header class="over-hid header ">
		<div class="w-width over-hid auto-m">
			<!-- 左边菜单 -->
			<ul class="l-ul  ">
				<li class="" style="position: relative;"><span class="h-menu-t">用户信息</span>
					<ul class="mean-text">
						<li>基本信息</li>
						<li>修改密码</li>
						<li>忘记密码</li>
					</ul></li>



				<li><span class="h-menu-t">消息</span></li>
				<li></li>
			</ul>
			<ul class="r-ul">
				<li><span class="h-menu-t">购物车</span></li>
				<li><span class="h-menu-t">订单</span></li>
				<li><span class="h-menu-t">收藏夹</span></li>
				<li><span class="h-menu-t">愿望单</span></li>
			</ul>
		</div>
	</header>

	<!-- 搜索框 -->
	<div class="sreach">

		<div class="s-logo"></div>
		<div class="s-input">
			<form action="#" style="position: relative;">
				<span class="s-sreach"> <input type="text" name="sreach">
				</span> <input type="submit" value="搜索">
			</form>
		</div>

	</div>

	<!-- 数据展示 -->
	<main> <!-- 商品展示标签 -->
	<div class="w-width auto-m over-hid" id="main_shopping">

		<!-- <div class="commodity">
			<a href="#" class="block"> 图片 <span> <img src="" alt="" width="220" height="220px">
			</span> 价格
				<p class="price-box">
					<span class="price">￥<strong>55</strong>
					</span> <span class="postalicon">包邮</span>
				</p>
				<p class="c-title">具体描述</p>
				<p class="shopName">
					<span class="shopNick">dreamqi祺靓店</span> <span class="payNum">48人付款</span>
				</p>

				<p class="gouwu">
					<input class="gouwu-btn" type="button" value="加入购物车">
				</p>

			</a>
		</div> -->
	</div>


	</main>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.js"></script>
	<script>
	
	$(function(){
		$.ajax({
			url:"${pageContext.request.contextPath}/goods/goodsJson.do",
			data:{"page":10, "pageindex":0},
			success:function(data){
				$.each(data,function(i,data){
					//console.log(data);
					var code = "<div class='commodity'>";
					code += "<a href='#' class='block'><span> <img src='${pageContext.request.contextPath}"+data.imgurl+"' alt='' width='220' height='220px'></span> ";
					code +=   "	<p class='price-box'><span class='price'>￥<strong></strong>"+data.price+"</span> <span class='postalicon'>包邮</span></p>";
					code +=  "<p class='c-title'>"+data.good_name+"</p><p class='shopName'><span class='shopNick'>"+data.content+"</span> <span class='payNum'>0人付款</span></p>"
					code += "<p class='gouwu'><input data-id='"+data.id+"' class='gouwu-btn' type='button' value='加入购物车'></p>";
					code += "</a></div>";
					$(code).appendTo($("#main_shopping"));
				});
			}
		});
		
		//加入购物车
		$(document).on("click", ".gouwu-btn", function(){ 
			//此处的$(this)指$( "#testDiv")，而非$(document) 
			var id = $(this).data("id");
			
			var btn =  $(this);
			
			btn.val("已加入购物车");
			btn.prop("disabled", true);
			btn.css({'opacity':'0.4'});
			/* $.ajax({
				url:"${pageContext.request.contextPath}/goods/goodsJson.do",
				data:{"page":10, "pageindex":0},
				success:function(data){
					$.each(data,function(i,data){
						//console.log(data);
						var code = "<div class='commodity'>";
						code += "<a href='#' class='block'><span> <img src='${pageContext.request.contextPath}"+data.imgurl+"' alt='' width='220' height='220px'></span> ";
						code +=   "	<p class='price-box'><span class='price'>￥<strong></strong>"+data.price+"</span> <span class='postalicon'>包邮</span></p>";
						code +=  "<p class='c-title'>"+data.good_name+"</p><p class='shopName'><span class='shopNick'>"+data.content+"</span> <span class='payNum'>0人付款</span></p>"
						code += "<p class='gouwu'><input data-id='"+data.id+"' class='gouwu-btn' type='button' value='加入购物车'></p>";
						code += "</a></div>";
						$(code).appendTo($("#main_shopping"));
					});
				}
			}); */
			
			
			
		}); 
		
	});
	
	
	
	
    
    
    
    </script>



</body>

</html>