<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<html>
<head>
<style>
@media ( min-width : 767.98px) {
	.card {
		margin-left: 300px;
		margin-right: 50px;
	}
}
</style>
<script src="${contextPath}/resources/admin/assets/libs/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap tether Core JavaScript -->
<script src="${contextPath}/resources/admin/assets/libs/popper.js/dist/umd/popper.min.js"></script>
<script src="${contextPath}/resources/admin/assets/libs/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="${contextPath}/resources/admin/assets/libs/perfect-scrollbar/dist/perfect-scrollbar.jquery.min.js"></script>
<script src="${contextPath}/resources/admin/assets/extra-libs/sparkline/sparkline.js"></script>
<!--Wave Effects -->
<script src="${contextPath}/resources/admin/dist/js/waves.js"></script>
<!--Menu sidebar -->
<script src="${contextPath}/resources/admin/dist/js/sidebarmenu.js"></script>
<!--Custom JavaScript -->
<script src="${contextPath}/resources/admin/dist/js/custom.min.js"></script>
<!--This page JavaScript -->
<!-- <script src="dist/js/pages/dashboards/dashboard1.js"></script> -->
<!-- Charts js Files -->
<script src="${contextPath}/resources/admin/assets/libs/flot/excanvas.js"></script>
<script src="${contextPath}/resources/admin/assets/libs/flot/jquery.flot.js"></script>
<script src="${contextPath}/resources/admin/assets/libs/flot/jquery.flot.pie.js"></script>
<script src="${contextPath}/resources/admin/assets/libs/flot/jquery.flot.time.js"></script>
<script src="${contextPath}/resources/admin/assets/libs/flot/jquery.flot.stack.js"></script>
<script src="${contextPath}/resources/admin/assets/libs/flot/jquery.flot.crosshair.js"></script>
<script src="${contextPath}/resources/admin/assets/libs/flot.tooltip/js/jquery.flot.tooltip.min.js"></script>
<script src="${contextPath}/resources/admin/dist/js/pages/chart/chart-page-init.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>??? ?????? ??????</title>
<style>
table {
	min-width: 100%;
	margin-top: 5%;
	/* margin-left: 20%; */
}

td {
	min-width: 150px;
	margin-bottom: 10px;
}

select {
	width: 298px; /* ????????? ???????????? */
	padding: .4em .3em; /* ???????????? ?????? ?????? */
	font-family: inherit; /* ?????? ?????? */
	background:
		url(https://farm1.staticflickr.com/379/19928272501_4ef877c265_t.jpg)
		no-repeat 95% 50%; /* ???????????? ????????? ?????? */
	border: 1px solid #999;
	border-radius: 0px; /* iOS ??????????????? ?????? */
	-webkit-appearance: none; /* ???????????? ?????? ????????? */
	-moz-appearance: none;
	appearance: none;
}

input {
	padding: .4em .3em;
	border: 1px solid #999;
	border-radius: 0px;
}

.b {
	min-width: 150px;
}
/* table{
width:150%;
margin-top:5%;
} */
/* @media screen and (max-width: 700px) { table{}
 } }
 @media screen and (max-width: 900px) { td 
{ width:100%;
 } }
 */
</style>
</head>
<script>
	function readURL(input, id) {
		if (input.files && input.files[0]) {
			var reader = new FileReader();
			reader.onload = function(e) {
				if (id == 'main') {
					$('#preview').attr('src', e.target.result);
				} else {
					$("#preview" + id).attr('src', e.target.result);
				}
			}

			reader.readAsDataURL(input.files[0]);
		}
	}
	var cnt = 1;
	function fn_addFile() {
	var state = cnt+1;

		$("#detail_list").append(
				"?????????????????? " + cnt + " : <input type='file' name= "+ state +" id='" + cnt + "' onchange='readURL(this,this.id);' />" + "<br>");
		if (cnt % 2 != 0) {
			$("#image_list").append("<img src='#' width=200 height=200 id='preview"+cnt+"'> <br>");
		} else {
			$("#image_list").append("<img src='#' width=200 height=200 id='preview"+cnt+"'>");
		}
		cnt++;
	}

	function backToList(obj) {
		obj.action = "${contextPath}/admin/product/listProducts";
		obj.submit();
	}
	

	/* pro_category_detail */
</script>
<script type="text/javascript">
$(function(){
	
	$("#proNum").on("click",function(){
		var category = $('#proCategory').val()+ $('#proColor').val()+ $('#proSize').val()
		$('#proNum').val(category)
	})	
})
</script>
<body>
	<div class="container-fluid">

		<div class="row">
			<!-- column -->
			<div class="col-12">
				<div class="card">

					<!--membersList  -->
					<form action="${contextPath }/admin/product/addNewProduct" method="post" enctype="multipart/form-data" id="frm_register" >
						<center>
							<br>
							<br>
							<center>
								<h2>??? ?????? ?????????</h2>
							</center>
							<table style="min-width: 50%;">
								<tr>
									<td>?????? ????????????</td>
									<td>
										<select name="proCategory" id="proCategory" >
												<option value="1">??????</option>
												<option value="2">??????</option>
												<option value="3">????????????</option>
												<option value="4">??????</option>
												<option value="5">??????</option>
												<option value="6">????????????</option>
										</select>
									</td>
								</tr>
								<tr>
									<td>?????? ??????</td>
									<td class="b">
									<input type="text" name="proName" size="39" />
									</td>
								</tr>
								<tr>
									<td>?????? ??????</td>
									<td class="b"><select name="proStatus">
											<option value="??????" selected>??????</option>
											<option value="??????">??????</option>
											<option value="??????">??????</option>
											<option value="??????">??????</option>
											<option value="??????">??????</option>
									</select></td>
								</tr>
								<tr>
									<td>?????? ??????</td>
									<td class="b"><input type="text" name="proPrice" id="proPrice" size="39"/></td>
								</tr>
								<tr>
									<td>?????? ?????????</td>
									<td class="b"><input type="text" name="proSalesrate" id="proSalesrate" size="39"/> %</td>
								</tr>

								<tr>
									<td>?????? ??????</td>
									<td class="b"><select name="proColor" id="proColor">
											<!-- ???????????? ??????????????? -->
											<option value="01" selected>?????????</option>
											<option value="02">????????????</option>
											<option value="03">?????????</option>
											<option value="04">??????</option>
											<option value="05">?????????</option>
											<option value="06">??????</option>
											<option value="07">??????</option>
											<option value="08">??????</option>
											<option value="09">?????????</option>
											<option value="11">??????</option>
											<option value="12">?????????</option>
											<option value="13">?????????</option>
											<option value="14">??????</option>
											<option value="15">??????</option>
											<option value="16">?????????</option>
									</select></td>
								</tr>
								<tr>
									<td>?????? ?????????</td>
									<td class="b"><select name="proSize" id="proSize" >
											<option value="1">XS</option>
											<option value="2">S</option>
											<option value="3" selected>M</option>
											<option value="4">L</option>
											<option value="5">XL</option>

									</select></td>



								</tr>

								<tr>
									<td>?????? ??????</td>
									<td class="b">
										<input type="text" name="proQuantity" size="39" /> ???
									</td>
								</tr>

								<tr>
									<td>?????? ??????</td>
									<td class="b"><textarea rows="8" cols="39" name="proContent" ></textarea></td>
								</tr>
								<tr>
									<td>?????? ????????? ??????</td>
									<td class="b">
									<input type="file" value="?????? ????????? ??????" id="main" name="1" onchange="readURL(this,this.id);" />
									<input type="button" value="????????? ????????? ??????" onClick="fn_addFile()" />
									</td>
								</tr>
								<tr>
									<td>?????? ????????? ??????</td>
									<td colspan="2">
										<div id="detail_list"></div>
										<div id="image_list">
											<img id="preview" src="#" width=200 height=200 />
										</div>

									</td>
								</tr>
								<tr>
									<td>?????? ??????</td>
									<td class="b"><input type="text" id="proNum" name="proNum" size="39" readonly="readonly" placeholder="???????????? ?????? ?????? ??????" /></td>
								</tr>
								<tr>
									<td colspan="4">
									<input type="submit" class = "register" value="?????? ????????????" />
									<input type="button" value="??????????????? ????????????" onClick="backToList(this.form)" />
									</td>
								</tr>
							</table>
						</center>
					</form>

					<!-- </div> -->
				</div>
			</div>
		</div>
	</div>
</body>
</html>