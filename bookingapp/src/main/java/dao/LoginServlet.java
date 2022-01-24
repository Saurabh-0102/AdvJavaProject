package dao;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.persistence.NoResultException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pojos.Customer;


@WebServlet(urlPatterns = {"/login"})
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		try {
			String email = request.getParameter("email");
			String password = request.getParameter("pass");
			CustomerImp dao = new CustomerImp();
			Customer cus =  (Customer) dao.getCustomer(email, password);
			System.out.println(cus.toString());
			response.sendRedirect("Search.jsp");
		}catch(NoResultException e){
			out.println("<h4>Please Enter Correct emailId and password</h4>");
			out.println("<h3><a href='Login.jsp'>Chick here</a>To redirect to Main page</h3>");
			System.out.println("Enter correct id and password");
		}
	}
}
