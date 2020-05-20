package com.example.SalesApp.dao.impl;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.example.SalesApp.dao.impl.util.DaoUtil;
import com.example.SalesApp.model.Item;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;



@Component
public class AdminOperations 
{
	ModelAndView mv=new ModelAndView();
	DaoUtil dao=new DaoUtil();
	
	@ResponseBody
	public ModelAndView insert(Item item)
	{  
		try
		{  
			Class.forName("com.mysql.jdbc.Driver");  
			Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/sales","root","root");
			String query = " insert into items (itemName,itemPrice)"+"values (?, ?)";

			PreparedStatement ps = (PreparedStatement) con.prepareStatement(query);
			ps.setString(1, item.getItemName());
			ps.setInt(2, item.getItemPrice());
			ps.executeUpdate();
			con.close();
		}

		catch(Exception e)
		{ 
			System.out.println(e);
		}  
		return mv;

	}  
	
	
	public ModelAndView update(Item item)
	{
		
		try 
		{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/sales","root","root");
		PreparedStatement ps=(PreparedStatement) con.prepareStatement("update items set itemName=?,itemPrice=? where itemId=?");
		 ps.setString (1, item.getItemName());
         ps.setInt (2, item.getItemPrice());
         ps.setInt (3, item.getItemId() );
		ps.executeUpdate();
		con.close();
		}
		catch (Exception e) 
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
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
			mv.setViewName("itemOperations.jsp");
			con.close();
		}

		catch(Exception e)
		{ 
			System.out.println(e);
		} 
		return mv;
	}
	
	
	public ModelAndView delete(int id)
	{
		try
		{  
			Class.forName("com.mysql.jdbc.Driver");  
			Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/sales","root","root");
			PreparedStatement ps=(PreparedStatement) con.prepareStatement("delete from items where itemId=?");
			ps.setInt(1,id);
			ps.executeUpdate();
			con.close();
			return mv;
		}

		catch(Exception e)
		{ 
			System.out.println(e);
		} 
		return mv;
	}
}
