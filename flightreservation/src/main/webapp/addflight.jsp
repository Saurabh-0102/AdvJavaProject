<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!-- <!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="user_registration.com">
Enter name : <input type="text" name="name"  /><br/>
Enter email : <input type="text" name="email"  /><br/>
Enter password : <input type="text" name="password"  /><br/>
Enter number : <input type="text" name="number"  /><br/>
<button type="submit">Register</button>
</form>
<h3><a href="http://localhost:8080/Spring-MVC/Welcome.jsp">Click here</a>to go back to main page</h3>
<h3><a href="http://localhost:8080/Spring-MVC/Login.jsp">Click here</a> to go to login page</h3>
</body>
</html> -->

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign-up</title>
    <!-- credits reserved -->
    <link rel="logo icon" href="icon.png" type="image-logo icon">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous" />
</head>

<body style="background-image: url('food.jpeg'); background-repeat: no-repeat;  background-size: 100% 100%;">
    <div class="container-fluid">
        
        <div class="row bg-secondary p-xl-2 text-decoration align-items-center justify-content-center fs-3">Add New Flight
        </div>
        <br />

        <div class="container-fluid">
            <div class="row justify-content-center">
                <form action="flightadd.com" onsubmit="return validation()" class="col-xl-6 col-sm-3 col-md-4">
                    <div class="form-group">
                        <label class="font-weight-regular"> Airline </label>
                        <input type="text" name="airlines" class="form-control" id="name" autocomplete="off"
                            placeholder="Enter Airline Name" />
                        <!-- autocomplete? -->
                        <span id="Name" class="text-danger font-weight-regular"> </span>
                    </div>
                    <div class="form-group">
                        <label class="font-weight-regular"> Departure City </label>
                        <input type="text" name="departureCity" class="form-control" id="emails" placeholder="Enter Departure City"
                            autocomplete="off" />
                        <span id="emailids" class="text-danger font-weight-regular"> </span>
                    </div>

                   

                    <div class="form-group">
                        <label class="font-weight-regular"> Arrival City </label>
                        <input type="text" name="arrivalCity" class="form-control" placeholder="Enter Arrival City"
                            id="pass" autocomplete="off" />
                        <span id="passwords" class="text-danger font-weight-regular">
                        </span>
                    </div>

                    <div class="form-group mb-lg-3 mb-md-3 ">
                        <label class="font-weight-regular"> Timing </label>
                        <input type="text" name="time" class="form-control" id="mobileNumber" autocomplete="off"
                            placeholder="Enter Time" />
                        <span id="mobileno" class="text-danger font-weight-regular"> </span>
                    </div>

                    <button class="btn btn-outline-primary w-50 me-5" type="submit">Add Flight</button>
                    <input type="reset" name="reset" value="Reset" class="btn btn-outline-primary w-25 float-end"
                        autocomplete="off" />
                    &emsp;&emsp;&emsp;
                    <br>
                    <hr>
                    <div class="form-group">
                        <label class="font-weight-regular">Already have an account?</label>
                        <span id="mobileno" class="text-danger font-weight-regular float-end"> <a
                                class=" text-decoration-none" href="http://localhost:8080/Spring-MVC/Login.jsp">Login</a> </span>
                    </div>


                </form>
            </div>
        </div>

    </div>
    

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>


    
    </div>
</body>

</html>
</body>

</html>