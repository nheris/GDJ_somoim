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
<c:import url="../../temps/head_css.jsp"></c:import>
<!-- 내비게이터 import -->
<c:import url="../../temps/header.jsp"></c:import>

<script type="text/javascript" src="https://oapi.map.naver.com/openapi/v3/maps.js?ncpClientId=s6s3pnbbrh"></script>
</head>
<body>
	<!-- 모임 홈 헤더 -->
	<div class="breadcrumbs">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-lg-6 col-md-6 col-12">
					<div class="breadcrumbs-content">
						<h1 class="page-title">${dto.moimName}</h1>
					</div>
				</div>
				<div class="col-lg-6 col-md-6 col-12">
					<ul class="nav justify-content-end">
						<li class="nav-item"><a class="nav-link" href="./home?moimNum=${moimDTO.moimNum}"
							style="color: white">Home</a></li>
						<li class="nav-item"><a class="nav-link" href="./board/list?moimNum=${moimDTO.moimNum}"
							style="color: white;">게시판</a></li>
						<li class="nav-item"><a class="nav-link" href="./together?moimNum=${moimDTO.moimNum}"
							style="color: white; font-weight: bold;">정모</a></li>
						<li class="nav-item"><a class="nav-link" href="#"
							style="color: white">채팅</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	

    <section class="items-grid section custom-padding pt-5">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section-title">
                        <h2 class="wow fadeInUp" data-wow-delay=".4s" style="visibility: visible; animation-delay: 0.4s; animation-name: fadeInUp;">정모</h2>
                        <p class="wow fadeInUp" data-wow-delay=".6s" style="visibility: visible; animation-delay: 0.6s; animation-name: fadeInUp;">정모에 참여해 보세요!</p>
                    </div>
                </div>
            </div>
            <div class="single-head">
                <div class="row" id="listBody">
                    <c:forEach items="${list}" var="dto">
                        <!-- Start Single Grid -->
                        <div class="col-lg-4 col-md-6 col-12">
                            <div class="single-grid wow fadeInUp" data-wow-delay=".2s" style="visibility: visible; animation-delay: 0.2s; animation-name: fadeInUp;">
                                <div class="image">
                                    <a href="item-details.html" class="thumbnail"><img src="/resources/upload/meet/${dto.meetFileDTO.fileName}" alt="#"></a>
                                    
                                    <p class="item-position"><i class="lni lni-bolt"></i> 모집 중</p>
                                </div>
                                <div class="content">
                                    <div class="top-content">
                                        <a href="javascript:void(0)" class="tag" data-meet-num="${dto.meetNum}" data-moim-num="${dto.moimNum}"><i class="lni lni-pencil update"></i></a>
                                        <a href="javascript:void(0)" class="tag" data-meet-num="${dto.meetNum}" data-moim-num="${dto.moimNum}"><i class="lni lni-trash del" ></i></a>
                                        
                                        <h3 class="title">
                                            <a href="item-details.html">${dto.meetName}</a>
                                        </h3>
                                        <p class="update-time">모집 인원 : ${dto.meetCount}</p>
                                        <p class="update-time">참가비 : ${dto.meetCost}</p>
                                        <ul class="info-list">
                                 
                                            <li><a href="javascript:void(0)"><i class="lni lni-timer"></i>${dto.meetDate}</a></li>
                                            
                                        </ul>
                                        <ul class="rating">
                                            <li><a href="javascript:void(0)"><i class="lni lni-map-marker"></i>${dto.meetPlace}</a></li>
                                            
                                            
                                     

                                            <!-- 클릭 시 지도 보이게 -->
                                            <!-- Button trigger modal -->
                                            <a class="btn btn-light meetXY" data-bs-toggle="modal" data-bs-target="#exampleModal" data-meet-x="${dto.meetX}" data-meet-y="${dto.meetY}">
                                            	<%-- <input type="hidden" name="meetX" class="meetX" value="${dto.meetX}">
                                           		<input type="hidden" name="meetY" class="meetY" value="${dto.meetY}"> --%>
                                                위치 확인
                                            </a>
                                            
                                            <!-- Modal -->
                                            <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                                <div class="modal-dialog">
                                                <div class="modal-content" style="width:800px;">
                                                    <div class="modal-header">
                                                    <h1 class="modal-title fs-5" id="exampleModalLabel">위치 확인</h1>
                                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                    </div>
                                                    <div class="modal-body">
                                                        <div id="map" style="width:765px;height:400px;"></div>
                                                    </div>
                                                </div>
                                                </div>
                                            </div>


                                            
                                        </ul>
                                    </div>
                                    <div class="bottom-content">
                                        <p class="price">참여 인원 : <span>/${dto.meetCount}</span></p>
                                        <a href="javascript:void(0)" class="like">참여</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- End Single Grid -->
                    </c:forEach>
                    
                </div>

                <!-- 정모 생성 -->
                <div class="row mt-5">
                    <div class="button text-center">
						<a href="./add?moimNum=${moimDTO.moimNum}" class="btn my-3" id="addBtn">정모 만들기</a>
					</div>
                </div>


            </div>
        </div>
    </section>



	


	<!-- ========================= scroll-top ========================= -->
	<a href="#" class="scroll-top btn-hover"> <i
		class="lni lni-chevron-up"></i>
	</a>

	<!-- ========================= JS improt ========================= -->
	<c:import url="../../temps/footer.jsp"></c:import>
    <script src="/resources/js/moim/together.js"></script>
</body>

</html>