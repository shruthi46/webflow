package com.niit.shoppingcart.DAO;

import java.util.List;
import com.niit.shoppingcart.Model.*;


public interface UserDAO {
	
	public List<UserDetails> list();
	public UserDetails get(String id);
	 public void saveorupdate(UserDetails userDetails);
	 public void delete(String id);
	 public UserDetails isValidUser(String id,String passworrd);
	 

}
