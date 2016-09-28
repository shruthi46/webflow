/*package com.niit.shoppingcart.DAO;


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

	public List<UserDetails> list() {
		// TODO Auto-generated method stub
		return null;
	}

	public UserDetails get(String id) {
		String hql="from UserDetails where id=" + "'"+ id+"'";
		Query query=sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<UserDetails> list =(List<UserDetails> query.list());
		if(list)
		return null;
		
	}

	public void saveorupdate(UserDetails userDetails) {
		// TODO Auto-generated method stub
		
	}

	public void delete(String id) {
		// TODO Auto-generated method stub
		
	}

	public UserDetails isValidUser(String id, String passworrd) {
		// TODO Auto-generated method stub
		return null;
	}

	
	

}
*/