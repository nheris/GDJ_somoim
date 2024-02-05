<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
</head>

<body>
	<!-- 내비게이터 import -->
	<c:import url="../temps/header.jsp"></c:import>

	<!-- ========================= scroll-top ========================= -->
	<a href="#" class="scroll-top btn-hover"> <i
		class="lni lni-chevron-up"></i>
	</a>

	<div class="d-grid gap-3 mb-2">
		<div class="p-5"></div>
		<div class="p-3 mx-auto">
			<h3>${board}</h3>
		</div>
	</div>
	<!--  -->


	<div class="container mb-4">
		<ul
			class="nav nav-pills list-group-horizontal d-flex justify-content-center">
			<li class="nav-item px-2"><a class="nav-link active" href="/">전체</a>
			</li>
			<li class="nav-item px-2"><a class="nav-link" href="./list">공지</a>
			</li>
			<li class="nav-item px-2"><a class="nav-link" href="#">패치</a></li>
			<li class="nav-item px-2"><a class="nav-link" href="#">기타</a></li>
		</ul>
	</div>

	<!--  -->
	<div class="container">


	<table class="table">
		<thead>
			<tr>
				<th scope="col">글번호</th>
				<th scope="col">제목</th>
				<th scope="col">작성자</th>
				<th scope="col">작성날짜</th>
			</tr>
		</thead>
		<tbody>

			<c:forEach items="${list}" var="dto">
				<c:set var="f" value="0"></c:set>
				<tr>
					<td>${dto.boardNum}</td>
					<td>{dto.boardNum}"></td>
					<td>${dto.boardWriter}</td>
					<td>${dto.boardDate}</td>
				</tr>

			</c:forEach>
		</tbody>

		</tbody>
	</table>
	</div>


	<!-- ========================= JS improt ========================= -->

	<c:import url="../temps/footer.jsp"></c:import>
</body>
</html>
