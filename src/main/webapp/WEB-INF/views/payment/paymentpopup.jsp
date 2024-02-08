<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8" />
<meta http-equiv="x-ua-compatible" content="ie=edge" />
<title>Somoim</title>
<meta name="description" content="" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<!-- CSS 임포트 -->
<c:import url="../temps/head_css.jsp"></c:import>
<style>
body {
	position: relative;
	-webkit-text-size-adjust: none;
}
.btn:hover{
	background-color: #F2F2F2;
}
</style>
</head>

<body>
	<div class="container" style="width: 425px; margin: 0px; padding: 0px;">
		<div class="row mx-auto" style="background-color: white; width: 95%;">
			<div class="col-3 my-3 text-center">
				<image src="/resources/assets/images/logo/logo.png"
					style="width: 100%; height: 30px" />
			</div>
			<div class="col my-3 text-center">
				<h4 style="color: #737373">결제하기</h4>
			</div>
			<div class="col-3 my-3 text-center">
				<svg width="26" height="26" viewBox="0 0 24 24" fill="none"
					xmlns="http://www.w3.org/2000/svg">
					<path fill-rule="evenodd" clip-rule="evenodd"
						d="M4.36375 4.3637C4.01228 4.71517 4.01228 5.28502 4.36375 5.63649L18.3638 19.6365C18.7152 19.988 19.2851 19.988 19.6365 19.6365C19.988 19.285 19.988 18.7152 19.6365 18.3637L5.63654 4.3637C5.28507 4.01223 4.71522 4.01223 4.36375 4.3637Z"
						fill="#1E1E23"></path>
					<path fill-rule="evenodd" clip-rule="evenodd"
						d="M19.6365 4.3637C19.988 4.71517 19.988 5.28502 19.6365 5.63649L5.63649 19.6365C5.28502 19.988 4.71517 19.988 4.3637 19.6365C4.01223 19.285 4.01223 18.7152 4.3637 18.3637L18.3637 4.3637C18.7152 4.01223 19.285 4.01223 19.6365 4.3637Z"
						fill="#1E1E23"></path></svg>
			</div>
		</div>
		<div
			style="background-color: #F7F7F7; padding: 8px; width: 97%; height: 265px;">
			<div class="row mx-auto p-1"
				style="background-color: white; padding: 0px; margin-bottom: 3px;">
				<div class="col-10">
					<span style="font-weight: bolder;">결제상품</span>
				</div>
				<div class="col-2" style="text-align: right;">
					<svg xmlns="http://www.w3.org/2000/svg" width="16" height="9"
						viewBox="0 0 16 9" fill="none">
					<path d="M14.947 9 16 7.953 8 0 0 7.953 1.053 9 8 2.093 14.947 9z"
							fill="#A2A4A8"></path></svg>
				</div>
			</div>
			<div class="row mx-auto p-1"
				style="background-color: white; margin-bottom: 0px;">
				<div class="col-3">
					<img alt="" src="/resources/image/payment/product.png" style="width: 70px; height: 70px; margin: 5px">
				</div>
				<div class="col-9 d-flex flex-column justify-content-end">
					<ul class="mb-2">
						<li><span>${type.pTypeName}</span></li>
						<li><span style="color: lightskyblue"> <c:set
									var="formattedPrice" value="${type.pTypePrice}" /> <fmt:formatNumber
									value="${formattedPrice}" pattern="#,###" />원
						</span></li>
					</ul>
				</div>
			</div>
			<div class="row mx-auto p-1 mb-2" style="background-color: #BDBDBD">
				<div class="col-3">
					<span style="color: black; margin-inline: 5px">상품금액</span>
				</div>
				<div class="col" style="text-align: right;">
					<span style="font-weight: bold"><fmt:formatNumber
							value="${formattedPrice}" pattern="#,###" />원</span>
				</div>
			</div>
			<div class="row mx-auto p-1 mb-2" style="background-color: white;">
				<div class="col">
					<span style="color: black; margin-inline: 5px">정기결제로 진행되는 것에 동의 합니다.</span>
				</div>
				<div class="col-1" style="text-align: right; margin-right: 5px;">
					<input id="agreement" type="checkbox"/>				
				</div>
			</div>
			<div style="background-color: white; padding: 0px;">
					<button id="payment" class="btn" style="width: 100%" type="button">결제하기</button>
			</div>
		</div>
	</div>

	<script src="/resources/assets/js/bootstrap.min.js"></script>
	<script src="/resources/assets/js/wow.min.js"></script>
	<script src="/resources/assets/js/tiny-slider.js"></script>
	<script src="/resources/assets/js/glightbox.min.js"></script>
	<script src="https://cdn.iamport.kr/v1/iamport.js"></script>
	<script src="/resources/js/payment.js"></script>
	<script>
		let payment = document.getElementById("payment");
		
		payment.addEventListener("click", function() {
			window.parent.postMessage("paymentSelect", "*");
			window.close();
		});
	
	</script>
</body>

</html>