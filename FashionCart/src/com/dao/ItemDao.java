package com.dao;

import java.util.List;

import com.db.HibernateTemplate;
import com.dto.Item;
public class ItemDao {
	@SuppressWarnings("unchecked")
	public List<Item> getAllItems() {
		List<Item> item=(List)HibernateTemplate.getObjectListByQuery("From Item");
		System.out.println("Inside All SubCategory ..."+item);
		return item;	
	}

	public static Item getItem(int id) {
		return (Item)HibernateTemplate.getObject(Item.class,id);
	}

	public static List<Item> getAllItems(int subId) {
		List<Item> item=(List)HibernateTemplate.getObjectListByQuery("From Item where SubId=" + subId);
		System.out.println("Inside All SubCategory ..."+item);
		return item;
	}

}
