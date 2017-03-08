package com.apple.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.apple.dao.CartDao;
import com.apple.model.Cart;

@Service
public class CartServiceImpl implements CartService{
@Autowired
private CartDao cartDao;
public Cart getCart(int cartId) {
return cartDao.getCart(cartId);
}

}