package com.niit.shoppingcart.DAO;

import java.util.List;

import com.niit.shoppingcart.Model.Supplier;

public interface SupplierDAO
{
	public boolean saveorupdate(Supplier supplier);
	 public boolean delete(String id);
	 public Supplier get(String id);
	 public List<Supplier> list();


}
