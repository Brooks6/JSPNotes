<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>student confirmation title</title>
</head>
<body>
	the student is confirmed: ${param.firstname} ${param.lastname} 
	<br/><br/>
	<%
	String[] langs = request.getParameterValues("favoriteLanguage");
	for(int i = 0; i < langs.length; i++){
		out.print("<li>" + langs[i] + " ");
	}
	%>
</body>
</html>