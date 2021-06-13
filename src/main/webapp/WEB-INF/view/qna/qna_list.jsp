<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="contextPath" value="<%=request.getContextPath()%>" />
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script>
$(function(){
	$("#searchBtn").on("click", function(event){
		self.location= "/proj21_shop/listPaging${pageMaker.makeSearch(1)}"
		+"&searchType=" +$("select option:selected").val()
		+"&keyword=" + encodeURIComponent($("#keywrodInput").val());
	}) 

}); 
</script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="search_qna">
				<select name="searchType" id = "searchType">
				<!-- 
					/*
					'전체검색' = a
					'공지' = b
					'제품문의' = c 
						'환불문의' = d 
						'포인트 º 적립금' = e 
						'회원관련' = f
						'주문결제' = g
						'기타' = h
				-->
					<option value="a"><c:out value="${searchCriteria.searchType == null ? 'selected' : ' '}"/>==전채검색==</option>
					<option value="b"><c:out value="${searchCriteria.searchType eq 'b' ? 'selected' : ' '}"/>공지</option>
					<option value="c"><c:out value="${searchCriteria.searchType eq 'c' ? 'selected' : ' '}"/>제품문의</option>
					<option value="d"><c:out value="${searchCriteria.searchType eq 'd' ? 'selected' : ' '}"/>환불문의</option>
					<option value="e"><c:out value="${searchCriteria.searchType eq 'e' ? 'selected' : ' '}"/>포인트 º 적립금</option>
					<option value="f"><c:out value="${searchCriteria.searchType eq 'f' ? 'selected' : ' '}"/>회원관련</option>
					<option value="g"><c:out value="${searchCriteria.searchType eq 'g' ? 'selected' : ' '}"/>주문결제</option>
					<option value="h"><c:out value="${searchCriteria.searchType eq 'h' ? 'selected' : ' '}"/>기타</option>
				</select>
				<input type="text" class = "search_control"
				 name="keyword" id="keywordInput"  value = "${searchCriteria.keyword}" placeholder="검색어를 입력해 주세요">
				<button type="button" id="searchBtn">검색</button>
				<button type="button" id="insertBtn">글쓰기</button>
			</div>
			
			
</body>
</html>