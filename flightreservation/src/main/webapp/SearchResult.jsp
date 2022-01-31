<%@page import="com.entity.User"%>
<%@page import="com.entity.Flight"%>
<%@page import="java.util.List"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SelectFlights</title>
</head>
<body>
	<form action="PassengerDetails.jsp">
		<h1>Available flights in this route</h1>
		<%
			PrintWriter pw = response.getWriter();
		HttpSession sess = request.getSession();
		List<Flight> f = (List<Flight>) sess.getAttribute("fl");
		User u = (User) sess.getAttribute("u");
		pw.println("<h1 class='text-center'> User : - " + u.getName().toUpperCase() + "</h1>");
		sess.setAttribute("u", u);
		sess.setAttribute("f1", f);
		int no = 0;
		for (Flight f2 : f) {
		%>
		<div ><h3 class="text-center">
			<lable> <input type="radio" name="r" value=<%=no++%>><%=f2%>
			</lable>
			<br></h3>
		</div>
		<%
			}
		%>
		<button type="submit">Book</button>
	</form>
</body>
</html>