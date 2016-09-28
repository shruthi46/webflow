package com.niit.shoppingcart.Controller;

	

	import org.springframework.beans.factory.annotation.Autowired;
	import org.springframework.stereotype.Controller;
	import org.springframework.ui.Model;
	import org.springframework.validation.BindingResult;
	import org.springframework.web.bind.annotation.ModelAttribute;
	import org.springframework.web.bind.annotation.PathVariable;
	import org.springframework.web.bind.annotation.RequestMapping;
	import org.springframework.web.bind.annotation.RequestMethod;
	import org.springframework.web.servlet.mvc.support.RedirectAttributes;

	import com.niit.shoppingcart.DAO.CategoryDAO;
	import com.niit.shoppingcart.Model.Category;

	@Controller
	public class CategoryController {
		
		@Autowired
		private CategoryDAO categoryDAO;
		
		@RequestMapping(value="/",method = RequestMethod.GET)
		public String landPage(@ModelAttribute("category")Category category,BindingResult result,Model model)
		{
			
			model.addAttribute("allData",categoryDAO.list());
			return "Category";
			
		}
		 
		@RequestMapping(value="/allData")
		public String getAllData(@ModelAttribute("category")Category category,BindingResult result,Model model)
		{
		
			model.addAttribute("allData",categoryDAO.list());
			return "Category";
		}
		@RequestMapping(value="/addItem",method = RequestMethod.POST)
	public String addItem(@ModelAttribute("category") Category p){
			
			this.categoryDAO.saveOrUpdate(p);
			return "redirect:allData";
			
		}
		@RequestMapping(value="/ItemById/{id}",method = RequestMethod.GET)
		public String editItem(@PathVariable("id") int id,RedirectAttributes redirectAttributes)
		{
			redirectAttributes.addFlashAttribute("category", categoryDAO.get(id));
			return "redirect:/allData";
			
	}
		@RequestMapping(value="/deleteById/{id}",method = RequestMethod.GET)
		public String deleteItem(@PathVariable("id") int id,Category category)
		{
			categoryDAO.delete(category);
			return "redirect:/allData";
			
	}
	}