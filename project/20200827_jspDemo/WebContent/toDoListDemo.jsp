<%@ page import = "java.util.*" %>
<!-- We make use of the List and ArrayList from this package. -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- step1: create html form -->
	<form action = "toDoListDemo.jsp">
		add new item: <input type = "text" name = "theItem">
		<input type = "submit" value = "submit">
	</form>
	
	<!-- step2: add new item to "to do" list -->
	<%
	//get the to do items from the session
	List<String> items = (List<String>) session.getAttribute("myToDoList");
	//if the to do items doesn't exist, then create a new one
	if(items == null){
		items = new ArrayList<String>();
		session.setAttribute("myToDoList", items);
	}
	//see if there is form data to add
	String theItem = request.getParameter("theItem");
	if(theItem != null){
		items.add(theItem);
	}
	%>
	<!-- step3: display all "to do" item from session -->
	<hr>
	<b>to do list items:</b> <br/><br/>
	<ol>
	<%
		for(String temp : items){
			out.println("<li>" + temp + "</Li>");
		}
	%>
	</ol>
</body>
</html>