<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:forEach items="${list}" var="dto">
	<tr>
		<td>${dto.boardNum}</td>
		<td><a href="/notice/list?productNum=${dto.boardNum}">${dto.boardTitle}</a></td>
		<td>${dto.boardWriter}</td>
		<td>${dto.boardDate}</td>
	</tr>
</c:forEach>