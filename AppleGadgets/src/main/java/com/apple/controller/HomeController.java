package com.apple.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {

	public HomeController() {
		//super();
		// TODO Auto-generated constructor stub
		System.out.println("inside controller");
	}
@RequestMapping("/")
	public String gotoHome()
	{
		return "Index";
	}

@RequestMapping("/Index")
public String gotoHome1()
{
	return "Index";
}

@RequestMapping("/Login")
public String gotoHome2()
{
	return "Login";
}

@RequestMapping("/Register")
public String gotoHome3()
{
	return "Register";
}

@RequestMapping("/AboutUs")
public String gotoHome4()
{
	return "AboutUs";
}

@RequestMapping(value="loginCk",method=RequestMethod.POST)
public void validateLogin(HttpServletRequest request,HttpServletRequest response,ServletRequest req,ServletResponse res)throws ServletException,IOException
{
 String u=request.getParameter("uname");
 String p=request.getParameter("passwd");
  LoginCredential obj=new LoginCredential();
   obj.setUname(u); 
   obj.setPasswd(p);
  
   if(obj.checklogin())
   {
    RequestDispatcher dispatch=request.getRequestDispatcher("Index");
    dispatch.forward(req, res);
   }
   else
   {
    RequestDispatcher dispatch=request.getRequestDispatcher("AboutUs");
    dispatch.forward(req, res);
   }
}
}
