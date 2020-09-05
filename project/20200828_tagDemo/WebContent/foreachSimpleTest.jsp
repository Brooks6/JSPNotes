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
	<%
		//just create some sample data ... normally provided by MVC
		String[] cities = {"china", "usa", "uk"};
		pageContext.setAttribute("myCities", cities);
	%>
	<c:forEach var = "tempCity" items = "${myCities}">
		${tempCity} 
		<br/><br/>
	</c:forEach>
</body>
</html>