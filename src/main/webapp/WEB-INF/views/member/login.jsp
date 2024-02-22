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
 <!-- start login section -->
    <section class="login section">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 offset-lg-3 col-md-8 offset-md-2 col-12">
                    <div class="form-head">
                        <h4 class="title">Login</h4>
                        <form action="./login" method="post">
                            <div class="form-group">
                                <label for="userName">Username</label>
                                <input name="userName" value="user1" id="userName" type="text">
                            </div>
                            <div class="form-group">
                                <label for="password">Password</label>
                                <input name="password" value="user1" id="password" type="password">
                            </div>
                            <div class="check-and-pass">
                                <div class="row align-items-center">
                                    <div class="col-lg-6 col-md-6 col-12">
                                        <div class="form-check">
                                            <input type="checkbox" class="form-check-input width-auto"
                                                id="exampleCheck1">
                                            <label class="form-check-label">Remember me</label>
                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-6 col-12">
                                        <a href="javascript:void(0)" class="lost-pass">Lost your password?</a>
                                    </div>
                                </div>
                            </div>
                            <div class="button">
                                <button type="submit" class="btn">Login Now</button>
                            </div>
                            <div class="alt-option">
                                <span>Or</span>
                            </div>
                            <div class="socila-login">
                                <ul>
                                    <li><a href="javascript:void(0)" class="facebook"><i class="lni lni-facebook-original"></i>Login With
                                            Facebook</a></li>
                                    <li><a href="javascript:void(0)" class="google"><i class="lni lni-google"></i>Login With Google
                                            Plus</a>
                                    </li>
                                </ul>
                            </div>
                            <p class="outer-link">Don't have an account? <a href="./join">회원가입</a>
                            </p>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- end login section -->


	<!-- ========================= scroll-top ========================= -->
	<a href="#" class="scroll-top btn-hover"> <i
		class="lni lni-chevron-up"></i>
	</a>

	<!-- ========================= JS improt ========================= -->
	<c:import url="../temps/footer.jsp"></c:import>
</body>

</html>