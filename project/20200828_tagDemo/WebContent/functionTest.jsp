<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:set var = "data" value = "brooks" />
		length of the string <b>${data}</b> : ${fn:length(data)}
		<br/><br/>
		uppercase version of the string <b>${data }</b>: ${fn:toUpperCase(data)}
		<br/><br/>
		does the string <b>${data }</b> start with <b>br</b>?: ${fn:startsWith(data, "br") }
</body>
</html>