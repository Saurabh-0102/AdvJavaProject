<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page
	import="com.entity.Flight, com.entity.User , java.io.PrintWriter , java.util.* "%>
<!DOCTYPE html>
<html>

<head>
<title>Paasenger Details</title>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- credits reserved -->
<link rel="logo icon" href="icon.png" type="image-logo icon">

<!-- Popper JS -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</head>

<body>
	<%
	PrintWriter pw = response.getWriter();
	HttpSession sess = request.getSession();
	List<Flight> f = (List<Flight>)  sess.getAttribute("f1");
	//pw.println(f);
	User u = (User) sess.getAttribute("u");
	Integer obj  = (Integer.parseInt(request.getParameter("r")));
	pw.print("<h4> User Name : - "+u.getName().toUpperCase()+"</h4>");
	pw.println("</br>");
	Flight f1 = f.get(obj);
	System.out.println("test");
	System.out.println(f1);
	pw.print("<h3>"+f.get(obj)+"</h3>");
	session.setAttribute("f1", f1);
	/* sess.setAttribute("u4", u);
	sess.setAttribute("u4", f); */
	//out.println("<h4> User : - "+u.getName() +   " | Travelling in : - " + f.getAirlines()  + " | Flight Timing " +  f.getTime()+" </h4>");
	%>
	<%-- <div class="bg-secondary p-2">
		<h4 class="text-center bg-secondary">
			User :
			<%=u.getName()%>
			| Travelling in :
			<%=f.getAirlines()%>
			| Flight Timing
			<%=f.getTime()%>
		</h4>
	</div> --%>
	<div class="container-fluid m-0">
		<div
			class="row bg-success text-white p-xl-2 text-decoration align-items-center justify-content-center fs-1">
			<h3>Enter Passenger Details</h3>
		</div>

		<br />

		<div class="row justify-content-center p-5">
			<form action="passdet.com" onsubmit="return validation()"
				class="col-xl-6 col-sm-3 col-md-4">
				<div class="form-group">
					<label class="font-weight-regular">first Name</label> <input
						type="text" name="firstName" class="form-control" id="emails"
						placeholder="Enter First Name" autocomplete="off" /> <span
						id="emailids" class="text-danger font-weight-regular"> </span>
				</div>
				<div class="form-group">
					<label class="font-weight-regular">Last Name</label> <input
						type="text" name="lastName" class="form-control" id="emails"
						placeholder="Enter Last Name" autocomplete="off" /> <span
						id="emailids" class="text-danger font-weight-regular"> </span>
				</div>

				<div class="form-group">
					<label class="font-weight-regular">Enter Email</label> <input
						type="text" name="email" class="form-control"
						placeholder="Enter Email" autocomplete="off" /> <span
						id="passwords" class="text-danger font-weight-regular"> </span>
				</div>

				<div class="form-group">
					<label class="font-weight-regular">Enter Mobile Number</label> <input
						type="text" name="number" class="form-control"
						placeholder="Enter Mobile Number" autocomplete="off" /> <span
						id="passwords" class="text-danger font-weight-regular"> </span>
				</div>
				<div class="d-flex justify-content-center mt-3">
					<button class=" btn btn-outline-dark w-50">Submit Details</button>
				</div>
				&emsp;&emsp;&emsp;

			</form>
		</div>
	</div>



	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>

</body>

</html>


<%-- <html>
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
</html> --%>