package com.niit.shoppingcart.DAO;

import java.util.List;
import com.niit.shoppingcart.Model.*;

public interface ProductDAO 
{
 
 public boolean saveorupdate(Product product);
 public boolean delete(String id);
 public Product get(String id);
 public List<Product> list();
}
