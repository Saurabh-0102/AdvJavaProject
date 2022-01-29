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
Flight f = (Flight) sess.getAttribute("fl");
User u = (User) sess.getAttribute("u2");
System.out.println(f.getArrivalCity()+" "+f.getDepartureCity());
pw.println("<h1> User : - "+  u.getName()+"</h1>");
sess.setAttribute("u3", u);
sess.setAttribute("f3", f);
%>

<h1>Available flights in this route</h1>
<h3> Departure : ${flight.departureCity} ${","} Arrival : ${flight.arrivalCity} ${","} time : ${flight.time}</h3>
<form action="PassengerDetails.jsp">
<button type="submit">Book</button>
</form>
</body>
</html>