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

@RequestMapping("/login")
public String login()
{
	return "login";
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

}