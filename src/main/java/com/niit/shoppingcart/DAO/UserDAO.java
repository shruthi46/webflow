package com.niit.shoppingcart.DAO;

import java.util.List;

import com.niit.shoppingcart.Model.User;



public interface UserDAO {


	public List<User> list();

	public User get(int id);

	public boolean saveOrUpdate(User user);
	
	
	public void delete(int id);
	
	

	public User get(String username);
}
