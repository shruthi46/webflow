package com.niit.shoppingcart.Controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.niit.shoppingcart.DAO.CartDAO;
import com.niit.shoppingcart.DAO.ProductDAO;
import com.niit.shoppingcart.Model.Cart;
import com.niit.shoppingcart.Model.Product;

@Controller
public class CartController {


 @Autowired
 private CartDAO cartDAO;
 
 @Autowired
 private ProductDAO productDAO;
 
 public static final Logger log=LoggerFactory.getLogger(CartController.class);
 
 @RequestMapping(value="/Cart")
 public ModelAndView Cartpage(HttpSession session)
 {
  ModelAndView  mv=new ModelAndView("Home");
  mv.addObject("UserClickedCart","true");
  return mv;
  
 }
 int q;
 
 @RequestMapping(value="addtocart/{id}")
 public String addTOCart(@ModelAttribute("cart")Cart cart,BindingResult result,@PathVariable("id") int productid){
 
  log.info("Cart operation start================================================================================================================");
  double p;
  if(cartDAO.getproduct(productid)==null){
   Cart cart2= new Cart(); 
   Product product = productDAO.get(productid);
   cart2.setProductid(product.getId());
   cart2.setProductname(product.getName());
   cart2.setPrice(product.getPrice());
   cart2.setQuantity(1);
   q=cart2.getQuantity();
   cart2.setStatus("C");
  /* cart2.setUserid((int) session.getAttribute("userid"));*/
   cartDAO.save(cart2);
            return "/Cart1";
  }else{
   Cart cart1 = cartDAO.getproduct(productid);
   Product product1 = productDAO.get(productid);
   q=cart1.getQuantity();
   cart1.setStatus("C");
   /*cart1.setUserid((int) session.getAttribute("userid"));*/
   p=product1.getPrice();
   q+=1;
   p=q*p;
 cart1.setQuantity(q);
 cart1.setPrice(p);
cartDAO.update(cart1);
System.out.println("opeartion over");

log.info("cart operaiton over================================================================");
return "redirect:/Cart1";
  } 
  
 }
 @RequestMapping(value="delete/{id}")
 public String delete(@ModelAttribute("cart") Cart cart){
  cartDAO.delete(cart);
  return "redirect:/Cart1";
 }
 @RequestMapping(value="/Cart1")
 public ModelAndView cartpage(@ModelAttribute("cart") Cart cart,HttpSession session){
  ModelAndView mv= new ModelAndView("Cart1");
  if(cartDAO.list()==null){
   mv.addObject("emptycart","Sorry your shopping cart is empty");
  }else{
  mv.addObject("CartList", cartDAO.list());
  //mv.addObject("cartprice", cartDAO.CartPrice((Integer) session.getAttribute("userId")));
  }
  mv.addObject("UserClickedCart","true");
  return mv;
 }
 @RequestMapping("placeorder")
 public String placeorder(Model model)
 {
  model.addAttribute("IfPaymentClicked", "true");
  model.addAttribute("HideOthers","true");
  return "Payment";
 }

 @RequestMapping("pay")
 public String payment(HttpSession session) {
  cartDAO.pay((Integer) session.getAttribute("userid"));
  return "Home";
 }
}