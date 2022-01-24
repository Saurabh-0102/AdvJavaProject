<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h2>Welcome to MakeMytrip</h2>
	<form action="searchres" method="post">
	Enter Destination city <input type="text" name="dcity" /><br/>
	Enter Arrival City <input type="text" name="acity" /><br/>
	Enter Date of Journey <input type="date" name="date" />
	<button type="submit">Search</button>
	</form>
</body>
</html>