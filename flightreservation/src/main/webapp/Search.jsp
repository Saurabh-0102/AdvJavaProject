<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.entity.Flight, com.entity.User" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<title>Search Flight</title>
<%
HttpSession sess = request.getSession();
User ur = (User) sess.getAttribute("u");
System.out.println(ur.getName());
sess.setAttribute("u", ur);
%>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

    <!-- credits reserved -->
    <link rel="logo icon" href="icon.png" type="image-logo icon">

    <!-- Popper JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</head>
<body>
 <!--style="background-image: url('Cheap-Flight-Tickets.jpg');  background-repeat: no-repeat;  background-size: 100% 100%;">-->
    <div class="container-fluid">

      <!--   <div class="row bg-secondary p-xl-2 text-white text-decoration align-items-center justify-content-center fs-1">
            <h1>Compare and book flights with ease
            </h1>

        </div>
 -->
        <div class="row bg-secondary  p-xl-2 text-decoration align-items-center justify-content-center fs-1">
            <h2> Welcome <%= ur.getName().toUpperCase() %> | Plan Your Trip!!!</h2>
        </div>
        <br />

        <div class="row justify-content-center p-5">
            <form action="sr.com" onsubmit="return validation()" class="col-xl-6 col-sm-3 col-md-4">
                <div class="form-group">
                    <label class="font-weight-regular">Enter Destination city</label>
                    <input type="text" name="dcity" class="form-control" id="emails"
                        placeholder="Enter Destination city" autocomplete="off" />
                    <span id="emailids" class="text-danger font-weight-regular"> </span>
                </div>

                <div class="form-group">
                    <label class="font-weight-regular">Enter Arrival City</label>
                    <input type="text" name="acity" class="form-control" placeholder="Enter Arrival City"
                        autocomplete="off" />
                    <span id="passwords" class="text-danger font-weight-regular">
                    </span>
                </div>

               <!--  <div class="form-group">
                    <label class="font-weight-regular">Enter Date of Journey</label>
                    <input type="datetime-local" name="pass" class="form-control" placeholder="Enter Date of Journey"
                        autocomplete="off" />
                    <span id="passwords" class="text-danger font-weight-regular">
                    </span>
                </div> -->
                <div class="d-flex justify-content-center mt-3">
                    <button class=" btn btn-outline-primary w-50" type="submit">Find Flights</button>
                </div>
                &emsp;&emsp;&emsp;

            </form>
        </div>
    </div>



    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
</body>
</html>








<%-- <h3> Welcome : ${user.name} </h3>
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



<h3><a href="http://localhost:8080/Spring-MVC/Welcome.jsp">Click here</a> to go back to main page</h3> --%>