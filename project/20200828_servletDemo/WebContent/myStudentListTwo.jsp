<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border = 1>
		<c:forEach var = "tempStudent" items = "${myStudents }">
			<tr>
				<th>${tempStudent.firstName } </th>
				<th>${tempStudent.lastName } </th>
				<th>${tempStudent.email }</th>
			</tr>
		</c:forEach>
	</table>
</body>
</html>