package com.example.SalesApp.dao.impl.util;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.example.SalesApp.model.Item;

public class DaoUtil 
{
	public static List<Item> convertRSforItems(ResultSet rs) throws SQLException {
		List<Item> items = new ArrayList<Item>();
		
		while(rs.next()) {
			//System.out.println("at bgining of the convertrsfordpt ");
			Item item = new Item();
			//System.out.println("after creating dpt object");
			item.setItemId(rs.getInt("itemId"));
			item.setItemName(rs.getString("itemName"));
			
			item.setItemPrice(rs.getInt("itemPrice"));
			items.add(item);
		}
		
		return items;
	}
	
}
