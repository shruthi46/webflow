package com.niit.shoppingcart.DAO;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.niit.shoppingcart.Model.Checkout;



@Repository
public interface CheckoutDAO {

	public boolean saveOrUpdate(Checkout checkout);
	public boolean delete(Checkout checkout);
	public List<Checkout>list();
	public Checkout get(int id);
}