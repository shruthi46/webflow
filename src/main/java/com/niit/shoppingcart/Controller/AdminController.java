package com.niit.shoppingcart.Controller;

import java.util.Collection;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.niit.shoppingcart.DAO.CartDAO;
import com.niit.shoppingcart.DAO.UserDAO;
import com.niit.shoppingcart.Model.User;

@Controller
public class AdminController {
	@Autowired
	UserDAO userDAO;
	@Autowired
	CartDAO cartDAO;
@RequestMapping(value="/admin")
public String init(Model model){
	model.addAttribute("msg","Welcome Admin");
	return "admin";
}
@SuppressWarnings("unchecked")
@RequestMapping(value = "/login_session_attributes")
public String login_session_attributes(HttpSession session) {
	String username = SecurityContextHolder.getContext().getAuthentication().getName();
	User user = userDAO.get(username);
	session.setAttribute("userid", user.getUserId());
	session.setAttribute("name", user.getUsername());
	session.setAttribute("LoggedIn", "true");

	Collection<GrantedAuthority> authorities = (Collection<GrantedAuthority>) SecurityContextHolder.getContext()
	.getAuthentication().getAuthorities();
	String role="ROLE_USER";
	for (GrantedAuthority authority : authorities) 
	{
	  
	     if (authority.getAuthority().equals(role)) 
	     {
	    	 session.setAttribute("UserLoggedIn", "true");
	    	 //session.setAttribute("cartsize",cartDAO.getsize((int) session.getAttribute("userid")));
	    	 return "redirect:/";
	     }
	     else 
	     {
	    	 session.setAttribute("Administrator", "true");
		 return "/admin";
	     }
}
	return "/Home";

}
@RequestMapping(value="/loginError")
public String errorpage(RedirectAttributes attributes){
	attributes.addFlashAttribute("error", "The Username or Password you entered is incorrect please try again");
	return "redirect:/login";
}

	
}
