<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<c:forEach items="${data}" var="r">
	<tr>
		<td>${r.userName}</td>
		<td>${r.boardReplyText}</td>
		<td>${r.boardReplyDate}</td>
	</tr>
</c:forEach>
<!-- pager -->
<tr>
    <td row="1" colspan="4" style="border-bottom: hidden">
        <div>
            <ul
                class="list-group list-group-horizontal d-flex justify-content-center"
            >
                <c:if test="${!pager.start}">
                    <li class="page-item">
                        <a class="page-link" aria-label="Previous">
                            <span aria-hidden="true">&laquo;</span>
                        </a>
                    </li>
                </c:if>

                <c:forEach
                    begin="${pager.startNum}"
                    end="${pager.lastNum}"
                    var="i"
                >
                    <li class="page-item">
                        <a data-pageNum="${i}" class="page-link">${i}</a>
                    </li>
                </c:forEach>

                <c:if test="${!pager.last}">
                    <li class="page-item">
                        <a class="page-link" aria-label="Next">
                            <span aria-hidden="true">&raquo;</span>
                        </a>
                    </li>
                </c:if>
            </ul>
        </div>
    </td>
</tr>
