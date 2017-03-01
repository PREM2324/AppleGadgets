package com.apple.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.apple.model.Customer;
import com.apple.service.CustomerService;

@Controller
public class CustomerController {
	@Autowired
private CustomerService customerService;	
	
@RequestMapping("/all/registrationForm")
public String getRegistrationForm(Model model){
	model.addAttribute("customer",new Customer());
	return "registerCustomer";
}
@RequestMapping("/all/registerCustomer")
public String registerCustomer(@ModelAttribute(value="customer") Customer customer){
	customerService.saveCustomer(customer);
	return "Index";
}

}