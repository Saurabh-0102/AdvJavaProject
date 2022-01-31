<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page
	import="com.entity.Flight, com.entity.User , java.io.PrintWriter"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Home</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>

<body>

	<%
	HttpSession sess = request.getSession();
	User ur = (User) sess.getAttribute("u");
	Flight f = (Flight) sess.getAttribute("f1");
	//sess.setAttribute("u4", u);
	//sess.setAttribute("u4", f);
	//out.println("<h4> User : - "+u.getName() +   " | Travelling in : - " + f.getAirlines()  + " | Flight Timing " +  f.getTime()+" </h4>");
	%>
	<div class="bg-secondary p-2">
		<h4 class="text-center bg-secondary">
			User : - 
			<%=ur.getName().toUpperCase()%>
			| Travelling in :
			<%=f.getAirlines()%>
			| Flight Timing
			<%=f.getTime()%>
		</h4>
	</div>


	<!-- <div>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="#">Navbar</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                    </li>
                    
                </ul>
            </div>
        </nav>
    </div> -->


	<div class="container-fluid ">

		<div
			class="row bg-success text-white p-xl-2 text-decoration align-items-center justify-content-center fs-1">
			<h4>Enter Card Details</h4>
		</div>
		<br />

		<div class="container-fluid ">
			<div class="row justify-content-center ">
				<form action="carddet.com" onsubmit="return validation()"
					class="col-xl-6 col-sm-3 col-md-4">

					<div class="form-group">
						<label class="font-weight-regular">Card Number</label> <input
							type="text" name="cardNumber" class="form-control" id="emails"
							placeholder="Enter Card Number here" autocomplete="off" /> <span
							id="emailids" class="text-danger font-weight-regular"> </span>
					</div>

					<div class="form-group">
						<label class="font-weight-regular"> Name </label> <input
							type="text" name="name" class="form-control" id="name"
							autocomplete="off" placeholder="Enter your Name here" />
						<!-- autocomplete? -->
						<span id="Name" class="text-danger font-weight-regular"> </span>
					</div>

					<div class="form-group">
						<label class="font-weight-regular">Exp Date</label> <input
							type="text" name="date" class="form-control"
							placeholder="Enter Date of Journey" autocomplete="off" /> <span
							id="passwords" class="text-danger font-weight-regular"> </span>
					</div>


					<div class="form-group mb-lg-3 mb-md-3 ">
						<label class="font-weight-regular">Enter CVV</label> <input
							type="number" name="cvv" class="form-control" id="mobileNumber"
							autocomplete="off" placeholder="mobile number" /> <span
							id="mobileno" class="text-danger font-weight-regular"> </span>
					</div>
					<hr>

					<div class="d-flex justify-content-center">
						<button
							class="d-flex justify-content-center btn btn-outline-primary w-50 me-5"
							type="submit">Pay</button>
					</div>

				</form>
			</div>
		</div>

	</div>

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>
</body>

</html>



<!-- <html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Please Enter Card details</h1>
<form action="carddet.com">
Enter CardNumber : <input type="text" name=cardNumber /> <br/>
Enter Name : <input type="text" name="name" /> <br/>
Enter Exp date : <input type="text" name="date" /> <br/>
Enter CVV : <input type="text" name="cvv" /> <br/>
<button type="submit">submit</button>
</form>
</body>
</html> -->