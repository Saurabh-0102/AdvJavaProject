package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;

import javax.persistence.NoResultException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.ws.Response;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.customexception.CustomException;
import com.dao.GenericDao;
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
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();
			String email = request.getParameter("email");
			String password = request.getParameter("password");
		 	User us =   dao.validateUser(email, password);
		 	System.out.println(us.getName());
		 	map.put("user", us);
		 	return "AfterLogin.jsp";
		}catch(NoResultException e) {
			return "error.jsp";
		}
	}
	
	
}
