<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	/* 图片每3秒循环换 */
	var curIndex = 0;
	var timeInterval = 3000;
	var arr = new Array();
	arr[0] = "${pageContext.request.contextPath}/images/1.jpg";
	arr[1] = "${pageContext.request.contextPath}/images/2.jpg";
	arr[2] = "${pageContext.request.contextPath}/images/3.jpg";
	arr[3] = "${pageContext.request.contextPath}/images/4.jpg";
	arr[4] = "${pageContext.request.contextPath}/images/5.jpg";
	setInterval(changeImg, timeInterval);
	function changeImg() {
		var obj = document.getElementById("obj");
		if (curIndex == arr.length - 1) {
			curIndex = 0;
		} else {
			curIndex += 1;
		}
		obj.src = arr[curIndex];
	};
	window.onload = function() {
		document.getElementById("obj").onclick = function() {
			var obj = document.getElementById("obj");
			if (curIndex == arr.length - 1) {
				curIndex = 0;
			} else {
				curIndex += 1;
			}
			obj.src = arr[curIndex];
		}
	}
</script>
</head>
<body bgcolor="#e5eecc">

	<h3>新闻浏览</h3>

	<div align="center">
		<h4>【校庆60周年】江西理工大学建校60周年暨南昌校区办学40周年庆典大会隆重召开 </h4>
	</div>
	<div align="center">	    	   
		<img id="obj" src="${pageContext.request.contextPath}/images/1.jpg"
			width="700">
		
	</div>
	
	<p>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;本网讯 10月28日上午,江西理工大学建校60周年暨南昌校区办学40周年庆典大会在校区大礼堂隆重召开。
		学校副校长刘祖文，校区党工委副书记、管委会常务副主任王海宁，校长助理、商学院院长何维达，校长助理、能源与机械工程学院副院长帅词俊，
		原南昌有色金属工业学校、原江西理工大学南昌校区领导，校区管委会和各学院领导，300余名校友代表，退休教职工代表，以及校区部分师生代
		表，共计600余人参加大会。庆典大会由王海宁教授主持。。</p>
</body>
</html>