<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ page
	import="com.entity.Flight, com.entity.User , java.io.PrintWriter , java.util.* "%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
			PrintWriter pw = response.getWriter();
		HttpSession sess = request.getSession();
		List<Flight> f = (List<Flight>) sess.getAttribute("flight");
		for (Flight f2 : f) {
		%>
			<h3> <%= f2 %> </h3>
		<%
			}
		%>
		
		<h3><a href="http://localhost:8080/Spring-MVC/admin.jsp">click here</a> to go back to admin page</h3>
</body>
</html>