package com.niit.shoppingcart.DAO;


import java.util.List;

import javax.persistence.Query;

import org.hibernate.SessionFactory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.shoppingcart.Model.Category;

@Repository("CategoryDAO")
public class CategoryDAOImpl implements CategoryDAO {
	
	@Autowired
	private Category category;
	
	@Autowired
	private SessionFactory sessionfactory;

	public CategoryDAOImpl(SessionFactory sessionfactory2) {
		// TODO Auto-generated constructor stub
	}

	public boolean saveorupdate(Category category) {
		
		try
		{
			sessionfactory.getCurrentSession().saveOrUpdate(category);
		}
		catch(Exception e)
		{
		e.printStackTrace();
		return false;
		}
		return true;
	}

	public boolean delete(String id) {
		
		try
		{
			sessionfactory.getCurrentSession().delete(get(id));
		}
		catch(Exception e)
		{
		e.printStackTrace();
		return false;
		}
		return true;
	}

	public Category get(String id) {
		
		String hql="from Category where id = '"+id+"'";
		Query query=sessionfactory.getCurrentSession().createQuery(hql);
				
		List<Category> list = ((CategoryDAOImpl) query).list();
		
		if(list == null || list.isEmpty())
		{
			return null;
		}
		return list.get(0);
	}

	public List<Category> list() {
		
		return null;
	}
}
	
