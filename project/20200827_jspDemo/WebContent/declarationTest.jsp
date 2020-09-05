<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%!//!!!!!!!!! 
		String getUpperLetter(String data){
			return data.toUpperCase();
		}
	%>
	
	<h2>
		use a method to get upper letters is easy
		<br/><br/>
		e.g. hello world
		<br/><br/>
		<%= getUpperLetter("hello world") %>
	</h2>
</body>
</html>