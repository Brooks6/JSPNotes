<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt" prefix = "fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<c:set var = "theLocale" value = "${not empty param.theLocale? param.theLocale: pageContext.request.locale }" scope = "session"></c:set>

<fmt:setLocale value = "${theLocale }"></fmt:setLocale>
<fmt:setBundle basename = "com.au.usyd.brooks.i18n.resources.myLabels"></fmt:setBundle>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<a href = "i18nMessagesTest.jsp?theLocale=en_US">English (US)</a>
	<a href = "i18nMessagesTest.jsp?theLocale=es_ES">Spanish (ES)</a>
	<a href = "i18nMessagesTest.jsp?theLocale=zh_CN">Chinese (CN)</a>
	<br/><br/>
	<hr/>
	<fmt:message key = "label.greeting"></fmt:message><br/><br/>
	<fmt:message key = "label.firstname"></fmt:message><i>brooks</i><br/><br/>
	<fmt:message key = "label.lastname"></fmt:message><i>liu</i><br/><br/>
	<fmt:message key = "label.welcome"></fmt:message><br/><br/>
	<br/>
	selected locale : ${theLocale }
	
</body>
</html>