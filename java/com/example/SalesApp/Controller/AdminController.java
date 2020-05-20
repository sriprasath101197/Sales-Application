package com.example.SalesApp.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.SalesApp.dao.impl.AdminOperations;
import com.example.SalesApp.model.Item;



@Controller
public class AdminController 
{
	ModelAndView mv = new ModelAndView();
	@Autowired
	AdminOperations obj;
 
	
@RequestMapping("/adminLogin")
 public ModelAndView adminLogin(@RequestParam("username") String username,@RequestParam("password") String password)
 {
	 //ModelAndView mv=new ModelAndView();
	 if(username.equals("hariharan")&&password.equals("abc123"))
	 {
		 mv=getAll();
	 }
	 else
	 {
		 mv.setViewName("adminLogin");
	 }
	 return mv;
 }
 
 
 @RequestMapping("/insert")
 public ModelAndView insert(@RequestParam("itemName") String itemName,@RequestParam("itemPrice") int itemPrice)
 {
		Item item=new Item();
		item.setItemName(itemName);
		item.setItemPrice(itemPrice);
		obj.insert(item);
		mv=getAll();
		return mv;
 }
 
 
 @RequestMapping("getAll")
 public ModelAndView getAll()
 {
	 mv=obj.getDetails();
	 return mv;
 }
 
 
 @RequestMapping("/update")
 public ModelAndView update(@RequestParam("ItemId") int itemId,@RequestParam("itemName") String itemName,@RequestParam("itemPrice") int itemPrice)
 {
	 Item item=new Item();
	 item.setItemId(itemId);
	 item.setItemName(itemName);
	 item.setItemPrice(itemPrice);
	 obj.update(item);
	 mv=getAll();
	 return mv;
 }
 
 @RequestMapping("/delete")
 public ModelAndView delete(@RequestParam("ItemId") int itemId)
 {
	 obj.delete(itemId);
	 mv=getAll();
	 return mv;
 }

}
