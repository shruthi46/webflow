package com.niit.shoppingcart.Controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.google.gson.Gson;
import com.niit.shoppingcart.DAO.CategoryDAO;
import com.niit.shoppingcart.DAO.ProductDAO;
import com.niit.shoppingcart.DAO.SupplierDAO;
import com.niit.shoppingcart.Model.Category;
import com.niit.shoppingcart.Model.Product;

@Controller
public class ProductController {


		@Autowired
	 ProductDAO productDAO;
		@Autowired
	 CategoryDAO categoryDAO;
		@Autowired
	 SupplierDAO supplierDAO;
		private Path path;
		
		
		@RequestMapping(value = "/productgson" )
		@ResponseBody
		public String ProductGson() {
			List<Product> list = productDAO.list();
			Gson gson = new Gson();
			String data = gson.toJson(list);
			return data;
		}
		
		@RequestMapping(value="/Product",method = RequestMethod.GET)
		public ModelAndView landPage(@ModelAttribute("product")Product product,BindingResult result,Model model)
		{
			ModelAndView mv=new ModelAndView("/admin");
			mv.addObject("userclickedproduct", "true");
			mv.addObject("allProduct",productDAO.list());
			mv.addObject("allCategory",categoryDAO.list());
			mv.addObject("allSupplier",supplierDAO.list());
			return mv;
			
		}
		
		@RequestMapping(value="/addProduct")
		public String addProduct(@ModelAttribute("product") Product product , Model model,HttpServletRequest request, MultipartFile file) throws IOException
		{
			
			
		            productDAO.saveOrUpdate(product);
		    		System.out.println("Data Inserted");
		            
		    		MultipartFile image = product.getImage();
		           
		            String path = request.getSession().getServletContext().getRealPath("/resources/images/Product/"+product.getId()+".jpg");
		            System.out.println("Path="+path);
		            System.out.println("File name = " + product.getImage().getOriginalFilename());
		          
		            if(image!=null && !image.isEmpty())
		            {
		            	try
		            	{
		            		image.transferTo(new File(path.toString()));
		            		System.out.println("Image saved  in:"+path.toString());
		            	}
		            	catch(Exception e)
		            	{
		            		e.printStackTrace();
		            		System.out.println("Image not saved");
		            	}
		            }
		    	
		     	    
		    return "redirect:/Product";
		
		}
		
		
		
		 
	/*	@RequestMapping(value="/allData")
		public String getAllData(@ModelAttribute("product")Product product,BindingResult result,Model model)
		{
		
			model.addAttribute("allData",productDAO.list());
			return "Product";
		}*/

			
	/*	@RequestMapping(value="/addproduct")
		public String addItem(@ModelAttribute("product") Product p){
				
				this.productDAO.saveOrUpdate(p);
				return "redirect:/Product";
				
			}*/
		@RequestMapping(value="/EditByProduct/{id}")
		public String editItem(@PathVariable("id") int id,RedirectAttributes redirectAttributes)
		{
			redirectAttributes.addFlashAttribute("product", productDAO.get(id));
			return "redirect:/Product";
			
	}
		@RequestMapping(value="/DeleteByProduct/{id}")
		public String deleteItem(@PathVariable("id") int id,Product product)
		{
			productDAO.delete(product);
			return "redirect:/Product";
			
	}
	}