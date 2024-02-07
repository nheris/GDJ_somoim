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
							<div class="item-image mx-3">
								<div class="content">
									<a type="text" class="btn btn-white position-relative">
										<span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-success">${dto.moimRegion}</span>
									</a>
								</div>
								<img src="/resources/upload/moim/${dto.moimFileDTO.fileName}" style="width: 100px; height: 100px; border-radius: 50px;" alt="...">
								<!-- <div class="content"> -->
								<span class="content mx-5">
									<h5 class="title">
										<a href="./detail" id="moimName"
											data-moim-num="${dto.moimNum}">${dto.moimName}</a>
									</h5>
									<span class="moimHead">${dto.moimHead}</span>
								</span>
								<!-- </div> -->
							</div>
						</div>


						<div class="col-lg-2 col-md-2 col-12">
							<p>${dto.moimCategory}</p>
						</div>


						<div class="col-lg-2 col-md-2 col-12">
							<p>${dto.moimMemberDTO.joinDate}</p>
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
									<a href="javascript:void(0)" class="del" data-moim-num="${dto.moimNum}">
									<i class="lni lni-trash del" ></i></a>
								</li>
							</ul>
															
							<form id="frm" action="./update" method="get">
                                   <input type="hidden" name="moimNum" id="moimNumHidden" value="${dto.moimNum}">
                               </form>
						</div>


					</div>
				</div>
			</div>
		</td>
	</tr>
</c:forEach>