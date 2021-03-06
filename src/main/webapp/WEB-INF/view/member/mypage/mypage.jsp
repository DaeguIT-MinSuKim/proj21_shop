<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="<%=request.getContextPath()%>" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<link rel="stylesheet"
	href="${contextPath }/resources/member/css/mypage.css" />
<link rel="stylesheet" href="${contextPath }/resources/main/css/main.css">
</head>
<body>
<div class="container">
		<jsp:include page="/WEB-INF/view/include/header.jsp"></jsp:include>
		<jsp:include page="/WEB-INF/view/include/topbody.jsp"></jsp:include>
		<h1>마이페이지</h1>
		<section id="mypage">
		<div class="box1 box">
			<a href="board?memberId=${authInfo.id}"><img alt="board" src="${contextPath }/images/board.jpg"></a>
		</div>
		<div class="box2 box">
			<a href="modify"><img alt="membership" src="${contextPath }/images/membership.jpg" ></a>
		</div>
		<div class="box3 box">
			<a href="cart?memId=${authInfo.id}"><img alt="bascket" src="${contextPath }/images/basket.jpg"></a>
		</div>
		<br>
		<div class="box4 box">
			<a href="myorder?memberId=${authInfo.id}"><img alt="order" src="${contextPath }/images/order.jpg"></a>
		</div>
		<div class="box5 box">
			<a href ="delete"><img alt="quit" src="${contextPath }/images/quit.jpg"></a>
		</div>
		<jsp:include page="/WEB-INF/view/include/footer.jsp"></jsp:include>
	</section>
</div>
</body>
</html>