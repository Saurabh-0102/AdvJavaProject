package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.persistence.NoResultException;
import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.xml.ws.Response;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.customexception.CustomException;
import com.dao.GenericDao;
import com.entity.BordingPass;
import com.entity.Card;
import com.entity.Flight;
import com.entity.Passenger;
import com.entity.User;

@Controller
public class ControllerClass {

	@Autowired
	private GenericDao dao;
	
	@RequestMapping("/user_registration.com")
	public String addUser(User user) {
		dao.add(user);
		System.out.println(" in user added method"+user.getRole());
		return "uregister.jsp";
	}
	
	@RequestMapping("/adminreg.com")
	public String addadmin(User user) {
		dao.add(user);
		System.out.println(" in user added method"+user.getRole());
		return "adminadded.jsp";
	}
	
	
	@RequestMapping("/flightadd.com")
	public String addFlight(Flight f) {
		dao.add(f);
		return "flightadded.jsp";
	}
	
	@RequestMapping("/login.com")
	public String validateUser(HttpServletRequest request ,  Map map,	HttpServletResponse response ) throws IOException {
		try {
			String email = request.getParameter("email");
			String password = request.getParameter("password");
		 	User us = dao.validateUser(email, password);
		 	HttpSession sess = request.getSession();
		 	sess.setAttribute("u", us);
		 	System.out.println(us.getName()+us.getRole());
		 	map.put("user", us);
		 	if(us.getRole().equals("admin")) {
		 		return "admin.jsp";
		 	}
		 	else
		 		return "Search.jsp";
		}catch(NoResultException e) {
			return "error.jsp";
		}
	}
	
	@RequestMapping("/sr.com")
	public String serachFlight(HttpServletRequest request, Map map) {
		try {
			String dcity = request.getParameter("dcity");
			String acity = request.getParameter("acity");
			List<Flight> f1 = dao.searchFlight(dcity, acity);
			for(Flight f2 : f1) {
				System.out.println(f2);
			}
			HttpSession sess = request.getSession();
			sess.setAttribute("fl", f1);
			User u = (User) sess.getAttribute("u");
			sess.setAttribute("u", u);
			return "SearchResult.jsp";
		}catch(NoResultException e) {
			return "NoFlight.jsp";
		}
	}
	
	
	@RequestMapping("/allflight.com")
	public String getAllFlights(HttpServletRequest request,HttpServletResponse response) throws IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
	 List<Flight> f	 = dao.getAllFlights();
//	 for(Flight f2 : f) {
//	 out.println("<h3>"+ f2  +"</h3>");
//	 System.out.println("");
//	 }
	 HttpSession sess = request.getSession();
	 sess.setAttribute("flight", f);
	 return "allflights.jsp";
	}
	
	@RequestMapping("/alluser.com")
	public String getAlluser(HttpServletRequest request,HttpServletResponse response) throws IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
	 List<User> u	 = dao.getAllUsers();
//	 for(Flight f2 : f) {
//	 out.println("<h3>"+ f2  +"</h3>");
//	 System.out.println("");
//	 }
	 HttpSession sess = request.getSession();
	 sess.setAttribute("user", u);
	 return "allusers.jsp";
	}
	
	@RequestMapping("/passdet.com")
	public String addPassenger(HttpServletRequest request,Passenger passenger) {
		HttpSession sess = request.getSession();
		User ur = (User) sess.getAttribute("u");
		Flight f = (Flight) sess.getAttribute("f1");
		sess.setAttribute("u", ur);
		sess.setAttribute("f1", f);
		System.out.println("in passdet");
		System.out.println(f);
		dao.add(passenger);
		return "CardDetails.jsp";
	}
	
	@RequestMapping("/carddet.com")
	public String addCardDetails(Card card) {
		dao.add(card);
		return "lastpage.jsp";
	} 
	

	
	
}
