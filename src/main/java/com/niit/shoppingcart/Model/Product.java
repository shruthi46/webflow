package com.niit.shoppingcart.Model;



import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

@Entity
@Table(name="Product")
@Component
public class Product {
	
@Id
@GeneratedValue

 private int id;

/*@ManyToOne()
@JoinColumn(name="category_id", updatable=false ,insertable=false ,nullable=false)*/
@Column(name="categoryid")
private int categoryid;

/*@ManyToOne()
@JoinColumn(name="supplier_id", updatable=false ,insertable=false ,nullable=false)*/
@Column(name="supplierid")
private int supplierid;
@Transient
private MultipartFile image;


public int getCategoryid() {
	return categoryid;
}
public void setCategoryid(int categoryid) {
	this.categoryid = categoryid;
}
public int getSupplierid() {
	return supplierid;
}
public void setSupplierid(int supplierid) {
	this.supplierid = supplierid;
}
private String name;
private String description;
private double  price;


 public int getId() {
	return id;
}
public String getName() {
	return name;
}
public String getDescription() {
	return description;
}
public double getPrice() {
	return price;
}
public void setId(int id) {
	this.id = id;
}
public void setName(String name) {
	this.name = name;
}
public void setDescription(String description) {
	this.description = description;
}
public void setPrice(double price) {
	this.price = price;
}




public MultipartFile getImage() {
	return image;
}
public void setImage(MultipartFile image) {
	this.image = image;
}
 
 
 
}