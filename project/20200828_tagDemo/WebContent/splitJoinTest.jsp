<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<%@ page import = "java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:set var = "cities" value = "china,usa,uk"></c:set>
	<h3>split demo</h3>
	<c:set var = "splitResult" value = "${fn:split(cities, ',')}"/>
	
	<c:forEach var = "temp" items = "${splitResult}">
		${temp}<br/>
	</c:forEach>
	<hr/>
	<h3>join deomo</h3>
	<c:set var = "joinResult" value = "${fn:join(splitResult, '&')}"/>
	${joinResult }
	<br/>
</body>
</html>