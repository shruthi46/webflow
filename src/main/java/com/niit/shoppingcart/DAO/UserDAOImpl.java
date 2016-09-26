package com.niit.shoppingcart.DAO;


import java.util.List;

import javax.persistence.Query;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.niit.shoppingcart.Model.*;
public class UserDAOImpl implements UserDAO
{
	@Autowired
	private UserDetails userDetails;
	
	@Autowired
	private SessionFactory sessionfactory;

	public UserDAOImpl(SessionFactory sessionfactory2) {
		// TODO Auto-generated constructor stub
	}

	
	

}
