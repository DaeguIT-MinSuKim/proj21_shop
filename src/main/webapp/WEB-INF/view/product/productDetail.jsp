<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="<%=request.getContextPath()%>" />    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품상세정보</title>
<link rel="stylesheet" href="/proj21_shop/resources/main/css/main.css">
<link rel="stylesheet" href="/proj21_shop/resources/product/css/productDetail.css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
function count(type)  {
    // 결과를 표시할 element
        const resultElement = document.getElementById('result');

    // 현재 화면에 표시된 값
    let number = resultElement.innerText;

    // 더하기/빼기
    if(type === 'plus') {
        number = parseInt(number) + 1;
    }else if(type === 'minus' && number > 0)  {
        number = parseInt(number) - 1;
    }

     // 결과 출력
     resultElement.innerText = number;
    }
$(function() {
	
	var contextPath = "${contextPath}";
	var proNum = ${proNum};
	var n = 1;
	
	$.get(contextPath + "/api/productDetail/"+proNum, 
	function(json) {
		var sCont = "";
			sCont += "<div class = 'productImage'><img src="+contextPath+"/resources/product/images/"+json.proImagefilename+"></div>";
			sCont += "<div class = 'productInfo'>"
			sCont += "<div class = 'productInfoName'>"
			sCont += "<strong>"+json.proNum[0].proName+"</strong>";
			sCont += "<span class = 'review'>"+json.proNum[0].reReplyCount+"개 리뷰 보기</span>";
			sCont += "</div>"
			sCont += "<p> 조회수 : "+json.proNum[0].proHits+"</p>";
			sCont += "<p>"+json.proNum[0].proContent+"</p>";
			sCont += "<p>"+json.proNum[0].proStatus+"</p>";
			sCont +="<p><select id='size'><option value='size01'>사이즈를 선택해주세요</option><option value='size_01'>XS</option><option value='size_02'>S</option><option value='size_03'>M</option><option value='size_04'>L</option><option value='size_05'>XL</option></select></p>"
			sCont += "<p>"+json.proNum[0].proPrice+" 원</p>";
/* 			sCont += "<div>"
			sCont += "<input type='button'onclick='count('minus')'value='-'/>"
			sCont += "<div id = 'result'>0</div>"
			sCont += "<input type='button'onclick='count('plus')'value='+'/>"
			sCont += "</div>" */
			sCont += "<div class='submitBtns'>"
			sCont += "<input type='submit' id='cart' value='장바구니' />"
			sCont += "<input type='submit' id='purchase' value='구매하기' />"
			sCont += "</div>"
			sCont += "</div>"
		    $("#ProductLoad").append(sCont);
		
		$('#cart').on("click", function() {
			window.location.href = contextPath+"/cart?proNum="+json.proNum[0].proName;
		});
		
		$('#purchase').on("click", function() {
			window.location.href = contextPath+"/purchase?proNum="+ json.proNum[0].proName;
		});
	});
});

</script>
</head>
<body>
<div class="container">
<jsp:include page="/WEB-INF/view/include/header.jsp"></jsp:include>
<jsp:include page="/WEB-INF/view/include/topbody.jsp"></jsp:include>
		<section id="ProductLoad"></section>
			<input type='button'onclick='count("minus")'value='-'/>
			<div id = "result">0</div>
			<input type='button'onclick='count("plus")'value='+'/>
<jsp:include page="/WEB-INF/view/include/footer.jsp"></jsp:include>
</div>
</body>
</html>