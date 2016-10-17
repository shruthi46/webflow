package com.niit.shoppingcart.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.niit.shoppingcart.DAO.UserDAO;
import com.niit.shoppingcart.Model.User;

@Controller
public class RegisterController {

	@Autowired
	UserDAO userDAO;
	
	
	@RequestMapping(value="adduser")
	public String addsupplier(@ModelAttribute("user") User user,RedirectAttributes attributes)
	{
        user.setRole("ROLE_USER");
        user.setEnabled(true);
        if(userDAO.saveOrUpdate(user)==true){
        	attributes.addFlashAttribute("registered", "You Have Successfully Registered with us Thank You...");
        }
        else{
        	attributes.addFlashAttribute("registered","Registration failed Please try again");
        }
		return "redirect:/register";
	}
	@RequestMapping(value="register")
	public ModelAndView user(@ModelAttribute("user") User user){
		ModelAndView mv=new ModelAndView("/Home");
		mv.addObject("UserClickeduser","true");
		mv.addObject("Hideothers","true");
		return mv;
	}
}