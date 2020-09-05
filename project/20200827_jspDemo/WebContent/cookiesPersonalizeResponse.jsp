<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>confirmation</title>
</head>
<body>
	<%
		//read form data
		String favLang = request.getParameter("favoriteLanguage");
		//create the cookie
		Cookie theCookie = new Cookie("myApp.favoriteLanguage", favLang);
		//set the life span ... total number of seconds
		theCookie.setMaxAge(60 * 60 * 24);
		//send cookie to browser
		response.addCookie(theCookie);
	%>
	
	thanks! we set your favorite language to : ${param.favoriteLanguage}
	<br/><br/>
	 
	<a href = "cookiesHomepage.jsp">return to homepage</a>
</body>
</html>