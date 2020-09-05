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
		//the default ... if there are no cookies
		String favLang = "java";
		//get the cookies from the browser request
		Cookie[] theCookies = request.getCookies();
		//find our favorite language cookie
		if(theCookies != null){
			for(Cookie temp : theCookies){
				if(temp.getName().equals("myApp.favoriteLanguage")){
					favLang = temp.getValue();
					break;
				}
			}
		}
	%>
	
	<!-- now show a personalized page ... use the "favLang" variable-->
	<h4>new books for <%= favLang %></h4>
	<ul>
		<li>balabala</li>
		<li>balabala</li>
	</ul>
	
	<h4>latest news for <%= favLang %></h4>
	<ul>
		<li>balabala</li>
		<li>balabala</li>
	</ul>
	
	<h4>hot jobs for <%= favLang %></h4>
	<ul>
		<li>balabala</li>
		<li>balabala</li>
	</ul>
	<hr>
	<a href = "cookiesPersonalizeForm.html">Personalize this page</a>
	
</body>
</html>