<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core"%>
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
        <a href="#" class="scroll-top btn-hover">
            <i class="lni lni-chevron-up"></i>
        </a>

        <div class="d-grid gap-3 mb-2">
            <div class="p-5"></div>
            <div class="p-3 mx-auto">
                <h3>${board}</h3>
            </div>
        </div>
        <!--  -->

        <div class="container mb-4" name="categorySelect">
            <ul
                class="nav nav-pills list-group-horizontal d-flex justify-content-center"
                name="categorySelect"
            >
                <li class="nav-item px-2">
                    <a
                        class="nav-link BOARDCATEGORY"
                        href="/notice/list"
                        data-category="all"
                        >전체</a
                    >
                </li>
                <li class="nav-item px-2" name="category0" id="category0">
                    <a
                        class="nav-link BOARDCATEGORY"
                        href="/notice/list"
                        data-category="category0"
                        >공지</a
                    >
                </li>
                <li class="nav-item px-2" name="category1" id="category1">
                    <a
                        class="nav-link BOARDCATEGORY"
                        href="/notice/list"
                        data-category="category1"
                        >패치</a
                    >
                </li>
                <li class="nav-item px-2" name="category2" id="category2">
                    <a
                        class="nav-link BOARDCATEGORY"
                        href="/notice/list"
                        data-category="category2"
                        >기타</a
                    >
                </li>
            </ul>
        </div>

        <!--  -->
        <div class="container">
            <div class="card overflow-hidden shadow rounded-4 border-0 mb-5">
                <div class="card-body p-0">
                    <div class="d-flex align-items-center">
                        <div class="p-5">
                            <h2 class="fw-bolder">${detail.boardTitle}</h2>
                            <div>${detail.boardText}</div>

                            <div>
                                <c:forEach items="${detail.fileDTOs}" var="f">
                                    <a
                                        href="../resources/upload/notice/${f.fileName}"
                                        >${f.oriName}</a
                                    >
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div>
                <%--
                <c:if test="${detail.boardWriter eq member.userName}">
                    --%>
                    <a id="update" class="btn btn-outline-dark mb-3" href="#"
                        >Update</a
                    >
                    <a id="delete" class="btn btn-outline-dark mb-3" href="#"
                        >Delete</a
                    >
                    <%--
                </c:if>
                --%>
                <form id="frm" action="./update" method="get">
                    <input
                        type="hidden"
                        name="boardNum"
                        value="${detail.boardNum}"
                    />
                </form>
            </div>
        </div>
        <!-- ========================= JS improt ========================= -->
        <script src="/resources/js/board/boardDetail.js"></script>
        <c:import url="../temps/footer.jsp"></c:import>
    </body>
</html>
