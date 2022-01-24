package dao;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pojos.Flight;


@WebServlet(urlPatterns = {"/searchres"})
public class FlightSearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		//Flight f = new Flight();
		//List<Flight> flight = new ArrayList<Flight>(); 
		String dep = request.getParameter("dcity");
		String arr = request.getParameter("acity");
		FlightDaoImpl dao = new FlightDaoImpl();
		List<Flight> f = dao.getFlights(dep, arr);
		for(Flight f1 : f) {
			out.println("<h1>" + f +"</h1>");
			System.out.println(f1);
		}
	}
}
