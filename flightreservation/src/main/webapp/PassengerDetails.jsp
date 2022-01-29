<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="com.entity.Flight, com.entity.User , java.io.PrintWriter" %>
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
	User u = (User) sess.getAttribute("u3");
 	Flight f = (Flight) sess.getAttribute("f3");
	out.println("<h4> user : - "+u.getName() +   " , Travelling in : - " + f.getAirlines()  +" </h4>");
%>


<h1>Please Enter Passeger Details</h1>
<form action="passdet.com">
Enter FirstName : <input type"text" name="firstName" /> <br>
Enter LastName : <input type"text" name="lastName" /> <br>
Enter email : <input type"text" name="email" /> <br>
Enter number : <input type"text" name="number" /> <br>
<button>Submit</button>
</form>
</body>
</html>