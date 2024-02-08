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
<!-- 내비게이터 import -->
<c:import url="../temps/header.jsp"></c:import>
<script src="https://js.tosspayments.com/v1/payment-widget"></script>

<style>
.single-table {
	background-color: black;
}
</style>
</head>
<body>
	<section class="dashboard section bg-light">
		<div class="container mx-7">
			<div class="row">
				<!-- Sidebar -->
				<nav id="sidebar"
					class="col-lg-2 col-md-4 col-12 py-3 bg-white dashboard-sidebar"
					style="border-radius: 10px">
					<div class="user-image mb-3">
						<table class="mx-auto text-center" style="width: 90%">
							<tr>
								<td rowspan="3" style="text-align: left;"><img
									src="/resources/assets/images/Yuree.jpg" alt="#" class="m-1"
									style="width: 85%; height: 90%; border-radius: 10px"></td>
								<td rowspan="2" colspan="2">Steve Aldridge</td>
							</tr>
							<tr>

							</tr>
							<tr>
								<td colspan="2"><span><a href="javascript:void(0)">@username</a></span></td>
							</tr>
						</table>
					</div>
					<div class="dashboard-menu mx-auto text-left">
						<ul class="nav flex-column">
							<li class="nav-item"><a class="nav-link active"
								href="profile-settings.html"><i class="lni lni-pencil-alt"></i>
									회원 정보 수정</a></li>
							<li class="nav-item"><a class="nav-link"
								href="my-items.html"><i class="lni lni-bolt-alt"></i> 내
									모임리스트</a></li>
							<li class="nav-item"><a class="nav-link"
								href="favourite-items.html"><i class="lni lni-heart"></i> 찜
									모임 리스트</a></li>
							<li class="nav-item"><a class="nav-link"
								href="messages.html"><i class="lni lni-envelope"></i> 1:1 채팅</a></li>
							<li class="nav-item"><a class="nav-link"
								href="post-item.html"><i class="lni lni-circle-plus"></i>
									문의게시판</a></li>
							<li class="nav-item"><a class="nav-link"
								href="bookmarked-items.html"><i class="lni lni-bookmark"></i>
									공지게시판</a></li>
							<li class="nav-item"><a class="nav-link"
								href="delete-account.html"><i class="lni lni-trash"></i> 구독
									결제 하기</a></li>
						</ul>
						<div class="text-center">
							<button class="btn btn-danger mt-5" href="javascript:void(0)">회원탈퇴</button>
						</div>
					</div>
				</nav>
				<!-- Main content -->
				<div class="col-lg-10 col-md-8 col-12">
					<div class="row pricing-table" style="height: 100%;">
						<div class="container bg-white"
							style="border-radius: 10px; margin-left: 15px;">
							<div class="row">
								<!-- 안에 내용 수정해서 사용하세요 -->
								<div class="col" style="width: 100%;">
									<div class="section-title" style="margin-bottom: 10px">
										<h2 class="wow fadeInUp" data-wow-delay=".4s"
											style="font-size: 22px; padding-bottom: 10px; margin-bottom: 8px; height: 45px">구독
											플랜</h2>
										<p class="wow fadeInUp" data-wow-delay=".6s"
											style="font-size: 12px;">서비스를 구독하고 모임개설을 해보세요!</p>
									</div">

								</div>
							</div>
							<div class="row mb-3">
								<c:forEach var="type" items="${paymentType}" varStatus="loop">
									<div class="col">
										<!-- Single Table -->
										<div class="single-table wow fadeInUp mx-auto"
											data-wow-delay=".${loop.index+2}s" style="width: 285px;">
											<!-- Table Head -->
											<div class="table-head">
												<div class="price">
													<h2 class="amount">
														₩
														<c:set var="formattedPrice" value="${type.pTypePrice}" />
														<fmt:formatNumber value="${formattedPrice}"
															pattern="#,###" />
														<span class="duration" style="font-size: 12px">/
															${type.pTypePer}</span>
													</h2>
												</div>
												<h4 class="title">${type.pTypeName}</h4>
											</div>
											<!-- End Table Head -->
											<!-- Table List -->
											<ul class="table-list">
												<li>기본적인 요금제</li>
												<li>모임개설 가능</li>
												<li>가입가능한 모임 수 증가</li>
												<li><c:choose>
														<c:when test="${paymentType[0].pTypePrice ne type.pTypePrice}">
															<c:set var="perStr" value="${fn:substringBefore(type.pTypePer, '개월')}"/>
															<c:set var="perInt" value="${Integer.parseInt(perStr)}"/>
															<c:set var="discountRate" value="${(1-(type.pTypePrice / (paymentType[0].pTypePrice* perInt))) * 100}" />
															<fmt:formatNumber value="${discountRate}" pattern="#.#"/>%
								                            할인 요금
								                        </c:when>
														<c:otherwise>
								                            할인 없는 기본 요금
								                        </c:otherwise>
													</c:choose></li>
											</ul>
											<!-- End Table List -->
											<!-- Table Bottom -->
											<div class="button">
												<a class="btn paymentBtn" data-type="${type.pTypeNum}">${fn:substringBefore(type.pTypeName, '요금제')}
													구독결제</a>
											</div>
											<!-- End Table Bottom -->
										</div>
										<!-- End Single Table-->
									</div>
								</c:forEach>
							</div>
							<!-- Main content goes here -->
						</div>
					</div>
				</div>
	</section>

	<!-- ========================= scroll-top ========================= -->
	<a href="#" class="scroll-top btn-hover"> <i
		class="lni lni-chevron-up"></i>
	</a>

	<!-- ========================= JS improt ========================= -->
	<c:import url="../temps/footer.jsp"></c:import>
	<script src="/resources/js/payment.js"></script>
</body>
</html>