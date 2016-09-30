package com.niit.shoppingcart.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {
@RequestMapping(value="/")
public String init(Model model){
	model.addAttribute("msg","Welcome user");
	return "admin";
}
	
	
}
