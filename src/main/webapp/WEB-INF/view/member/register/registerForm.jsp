<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입</title>
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
<link rel="stylesheet" href="css/member/registerForm.css">
</head>
<body>
	<h2>회원가입</h2>
	<section id="registerFormArea">
		<form action="register" method="post">
			<table class="type02">
				<tr>
					<th scope="row"><label for="name">이름</label></th>
					<td><input type="text" name="name" id="name"></td>
				</tr>
				<tr>
					<th scope="row"><label for="id">아이디</label></th>
					<td><input type="text" name="id" id="id"></td>
				</tr>
				<tr>
					<th scope="row"><label for="passwd">비밀번호</label></th>
					<td><input type="password" name="passwd" id="passwd"></td>
				</tr>
				<tr>
					<th scope="row"><label for="passwdconfirm">비밀번호 확인</label></th>
					<td><input type="password" name="passwdconfirm"
						id="passwdconfirm"></td>
				</tr>
				<tr>
					<th scope="row"><label for="tel">전화번호</label></th>
					<td><input type="text" name="text" id="text"></td>
				</tr>
				<tr>
					<th scope="row">생년월일</th>
					<td><input type='date' name='birthday' value='1999-03-30' /></td>
				</tr>
				<tr>
					<th scope="row"><label for="gender">성별</label></th>
					<td><input type="radio" name="gender" value="male">남자
						<input type="radio" name="gender" value="female">여자</td>
				</tr>
				<tr>
					<th scope="row"><label for="address">주소</label></th>
					<td><input type="text" id="sample4_postcode"
						placeholder="우편번호"> <input type="button"
						onclick="sample4_execDaumPostcode()" value="우편번호 찾기"> <br>
						<input type="text" id="sample4_roadAddress" placeholder="도로명주소">
						<input type="text" id="sample4_jibunAddress" placeholder="지번주소">
						<span id="guide" style="color: #999; display: none"></span> <input
						type="text" id="sample4_detailAddress" placeholder="상세주소">
						<input type="text" id="sample4_extraAddress" placeholder="참고항목">
					</td>
				</tr>
				<tr>
					<th scope="row"><label for="confirmQ">본인확인질문</label></th>
					<td><select id="hint" name="hint">
							<option value="hint_01">기억에 남는 추억의 장소는?</option>
							<option value="hint_02">자신의 인생 좌우명은?</option>
							<option value="hint_03">자신의 보물 제1호는?</option>
							<option value="hint_04">가장 기억에 남는 선생님 성함은?</option>
					</select></td>
				</tr>
				<tr>
					<th scope="row"><label for="답변">답변</label></th>
					<td><input type="text" name="answer" id="answer"></td>
				</tr>
			</table>
			<div>
				<input type="submit" value="회원가입" id="registerButton" /> <input
					type="reset" value="초기화" id="resetButton" /> <input type="button"
					value="취소" id="cancelButton" onClick="history.go(-1)" />
			</div>
		</form>
	</section>
</body>
</html>