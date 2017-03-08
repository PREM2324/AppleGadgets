package com.apple.service;

import com.apple.model.Cart;
import com.apple.model.CartItem;

public interface CartItemService {
void addCartItem(CartItem cartItem);
CartItem getCartItem(int cartItemId);
void removeCartItem(CartItem cartItem);
void removeAllCartItems(Cart cart);
}