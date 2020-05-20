package com.example.SalesApp.dao.impl;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.example.SalesApp.dao.impl.util.DaoUtil;
import com.example.SalesApp.model.Item;
import com.example.SalesApp.model.User;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

@Component
public class UserOperations 
{
	ModelAndView mv=new ModelAndView();
	DaoUtil dao=new DaoUtil();
	
	
	
	@ResponseBody
	public ModelAndView userLoginCheck(User user)
	{  
		try
		{  
			Class.forName("com.mysql.jdbc.Driver");  
			Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/sales","root","root");
			 PreparedStatement ps=(PreparedStatement) con.prepareStatement("select * from users where userName=? and userpassword=?");
		     ps.setString(1, user.getUserName());
		     ps.setString(2, user.getUserPassword());
		     //Statement stmt=(Statement) con.createStatement();  

		     ResultSet rs=ps.executeQuery();  

		      if(rs.next())
		       {
		    	  mv=getDetails();
		        }
		      else
		      {
		    	  System.out.println("result set is not there");
		    	mv.addObject("msg", "enter valid credentials");
		    	mv.setViewName("userLogin.jsp");
		      }
		      con.close();
		}
		catch(Exception e)
		{ 
			System.out.println(e);
		}  
		return mv;

	}  
	
	
	public ModelAndView getDetails()
	{
		List<Item> items = new ArrayList<Item>();
		try
		{  
			Class.forName("com.mysql.jdbc.Driver");  
			Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/sales","root","root");
			PreparedStatement ps=(PreparedStatement) con.prepareStatement("select * from items ");
			ResultSet rs=ps.executeQuery();  
			items=dao.convertRSforItems(rs);
			mv.addObject("items",items);
			mv.setViewName("itemSelection.jsp");
			con.close();
		}

		catch(Exception e)
		{ 
			System.out.println(e);
		} 
		return mv;
	}
	
	@ResponseBody
	public ModelAndView insert(User user)
	{  
		try
		{  
			Class.forName("com.mysql.jdbc.Driver");  
			Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/sales","root","root");
			String query = " insert into users (userName,userPassword,userPhone,userEmailid)"+"values (?,?,?,?)";

			PreparedStatement ps = (PreparedStatement) con.prepareStatement(query);
			ps.setString(1, user.getUserName());
			ps.setString(2, user.getUserPassword());
			ps.setString(3, user.getUserPhone());
			ps.setString(4, user.getUserEmailid());
			ps.executeUpdate();
			System.out.println("inside the insert");
			mv.setViewName("userLogin.jsp");
			con.close();
		}

		catch(Exception e)
		{ 
			System.out.println(e);
		}  
		return mv;

	}  
}
