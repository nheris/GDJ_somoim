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
<ul class="list-group list-group-horizontal d-flex justify-content-center">
<li class="px-2" id="totalpage"><a href="./list">전체</a></li>
<li class="px-2" id="notice"><a href="./list">공지</a></li>
<li class="px-2" id="path"><a href="/board/list/notice">패치</a></li>
<li class="px-2" id="etc"><a href="/board/list/notice">기타</a></li>
</ul>
</div>
<script src="/resources/assets/board/kategorie.js"></script>




<!-- 관리자만 보이게 할꺼임 -->
<!--  <li><a href="/board/write/update">글쓰기</a></li>  -->	


</ul>
</div>
<!-- <div class="container mb-4">
<table>
<tr>
<th class="px-2"><button type="button" class="btn btn-outline-dark">패치</button></th>
<th class="px-2"><button type="button" class="btn btn-outline-dark">공지</button></th>
<th class="px-2"><button type="button" class="btn btn-outline-dark">기타</button></th>
</tr>
</table>
</div> -->
<!--  -->
	<div class="container">
		<div class="row row-cols-auto">
			<div class="col">
				<select class="form-select" aria-label="Default select example">
					<option value="1">제목</option>
					<option value="2">작성자</option>
					<option value="3">내용</option>
				</select>
			</div>
			<div class="col"></div>
			<div class="col"></div>
			<div class="col-auto ms-auto mt-2  d-flex">
				<!-- 수정 필요 검색 버튼이 오른쪽으로 가야함-->
				<div class="col-auto">
					<!-- search -->

					<label for="search" class="visually-hidden">Search</label> <input
						type="text" name="search" class="form-control" id="search">
				</div>
				<div class="col-auto">
					<button type="submit" class="btn btn-outline-dark">검색</button>
				</div>

			</div>
		</div>

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
							<td>${dto.boardTitle}</td>
							<td>${dto.boardWriter}</td>
							<td>${dto.boardDate}</td>
						</tr>

				</c:forEach>
			</tbody>

			</tbody>
		</table>
		<div class="col-auto d-flex justify-content-center">
			<div class="col-12 mb-3">
				<nav aria-label="Page navigation example">
					<ul
						class="list-group list-group-horizontal d-flex justify-content-center">
						<c:if test="${!pager.start}">
							<li class="page-item"><a class="page-link"
								href="./list?page=${pager.startNum-1}&search=${pager.search}&searchFind=${pager.searchFind}"
								aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
							</a></li>
						</c:if>

						<c:forEach begin="${pager.startNum}" end="${pager.lastNum}"
							var="i">
							<li class="page-item"><a class="page-link"
								href="./list?page=${i}">${i}</a></li>
						</c:forEach>

						<c:if test="${!pager.last}">
							<li class="page-item"><a class="page-link"
								href="./list?page=${pager.lastNum+1}&search=${pager.search}&searchFind=${pager.searchFind}"
								aria-label="Next"> <span aria-hidden="true">&raquo;</span>
							</a></li>
						</c:if>
					</ul>
				</nav>
			</div>
		</div>
	</div>












	<!-- ========================= JS improt ========================= -->
	
	<c:import url="../temps/footer.jsp"></c:import>
</body>
</html>
