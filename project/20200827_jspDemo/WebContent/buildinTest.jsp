<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp built-in objects</title>
</head>
<body>
	request user agent: <%= request.getHeader("User-Agent") %>
	<br/><br/>
	request language: <%= request.getLocale()%>
</body>
</html>