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
    <!-- start Registration section -->
    <section class="login registration section">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 offset-lg-3 col-md-8 offset-md-2 col-12">
                    <div class="form-head">
                        <h4 class="title">Registration</h4>
                        <form id="frm" action="./join" method="post" enctype="multipart/form-data">
                            <div class="socila-login">
                                <ul>
                                    <li><a href="javascript:void(0)" class="facebook"><i class="lni lni-facebook-original"></i>Import
                                            From Facebook</a></li>
                                    <li><a href="javascript:void(0)" class="google"><i class="lni lni-google"></i>Import From Google
                                            Plus</a>
                                    </li>
                                </ul>
                            </div>
                            <div class="alt-option">
                                <span>Or</span>
                            </div>
                            <div class="form-group">
                                <label for="userName">아이디</label>
                                <input name="userName" id="userName" type="text">
                            </div>
                            <div class="form-group">
                                <label for="password">비밀번호</label>
                                <input name="password" id="password" type="password">
                                <div id="passwordResult"></div>
                            </div>
                            <div class="form-group">
                                <label for="passwordCheck">비밀번호 확인</label>
                                <input id="passwordCheck" type="password">
                                <div id="passwordCheckResult"></div>
                            </div>
                            <div id="passwordCheckReulst"></div>
                            <div class="form-group">
                                <label for="nickName">별명</label>
                                <input name="nickName" id="nickName" type="text">
                            </div>
                            <div class="form-group">
                                <label for="name">이름</label>
                                <input name="name" id="name" type="text">
                            </div>
                            <div class="form-group">
                                <label for="residentNum">주민번호</label>
                                <input name="residentNum" id="residentNum" type="text">
                            </div>
                            <div class="form-group">
                                <label for="address">주소</label>
                                <input name="address" id="address" type="text">
                            </div>
                            <div class="form-group">
                                <label for="phone">전화번호</label>
                                <input name="phone" id="phone" type="text">
                            </div>
                            <div class="form-group">
                                <label for="email">이메일</label>
                                <input name="email" id="email" type="email">
                            </div>
                            <div class="form-group">
                                <label for="attachs">사진첨부</label>
                                <input name="attachs" id="attachs" type="file">
                            </div>


                            <div class="check-and-pass">
                                <div class="row align-items-center">
                                    <div class="col-12">
                                        <div class="form-check">
                                            <input type="checkbox" class="form-check-input width-auto"
                                                id="exampleCheck1">
                                            <label class="form-check-label">개인정보 이용동의</label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="button">
                                <button type="submit" id="btn">Registration</button>
                            </div>
                            <p class="outer-link">Already have an account? <a href="/login"> Login Now</a>
                            </p>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
    	<!-- ========================= JS improt ========================= -->
	<c:import url="../temps/footer.jsp"></c:import>
	<script src="../resources/assets/js/member/joinCheck.js"></script>
	
</body>
</html>