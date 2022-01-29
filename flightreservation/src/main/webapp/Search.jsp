<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.entity.Flight, com.entity.User" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h3> Welcome : ${user.name} </h3>
<%
HttpSession sess = request.getSession();
User ur = (User) sess.getAttribute("u");
System.out.println(ur.getName());
sess.setAttribute("ur", ur);
%>

<form action="sr.com">
 From : <input type="text" name="dcity" /><br>
 To : <input type="text" name="acity" /><br>
<button type="submit">Search</button>
</form>



<h3><a href="http://localhost:8080/Spring-MVC/Welcome.jsp">Click here</a> to go back to main page</h3>
</body>
</html>