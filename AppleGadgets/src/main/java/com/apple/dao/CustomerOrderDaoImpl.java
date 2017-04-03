package com.apple.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.apple.model.Cart;
import com.apple.model.CartItem;
import com.apple.model.CustomerOrder;

@Repository
public class CustomerOrderDaoImpl implements CustomerOrderDao {

	@Autowired
	private SessionFactory sessionFactory;
	public void addCustomerOrder(Cart cart){
		System.out.println("Im in CODaoIMPL");
		CustomerOrder customerOrder=new CustomerOrder();
		customerOrder.setCart(cart);
		customerOrder.setCustomer(cart.getCustomer());
		customerOrder.setBillingAddress(cart.getCustomer().getBillingAddress());
		customerOrder.setShippingAddress(cart.getCustomer().getShippingAddress());
		Session session=sessionFactory.openSession();
		session.save(customerOrder);
		
		List<CartItem>cartItems=cart.getCartItems();
		double grandTotal=0.0;
		for(CartItem cartItem:cartItems){
			grandTotal=grandTotal+cartItem.getTotalPrice();
			
		}
		
		cart.setGrandTotal(grandTotal);
		session.update(cart);
		session.flush();
		session.close();
	}
}
