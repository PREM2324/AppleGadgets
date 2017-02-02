package com.apple.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.apple.model.Product;

@Controller
public class ProductController {
	public ProductController(){
		System.out.println("Creating Instance for Product Controller");
	}

@RequestMapping("/ProductForm")

public String getProductForm(Model model){
	model.addAttribute("Product",new Product());
	return "ProductForm";
}

@RequestMapping("/addProduct")
public ModelAndView saveProduct(@ModelAttribute(value="Product")Product Product)
{
	return null;
}


}
