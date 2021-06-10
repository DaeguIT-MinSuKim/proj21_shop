<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>후기 작성</title>
<link rel="stylesheet"
	href="/proj21_shop/resources/review/css/reviewForm.css" />
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
	$(function() {
		$(".stars .fa").click(
				function() {
					$(this).addClass("active");
					$(this).prevAll().addClass("active");
					$(this).nextAll().removeClass("active");

					var starRate = $(this).index() + 1;
					/* $('.print').text(starRate); */
					var notice = [ '별로에요', '보통이에요', '그냥 그래요', '맘에 들어요',
							'아주 좋아요' ];
					$('.print').html(
							'<img src="images/star-lv' +starRate + '.png">'
									+ notice[starRate - 1]);

					/* 	if(starRate == 1){
							$('.print').html('<img src="images/star-lv1.png">' + '별로에요');
						}else if(starRate == 2){
							$('.print').html('<img src="images/star-lv2.png">' + '보통 이에요');
						}else if(starRate == 3){
							$('.print').html('<img src="images/star-lv3.png">' + '그냥 그래요');
						}else if(starRate == 4){
							$('.print').html('<img src="images/star-lv4.png">' + '맘에 들어요');
						}else{
							$('.print').html('<img src="images/star-lv5.png">' + '아주 좋아요');
						} */
				})
	});
</script>
</head>
<body>
	<jsp:include page="/WEB-INF/view/include/header.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/view/include/topbody.jsp"></jsp:include>
	<h2>스타일 후기 작성</h2>
	<div class='asd'>
		<img src="/proj21_shop/images/product.jpg" width="70" height="70">
		<ul>
			<li>라이트웨이트 테이퍼드 밴딩 크롭 슬랙스</li>
			<li>[블랙]</li>
			<li>32</li>
		</ul>
	</div>
	<div class="bsd">
		<div class="star-rating">
			<div class="stars">
				<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
					class="fa fa-star"></i> <i class="fa fa-star"></i> <i
					class="fa fa-star"></i>
			</div>
			<div class="print">별점을 매겨주세요</div>
		</div>
	</div>
	<br>
	<div class="review">
		<textarea id="content" cols="45" rows="10"
			placeholder="상품에 대한 평가를 20자 이상 작성해 주세요"></textarea>
		<br>
		<div class="file">
			<input type="file" id="imgButton" /> <br>
			 <input type="file" id="imgButton" />
		</div>
		<br> <input type="submit" value="등록" id="reviewButton" />
		<jsp:include page="/WEB-INF/view/include/footer.jsp"></jsp:include>
	</div>
</body>
</html>