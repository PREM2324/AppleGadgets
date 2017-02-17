package com.apple.service;

import java.util.List;

import com.apple.model.Product;

public interface ProductService {
Product saveProduct(Product product);
List<Product> getAllProducts();
Product getProductById(int id);
void deleteProduct(int id);
void updateProduct(Product product);
}

/*package com.apple.service;

import java.util.List;

import com.apple.model.Product;

public interface ProductService {
	
	public int insertRow(Product prd);

	public List<Product> getList();

	 public Product getRowById(int id);

	 public int updateRow(Product prd);

	 public int deleteRow(int id);


}*/
