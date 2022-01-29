<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!-- <!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h3>Welcome to the login page</h3>
	<form action="login.com">
		Enter email : <input type="email" name="email" /><br /> Enter
		password : <input type="password" name="password" /><br />
		<button type="submit">Login</button>
	</form>
	<h3><a href="http://localhost:8080/Spring-MVC/Welcome.jsp">Click here</a> to go back to main page</h3>
</body>
</html> -->
<html>

<head>
<title>login</title>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />


<!-- credits reserved -->
<link rel="logo icon" href="icon.png" type="image-logo icon">
<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</head>

	<div class="container-fluid">
		<div
			class="row bg-dark text-light justify-content-center align-items-center fs-4 sticky-top"
			style="height: 100px">
			<div class="col-xl-8">
				<marquee behavior="" direction="">
					<h3>Welcome to Login Page</h3>
				</marquee>
			</div>
		</div>
		<div
			class="row bg-light p-xl-2 text-decoration align-items-center justify-content-center fs-1">
			<h1>Login to your Account</h1>
		</div>
		<br />

		<div class="row justify-content-center">
			<form action="login.com" onsubmit="return validation()"
				class="col-xl-6 col-sm-3 col-md-4">
				<div class="form-group">
					<label class="font-weight-regular"> Email Id </label> <input
						type="text" name="email" class="form-control" id="emails"
						placeholder="Enter Email here" autocomplete="off" /> <span
						id="emailids" class="text-danger font-weight-regular"> </span>
				</div>

				<div class="form-group action="login.com">
					<label class="font-weight-regular"> Password </label> <input
						type="password" name="password" class="form-control"
						placeholder="Enter password here" id="pass" autocomplete="off" />
					<span id="passwords" class="text-danger font-weight-regular">
					</span>
				</div>

				<button class="btn btn-outline-primary w-50">
					Login <a href="index.html"></a>
				</button>
				<input type="reset" name="reset" value="Reset"
					class="btn btn-outline-primary w-25 float-xl-right"
					autocomplete="off" /> &emsp;&emsp;&emsp;

				<div class="form-group">
					<label class="font-weight-regular">Forgot Password?</label> <span
						id="mobileno" class="text-danger font-weight-regular float-end">
						<a class=" text-decoration-none" href="proforgot.html">Click
							here</a>
					</span>

				</div>
				<div class="form-group">
					<label class="font-weight-regular">Don't have an account
						Sign-Up here</label> <span id="mobileno"
						class="text-danger font-weight-regular float-end"> <a
						class=" text-decoration-none" href="prosignup.html">Click here</a>
					</span>
				</div>

			</form>
		</div>
	</div>



	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>



	<!-- <script type="text/javascript">
        function validation() {

            var pass = document.getElementById("pass").value;

            var emails = document.getElementById("emails").value;



            if (emails == "") {
                document.getElementById("emailids").innerHTML =
                    " ** Please fill the email id field";
                return false;
            }
            if (emails.indexOf("@") <= 0) {
                document.getElementById("emailids").innerHTML = " ** Invalid Email";
                return false;
            }

            if (
                emails.charAt(emails.length - 4) != "." &&
                emails.charAt(emails.length - 3) != "."
            ) {
                document.getElementById("emailids").innerHTML = " ** Invalid Email";
                return false;
            }


            if (pass == "") {
                document.getElementById("passwords").innerHTML =
                    " ** Please fill the password field";
                return false;
            }
            if (pass.length <= 8 || pass.length > 20) {
                document.getElementById("passwords").innerHTML =
                    " ** Passwords length must be between  8 and 20";
                return false;
            }

            else {
                return true;
            }


        }
    </script> -->

	</body>
</html>