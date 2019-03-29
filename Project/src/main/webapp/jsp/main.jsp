<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title</title>
<style type="text/css">
/*이미지슬라이드*/

 
body {
	margin: 0;
	padding: 0;
	width: 100%;
}
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
	padding: 0px;
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
<div style="height: 10px;"></div>
<h2>안녕하세요SHOP</h2>
		<form>
			<input type="text" placeholder="검색어 입력">
			<button type="submit"></button>
		</form>
</div>
	<div class="menubar">
		<ul style="text-align: center; padding-left:700px;">
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
			<li style="padding-left: 450px"><a href="#">LOGIN</a></li>
			<li ><a href="#">JOIN</a></li>
		</ul>
	</div>
</body>
</html>