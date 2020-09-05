<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page import = "java.util.*, com.au.usyd.brooks.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	//just create some sample data ... normally provided by MVC
	List<Student> data = new ArrayList<>();
	data.add(new Student("brooks", "liu", true));
	data.add(new Student("eden", "xu", false));
	data.add(new Student("bruce", "yu", false));
	
	pageContext.setAttribute("myStudent", data);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border = "2">
	
	<tr>
		<th>first name</th>
		<th>last name</th>
		<th>gold customer</th>
	</tr>
	
	<c:forEach var = "tempStudent" items = "${myStudent}">
		<tr>
			<td>${tempStudent.getFirstName()} </td>
			<td>${tempStudent.lastName} </td>
			<td>
				<c:if test = "${tempStudent.goldCustomer}">
					Special discount
				</c:if>
				<c:if test = "${not tempStudent.goldCustomer}">
					general price
				</c:if>
			</td>
		</tr>
		<br/><br/>
	</c:forEach>
	</table>
</body>
</html>