package com.apple.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.apple.model.Product;
import com.apple.service.CategoryService;
import com.apple.service.ProductService;

@Controller
public class ProductController {
@Autowired
private ProductService productService;                     
@Autowired
private CategoryService categoryService;	
	
public ProductController(){
	System.out.println("CREATING INSTANCE FOR PRODUCTCONTROLLER");
}

//http://localhost:8080/project1/admin/product/productform
@RequestMapping("/admin/product/productform")
public String getProductForm(Model model){
	//Product product = new Product();
	model.addAttribute("product",new Product());
	model.addAttribute("categories",categoryService.getCategories());
	return "productform";
}

@RequestMapping("/admin/product/addProduct")
public String saveProduct(
	@Valid  @ModelAttribute(value="product") Product product,BindingResult result){
	System.out.println("I am inside block controller");
	if(result.hasErrors())
		return "productform";
	productService.saveProduct(product);
	
							/*Adding Image*/
	
	MultipartFile prodImage=product.getImage();
	if(!prodImage.isEmpty()){
		Path paths=Paths.get("F:/Software's/NIIT/Programming/Git/AppleGadgets/src/main/webapp/resource/images/"+product.getId()+".jpg");
		
		try{
			prodImage.transferTo(new File(paths.toString()));
		} catch(IllegalStateException e){
			e.printStackTrace();
		} catch(IOException e){
			e.printStackTrace();
		}
	}
	return "redirect:/all/product/getAllProducts";	
}

@RequestMapping("/all/product/getAllProducts")
public String getAllProducts(Model model){
	List<Product> products=productService.getAllProducts();
	//Assigning list of products to model attribute products
	model.addAttribute("productList",products);
	return "productlist";
}

@RequestMapping("/all/product/viewproduct/{id}")
public String viewProduct(@PathVariable int id,Model model){
	Product product=productService.getProductById(id);
	model.addAttribute("product",product);
return "viewproduct";
}

@RequestMapping("/admin/product/deleteproduct/{id}")
public String deleteProduct(@PathVariable int id){
	productService.deleteProduct(id);
	return "redirect:/all/product/getAllProducts";
}

/**
 *    to display the form to edit product details
 */
@RequestMapping("/admin/product/editform/{id}")
public String editProductForm(@PathVariable int id,Model model){
	Product product=productService.getProductById(id);
	model.addAttribute("product",product);
	model.addAttribute("categories",categoryService.getCategories());
	return "editproductform";
}

@RequestMapping("/admin/product/editProduct")
public String editProductDetails(@Valid @ModelAttribute("product") Product product,
		BindingResult result){
	if(result.hasErrors())
		return "productform";
	productService.updateProduct(product);
	return "redirect:/all/product/getAllProducts";
}

}







/*package com.apple.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.apple.model.Product;
import com.apple.service.CategoryService;
import com.apple.service.ProductService;
import com.apple.service.SupplierService;

@Controller
public class ProductController 
{
	@Autowired
	private ProductService productService;
	@Autowired
	private CategoryService categoryService;
	@Autowired
	private SupplierService supplierService;
	
	public ProductController()
	{
		System.out.println("Creating instance for ProductController");
	}
	
	@RequestMapping("/ProductForm")
	public ModelAndView gotoProduct(Model model,@ModelAttribute("prdfrm")Product prdfrm)
	{
		model.addAttribute("categories", categoryService.getCategories());
		 model.addAttribute("suppliers",supplierService.getSuppliers());
		  return new ModelAndView("ProductForm");
	}
	
	
	@RequestMapping(value = "saveProduct", method = RequestMethod.POST)
	public ModelAndView saveProduct(@ModelAttribute("prdfrm")Product prdfrm)
	{
		
		productService.insertRow(prdfrm);
		List<Product> ls=productService.getList();
		return new ModelAndView("listProducts","productList",ls);
	}
	
	@RequestMapping("/listProducts")
	public ModelAndView listallProducts()
	{
		List<Product> ls=productService.getList();
		return new ModelAndView("listProducts","productList",ls);
	}
	
	@RequestMapping("deleteProduct")
	public ModelAndView deleteproduct(@RequestParam int id)
	{
		
		productService.deleteRow(id);
		return new ModelAndView("redirect:listProducts");
	}
	
	@RequestMapping("/editProduct")
	public ModelAndView editproduct(@ModelAttribute("prdfrm")Product prdfrm,@RequestParam int id)
	{
		prdfrm=productService.getRowById(id);
		ModelAndView mv=new ModelAndView("editProduct","prod",prdfrm);
		return mv;
		
	}
	
	
	@RequestMapping(value="updateProduct",method=RequestMethod.POST)
	public ModelAndView updateproduct(@ModelAttribute("prdfrm")Product prdfrm)
	{
		productService.updateRow(prdfrm);
		return new ModelAndView("redirect:listProducts");
		
	}
	

	
}
*/

