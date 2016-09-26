package com.niit.shoppingcart.DAO;

import java.util.List;

import javax.persistence.Query;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.niit.shoppingcart.Model.Product;


//@Repository("ProductDAO")
public class ProductDAOImpl implements ProductDAO
{
	@Autowired
	private Product product;
	
	@Autowired
	private SessionFactory sessionfactory;

	public ProductDAOImpl(SessionFactory sessionfactory2) {
		// TODO Auto-generated constructor stub
	}

	public boolean saveorupdate(Product product) {
		
		try
		{
			sessionfactory.getCurrentSession().saveOrUpdate(product);
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

	public Product get(String id) {
		
		String hql="from Product where id = '"+id+"'";
		Query query=sessionfactory.getCurrentSession().createQuery(hql);
				
		List<Product> list = ((ProductDAOImpl) query).list();
		
		if(list == null || list.isEmpty())
		{
			return null;
		}
		return list.get(0);
	}

	public List<Product> list() {
		
		return null;
	}
}
	


