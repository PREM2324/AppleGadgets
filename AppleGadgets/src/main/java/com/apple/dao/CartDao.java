package com.apple.dao;

import com.apple.model.Cart;

public interface CartDao {
Cart getCart(int cartId);
}