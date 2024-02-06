<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:forEach items="${list}" var="dto">
	<tr>
		<td>
			<div class="card-body">
				<div class="single-item-list">
					<div class="row align-items-center">
						<div class="col-lg-5 col-md-5 col-12">
							<div class="item-image">
								<img src="assets/images/my-items/my-item1.png" alt="#">
								<div class="content">
									<h5 class="title">
										<a href="javascript:void(0)" id="moimname"
											data-moim-num="${dto.moimNum}">${dto.moimName}</a>
									</h5>
									<span class="moimHead"> 모임장 ${dto.moimHead}</span>
								</div>
							</div>
						</div>


						<div class="col-lg-2 col-md-2 col-12">
							<p>멤버수</p>
						</div>


						<div class="col-lg-2 col-md-2 col-12">
							<p>가입일? 개설일?</p>
						</div>


						<div class="col-lg-3 col-md-3 col-12 align-right">
							<ul class="action-btn">
								<li>
									<a href="javascript:void(0)">
									<i class="lni lni-pencil"></i></a>
								</li>
								<li>
									<a href="javascript:void(0)">
									<i class="lni lni-eye"></i></a>
								</li>
								<li>
									<a href="javascript:void(0)" id="deleteBtn" class="del" data-moim-num="${dto.moimNum}">
									<i class="lni lni-trash"></i></a>
								</li>
							</ul>
						</div>


					</div>
				</div>
			</div>
		</td>
	</tr>
</c:forEach>