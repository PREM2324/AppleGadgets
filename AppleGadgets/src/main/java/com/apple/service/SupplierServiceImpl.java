package com.apple.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.apple.dao.SupplierDao;
import com.apple.model.Supplier;
@Service("supplierService")
public class SupplierServiceImpl implements SupplierService 
{
	@Autowired
	private SupplierDao supplierDao;

	
	public List<Supplier> getSuppliers() {
		// TODO Auto-generated method stub
		return supplierDao.getSuppliers();
	}

}