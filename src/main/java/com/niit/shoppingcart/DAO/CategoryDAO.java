package com.niit.shoppingcart.DAO;

import java.util.List;

import com.niit.shoppingcart.Model.Category;

public interface CategoryDAO
{
	
	public boolean saveorupdate(Category category);
	public boolean delete(String id);
	public Category get(String id);
	public List<Category> list();
	
	
}
