<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="<%=request.getContextPath()%>" />
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${contextPath }/resources/member/css/modifyForm.css">
<link rel="stylesheet" href="${contextPath }/resources/main/css/main.css">
<meta charset="UTF-8">
<title>회원 정보 수정</title>
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<script>
	//본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
	function sample4_execDaumPostcode() {
		new daum.Postcode(
				{
					oncomplete : function(data) {
						// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

						// 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
						// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
						var roadAddr = data.roadAddress; // 도로명 주소 변수
						var extraRoadAddr = ''; // 참고 항목 변수

						// 법정동명이 있을 경우 추가한다. (법정리는 제외)
						// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
						if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
							extraRoadAddr += data.bname;
						}
						// 건물명이 있고, 공동주택일 경우 추가한다.
						if (data.buildingName !== '' && data.apartment === 'Y') {
							extraRoadAddr += (extraRoadAddr !== '' ? ', '
									+ data.buildingName : data.buildingName);
						}
						// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
						if (extraRoadAddr !== '') {
							extraRoadAddr = ' (' + extraRoadAddr + ')';
						}

						// 우편번호와 주소 정보를 해당 필드에 넣는다.
						document.getElementById('sample4_postcode').value = data.zonecode;
						document.getElementById("sample4_roadAddress").value = roadAddr;
						document.getElementById("sample4_jibunAddress").value = data.jibunAddress;

						// 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
						if (roadAddr !== '') {
							document.getElementById("sample4_extraAddress").value = extraRoadAddr;
						} else {
							document.getElementById("sample4_extraAddress").value = '';
						}

						var guideTextBox = document.getElementById("guide");
						// 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
						if (data.autoRoadAddress) {
							var expRoadAddr = data.autoRoadAddress
									+ extraRoadAddr;
							guideTextBox.innerHTML = '(예상 도로명 주소 : '
									+ expRoadAddr + ')';
							guideTextBox.style.display = 'block';

						} else if (data.autoJibunAddress) {
							var expJibunAddr = data.autoJibunAddress;
							guideTextBox.innerHTML = '(예상 지번 주소 : '
									+ expJibunAddr + ')';
							guideTextBox.style.display = 'block';
						} else {
							guideTextBox.innerHTML = '';
							guideTextBox.style.display = 'none';
						}
					}
				}).open();
		
		
	}
</script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
<div class="container">
	<jsp:include page="/WEB-INF/view/include/header.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/view/include/topbody.jsp"></jsp:include>
	<h2>회원 정보 수정</h2>
	<!-- 요청 파라미터의 값을 수정 커맨드 객체로 넘겨주기  -->
	<section id="modifyFormArea">
		<form:form modelAttribute="ModifyRequest">
			<table class="type02">
				<tr>
					<th scope="row"><label for="confirmQuestion">본인확인질문</label></th>
					<td><select id="hint" name="memberPwdQ">
							<option>질문을 선택해 주세요</option>
							<option value="기억에 남는 추억의 장소는?">기억에 남는 추억의 장소는?</option>
							<option value="자신의 인생 좌우명은?">자신의 인생 좌우명은?</option>
							<option value="자신의 보물 제1호는?">자신의 보물 제1호는?</option>
							<option value="가장 기억에 남는 선생님 성함은?">가장 기억에 남는 선생님 성함은?</option>
					</select> <span class="disMatch"></span></td>
				</tr>
				<tr>
					<th scope="row"><label for="answer">답변</label></th>
					<td><form:input path="memberPwdA" id="hint" />
					<span class = "unMatch"></span></td>
				</tr>
				<tr>
					<th scope="row"><label for="tel">전화 번호</label></th>
					<td><form:input path="memberPh" required="required" value="${memberPh}" id="hint"/></td>
				</tr>
				<tr>
					<th scope="row"><label for="email">이메일</label></th>
					<td><form:input path="memberEmail" required="required" value="${memberEmail}" id="hint"/></td>
				</tr>
				<tr>
					<th scope="row"><label for="address">주소</label></th>
					<td>
						<!-- 다음 주소 api 사용 -->
						<form:input type="text" id="sample4_postcode" placeholder="우편번호" path="memberAddr1" value="${memberAddr1}" />
					 	<input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기" id="findButton"> <br>
						<form:input type="text" id="sample4_roadAddress" path="memberAddr2" placeholder="도로명주소" value="${memberAddr2}" />
						<input type="text" id="sample4_jibunAddress" placeholder="지번주소">
						<span id="guide" style="color: #999; display: none"></span>
						<form:input type="text" id="sample4_detailAddress" path="memberAddr3" placeholder="상세주소" value="${memberAddr3}"/>
						<input type="text" id="sample4_extraAddress" placeholder="참고항목">
					</td>
				</tr>
			</table>
			<div>
				<input type="submit" value="회원정보수정" class="button" /> <input
					type="reset" value="초기화" class="button" /> <input type="button"
					value="취소" class="button" onClick="history.go(-1)" />
			</div>
		</form:form>
	</section>
	<jsp:include page="/WEB-INF/view/include/footer.jsp"></jsp:include>
</div>	
</body>
</html>