package dao;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import pojos.*;

@WebServlet(urlPatterns = {"/register"})
public class RegistrationPage extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();		
		CustomerImp dao = new CustomerImp();
		Customer cus = new Customer();
		cus.setName(request.getParameter("name"));
		cus.setEmail(request.getParameter("email"));
		cus.setNumber(request.getParameter("number"));
		cus.setPassword(request.getParameter("pass"));
		dao.addCustomer(cus);
		out.println("<h1>Thank you for the registraction</h1>");
		out.println("<h3><a href='Welcome.jsp'>Chick here</a>To redirect to Main page</h3>");
	}
}
