<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
/*이미지슬라이드*/

 
body {
	margin: 0;
	padding: 0;
	width: 100%;
}


/*sectionWrap*/

#sectionWrap {width:150px; margin:0 auto; padding:80px 0 60px;}
#sectionWrap.on{padding-top:128px;}

#sectionWrap > div{margin-bottom:150px;}
#sectionWrap .section01{height:300px;}
#sectionWrap .section01 .cont{width:153px; height:600px; overflow:hidden; float:left; position:relative; border-left:solid 1px #f0ede7;}
#sectionWrap .section01 .cont div:first-child{border-left:none;}
#sectionWrap .section01 .cont .bg{position:absolute; top:0; left:0;}
/*#sectionWrap .section01 .cont .bg img {filter:alpha(opacity=30);opacity:0.3}
#sectionWrap .section01 .cont.on .bg img{filter:alpha(opacity=100);opacity:1}*/
#sectionWrap .section01 .cont.on{width:413px;}
#sectionWrap .section01 .cont.on .layer{display:none}
#sectionWrap .section01 .cont .title_off, #sectionWrap .section01 .cont .title_on{position:relative;display:block;width:153px;text-align:center;z-index:9999;padding-top:70px;}
#sectionWrap .section01 .cont .title_on{width:413px;display:none}
#sectionWrap .section01 .cont.on .title_off{display:none;}
#sectionWrap .section01 .cont.on .title_on{display:block;}
#sectionWrap .section01 .cont .layer{display:block; width:413px; height:600px; position:absolute; left:0; top:0; z-index:1; background:#333333; filter:alpha(opacity=90); opacity:0.9;}
/*#sectionWrap .section01 .cont .layer{position:absolute;left:0;top:0px;width:153px;height:554px;background:black;opacity:0.2}*/

/* 메뉴바 */
.menubar {
	border: none;
	border: 0px;
	margin: 0px;
	padding: 0px;
	font: 67.5% "Lucida Sans Unicode", "Bitstream Vera Sans",
		"Trebuchet Unicode MS", "Lucida Grande", Verdana, Helvetica,
		sans-serif;
	font-size: 14px;
	font-weight: bold;
}

.menubar ul {
	background: rgb(109, 109, 109);
	height: 50px;
	list-style: none;
	margin: 0;
	padding: 0;
}

.menubar li {
	float: left;
	padding: 0px;
}

.menubar li a {
	background: rgb(109, 109, 109);
	color: #cccccc;
	display: block;
	font-weight: normal;
	line-height: 50px;
	margin: 0px;
	padding: 0px 25px;
	text-align: center;
	text-decoration: none;
}

.menubar li a:hover, .menubar ul li:hover a {
	background: rgb(71, 71, 71);
	color: #FFFFFF;
	text-decoration: none;
}

.menubar li ul {
	background: rgb(109, 109, 109);
	display: none; /* 평상시에는 드랍메뉴가 안보이게 하기 */
	height: auto;
	padding: 0px;
	margin: 0px;
	border: 0px;
	position: absolute;
	width: 200px;
	z-index: 200;
	/*top:1em;
/*left:0;*/
}

.menubar li:hover ul {
	display: block; /* 마우스 커서 올리면 드랍메뉴 보이게 하기 */
}

.menubar li li {
	background: rgb(109, 109, 109);
	display: block;
	float: none;
	margin: 0px;
	padding: 0px;
	width: 200px;
}

.menubar li:hover li a {
	background: none;
}

.menubar li ul a {
	display: block;
	height: 50px;
	font-size: 12px;
	font-style: normal;
	margin: 0px;
	padding: 0px 10px 0px 15px;
	text-align: left;
}

.menubar li ul a:hover, .menubar li ul li:hover a {
	background: rgb(71, 71, 71);
	border: 0px;
	color: #ffffff;
	text-decoration: none;
}

.menubar p {
	clear: left;
}

/* 검색바*/
* {
	box-sizing: border-box;
}

body {
	margin: 0;
}

div {
	padding: 20px 0
}

form {
	position: relative;
	width: 300px;
	margin: 0 auto;
}

.d7 {
	background: #7BA7AB;
}

.d7:after {
	content: "";
	clear: both;
	display: table
}

.d7 form {
	width: auto;
	float: right;
	margin-right: 30px;
}

.d7 input {
	width: 250px;
	height: 42px;
	padding-left: 15px;
	border-radius: 42px;
	border: 2px solid #324b4e;
	background: #F9F0DA;
	outline: none;
	position: relative;
	transition: .3s linear;
}

.d7 input:focus {
	width: 300px;
}

.d7 button {
	width: 42px;
	height: 42px;
	background: none;
	border: none;
	position: absolute;
	top: -2px;
	right: 0;
}

.d7 button:before {
	content: "\f002";
	font-family: FontAwesome;
	color: #324b4e;
}

body {
	font-family: 'tahoma';
}
/*메인 글*/
h2 {
	text-align: center;
	width: 100%;
	margin: 0px auto;
	color: #fff;
	font-size: 80px;
	top: 50%;
	margin-top: 10px;
	text-shadow: -1px -1px 0px #2196f3, 3px 3px 0px #2196f3, 6px 6px 0px
		#0d47a1;
}
</style>
</head>
<body>
<div class="d7" >
<h2>SHOPSHOPSHOP</h2>
<form>
  <input type="text" placeholder="검색어 입력">
  <button type="submit"></button>
</form>
</div>
<div style="height: 30px;"></div>
	<div class="menubar">
		<ul>
			<li><a href="#">Home</a></li>
			<li><a href="#" id="current">TOP</a>
				<ul>
					<li><a href="#">가</a></li>
					<li><a href="#">Galleries</a></li>
					<li><a href="#">Apps</a></li>
					<li><a href="#">Extensions</a></li>
				</ul>
			</li>
			<li><a href="#">BOTTOM</a>
				<ul>
					<li><a href="#">Jean</a></li>
					<li><a href="#">Cotten</a></li>
					<li><a href="#">Apps</a></li>
					<li><a href="#">Extensions</a></li>
				</ul>
			</li>
			<li><a href="#">OUTER</a></li>
			<li><a href="#">ACC</a></li>
			<li ><a href="#">SHOSE</a></li>
		</ul>
	</div>
	<div id="section">			
						
		<div class="section">
			<div class="cont on">					
				<span class="bg"><img src="img/01.jpg" alt="" /></span>	
                <span class="title_off"><img src="img/cont_title01_out.png" alt="" /></span>			
				<span class="title_on"><a href="https://www.instagram.com/lamf_k/"><img src="img/cont_title_on.png" alt="" /></a></span>														
				<span class="layer"></span>
			</div>
			<div class="cont">					
				<span class="bg"><img src="img/02.jpg" alt="" /></span>	
                <span class="title_off"><img src="img/cont_title02_out.png" alt="" /></span>			
				<span class="title_on"><a href="https://www.instagram.com/lamf_k/"><img src="img/cont_title_on.png" alt="" /></a></span>	                    									
				<span class="layer"></span>
			</div>
			<div class="cont">					
				<span class="bg"><img src="img/03.jpg" alt="" /></span>	
                <span class="title_off"><img src="img/cont_title03_out.png" alt="" /></span>			
				<span class="title_on"><a href="https://www.instagram.com/lamf_k/"><img src="img/cont_title_on.png" alt="" /></a></span>	                    				
				<span class="layer"></span>
			</div>
			<div class="cont">										
				<span class="bg"><img src="img/04.jpg" alt="" /></span>	
                <span class="title_off"><img src="img/cont_title04_out.png" alt="" /></span>			
				<span class="title_on"><a href="https://www.instagram.com/lamf_k/"><img src="img/cont_title_on.png" alt="" /></a></span>	                    			
				<span class="layer"></span>						
			</div>
			<div class="cont">										
				<span class="bg"><img src="img/05.jpg" alt="" /></span> 
                <span class="title_off"><img src="img/cont_title05_out.png" alt="" /></span>			
				<span class="title_on"><a href="https://www.instagram.com/lamf_k/"><img src="img/cont_title_on.png" alt="" /></a></span>	                    					
				<span class="layer"></span>
			</div>
		</div>
	</div>	

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="//code.jquery.com/jquery-1.10.2.min.js"></script>
<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script>

$(function() {

	$(".section .cont").mouseover(function() {					
		$(".section .cont").stop().animate({width:"100px"}, 500, 'easeOutCirc').removeClass("on");
		$(this).stop().animate({width:"200px"}, 500, 'easeOutCirc').addClass("on");							
	});

});

</script>
</body>
</html>