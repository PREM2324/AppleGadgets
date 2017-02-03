package com.apple.service;

import java.util.List;

import com.apple.model.Product;

public interface ProductService {
	
	public int insertRow(Product prd);

	public List<Product> getList();

	 public Product getRowById(int id);

	 public int updateRow(Product prd);

	 public int deleteRow(int id);


}
