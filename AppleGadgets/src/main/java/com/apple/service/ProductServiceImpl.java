package com.apple.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.apple.dao.ProductDao;
import com.apple.model.Product;

@Service
public class ProductServiceImpl implements ProductService {
@Autowired
private ProductDao productDao;

public ProductServiceImpl(){
	System.out.println("CREATING INSTANCE FOR PRODUCTSERVICEIMPL");
}

	public Product saveProduct(Product product) {
		System.out.println("I am inside product service impl");
		return productDao.saveProduct(product);
	}

	public List<Product> getAllProducts() {
		return productDao.getAllProducts();
	}

	public Product getProductById(int id) {
		return productDao.getProductById(id);
	}

	public void deleteProduct(int id) {
		productDao.deleteProduct(id);
	}

	public void updateProduct(Product product) {
		productDao.updateProduct(product);
		
	}

}





/*package com.apple.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.apple.dao.ProductDao;
import com.apple.model.Product;

@Service("productService")

public class ProductServiceImpl implements ProductService {
	
	@Autowired
	private ProductDao productDao;

	@Transactional(propagation=Propagation.SUPPORTS)
	public int insertRow(Product prd) {
		// TODO Auto-generated method stub
		return productDao.insertRow(prd);
	}

	@Transactional(propagation=Propagation.SUPPORTS)
	public List getList() {
		// TODO Auto-generated method stub
		return productDao.getList();
	}

	@Transactional(propagation=Propagation.SUPPORTS)
	public Product getRowById(int id) {
		// TODO Auto-generated method stub
		return productDao.getRowById(id);
	}

	@Transactional(propagation=Propagation.SUPPORTS)
	public int updateRow(Product prd) {
		// TODO Auto-generated method stub
		return productDao.updateRow(prd);
	}

	@Transactional(propagation=Propagation.SUPPORTS)
	public int deleteRow(int id) {
		// TODO Auto-generated method stub
		return productDao.deleteRow(id);
	}
	
	
	

}*/
