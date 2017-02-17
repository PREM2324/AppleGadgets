package com.apple.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.apple.model.Product;

@Repository
public class ProductDaoImpl implements ProductDao {
@Autowired
private SessionFactory sessionFactory;
	public ProductDaoImpl(){
		System.out.println("CREATING INSTANCE FOR PRODUCTDAOIMPL");
	}
	
	public Product saveProduct(Product product) {
		System.out.println(product.getId());
		Session session=sessionFactory.openSession();
		/*Transaction tx=session.beginTransaction();*/
		session.save(product); //insert into product values (next.val,.....)
		/*tx.commit();*/
		session.flush();
		session.close();
		System.out.println(product.getId());
		return product;	
	}

	public List<Product> getAllProducts() {
		Session session=sessionFactory.openSession();
		Query query=session.createQuery("from Product");
		List<Product> products=query.list();
		session.close();
		return products;
	}

	public Product getProductById(int id) {
		Session session=sessionFactory.openSession();
		//select * from product where id=34
		Product product=(Product)session.get(Product.class,id);
		session.close();
		return product;
	}

	public void deleteProduct(int id) {
		Session session=sessionFactory.openSession();
		//Make the object persistent[read the data from the table and add it to session]
		Product product=(Product)session.get(Product.class, id);
		session.delete(product);
		session.flush();
		session.close();
		
	}

	public void updateProduct(Product product) {
		Session session=sessionFactory.openSession();
		System.out.println("Id of the product in dao is " + product.getId());
		session.update(product); //update product set ..... where id=?
		session.flush();
		session.close();	
	}

}








/*package com.apple.dao;

import java.io.Serializable;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.apple.model.Product;

@Repository("productDao")
public class ProductDaoImpl implements ProductDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Transactional(propagation=Propagation.SUPPORTS)
	public int insertRow(Product prd) {
		Session session = sessionFactory.openSession();
		  Transaction tx = session.beginTransaction();
		  session.saveOrUpdate(prd);
		  session.flush();
		  tx.commit();
		  
		  Serializable id = session.getIdentifier(prd);
		  session.close();
		  return (Integer) id;
	}

	@Transactional(propagation=Propagation.SUPPORTS)
	public List<Product> getList() {
		Session session = sessionFactory.openSession();
		  //@SuppressWarnings("unchecked")
		  List<Product> productList = session.createQuery("from Product").list();
		  session.close();
		  return productList;
	}

	@Transactional(propagation=Propagation.SUPPORTS)
	public Product getRowById(int id) {
		 Session session = sessionFactory.openSession();
		  Product p = (Product) session.load(Product.class, id);
		  return p;
	}

	@Transactional(propagation=Propagation.SUPPORTS)
	public int updateRow(Product prd) {
		 Session session = sessionFactory.openSession();
		  Transaction tx = session.beginTransaction();
		  session.saveOrUpdate(prd);
		  session.flush();
		  tx.commit();
		  
		  Serializable id = session.getIdentifier(prd);
		  session.close();
		  return (Integer) id;
	}

	@Transactional(propagation=Propagation.SUPPORTS)
	public int deleteRow(int id) {
		Session session = sessionFactory.openSession();
		  Transaction tx = session.beginTransaction();
		  Product p = (Product) session.load(Product.class, id);
		  session.delete(p);
		  session.flush();
		  tx.commit();
		 
		  Serializable ids = session.getIdentifier(p);
		  session.close();
		  return (Integer) ids;
	}
	
	
}
*/


