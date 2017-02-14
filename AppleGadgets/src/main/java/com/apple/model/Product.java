package com.apple.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity

public class Product implements Serializable 

{

	private static final long serialVersionUID = -723583058586873479L;
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	private String name;
	private String description;
	private double price;
	private int quantity;
	private Date mfg;
	
	@ManyToOne
	@JoinColumn(name="cid")
	private Category category;
	@ManyToOne
	@JoinColumn(name="supplier")
	private Supplier supplier;
	
	public Supplier getSupplier() {
		return supplier;
	}

	public void setSupplier(Supplier supplier) {
		this.supplier = supplier;
	}

	public Category getcategory(){
		return category;
	}
	
	public void setCategory(Category category){
		this.category = category;
	}
	
	
	
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public Date getMfg() {
		return mfg;
	}
	public void setMfg(Date mfg) {
		this.mfg = mfg;
	}

}
