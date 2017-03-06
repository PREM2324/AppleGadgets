package com.apple.service;

import com.apple.model.Customer;

public interface CustomerService {
void saveCustomer(Customer customer);
public Customer getCustomerByUsername(String username);
}