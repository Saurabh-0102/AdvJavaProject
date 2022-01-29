package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;

import javax.persistence.NoResultException;
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
		return "uregister.jsp";
	}
	
	@RequestMapping("/login.com")
	public String validateUser(HttpServletRequest request ,  Map map,	HttpServletResponse response ) throws IOException {
		try {
			String email = request.getParameter("email");
			String password = request.getParameter("password");
		 	User us =   dao.validateUser(email, password);
		 	HttpSession sess = request.getSession();
		 	sess.setAttribute("u", us);
		 	System.out.println(us.getName());
		 	map.put("user", us);
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
			Flight f1 = dao.searchFlight(dcity, acity);
			map.put("flight" , f1);
			HttpSession sess = request.getSession();
			sess.setAttribute("fl", f1);
			User u = (User) sess.getAttribute("ur");
			sess.setAttribute("u2", u);
			System.out.println(u.getNumber()+" "+u.getEmail() );
			return "SearchResult.jsp";
		}catch(NoResultException e) {
			return "NoFlight.jsp";
		}
	}
	
	@RequestMapping("/passdet.com")
	public String addPassenger(HttpServletRequest request,Passenger passenger) {
		dao.add(passenger);
		return "CardDetails.jsp";
	}
	
}
