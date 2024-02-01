<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>내 모임 리스트</h1>
	
		<form>
		<div>
			<table borded=1>
                <tr>
                    <th>모임명</th>
                    <th>모임장</th>

                </tr>
                <tr>
                    <td>${list.moimName}</td>
                    <td>${list.moimHead}</td>
                </tr>
			</table>
			
		
		</div>
	
	</form>
</body>
</html>