package com.example.SalesApp.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


import com.example.SalesApp.dao.impl.UserOperations;

import com.example.SalesApp.model.User;

@Controller
public class UserController 
{
	ModelAndView mv = new ModelAndView();
	@Autowired
	UserOperations obj;
 
	
@RequestMapping("/userLogin")
 public ModelAndView adminLogin(@RequestParam("username") String username,@RequestParam("password") String password)
 {
	User user=new User();
    user.setUserName(username);
    user.setUserPassword(password);
    mv=obj.userLoginCheck(user);
	
	return mv;
 }
 

@RequestMapping("/userSignup")
public ModelAndView insert(@RequestParam("userName") String userName,@RequestParam("userPassword") String userPassword,@RequestParam("userPhone") String userPhone,@RequestParam("userEmailid") String userEmailid)
{
		User user=new User();
	    user.setUserName(userName);
	    user.setUserPassword(userPassword);
	    user.setUserPhone(userPhone);
	    user.setUserEmailid(userEmailid);
		mv=obj.insert(user);
		//mv=getAll();
		return mv;
}
}
