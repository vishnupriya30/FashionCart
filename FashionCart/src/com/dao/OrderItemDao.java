package com.dao;

import java.util.List;

import com.db.HibernateTemplate;
import com.dto.Customer;
import com.dto.Item;
import com.dto.OrderItem;

public class OrderItemDao {
	public static int add(OrderItem orderitem) {
		return HibernateTemplate.addObject(orderitem);
	}
	@SuppressWarnings("unchecked")
	public List<OrderItem> getAllOrderItems() {
		List<OrderItem> orderitems=(List)HibernateTemplate.getObjectListByQuery("From OrderItem");
		System.out.println("Inside All OrderItems ..."+orderitems);
		return orderitems;	
	}
	public static OrderItem getOrderItem(int id) {
		return (OrderItem)HibernateTemplate.getObject(Item.class,id);
	}
	public static List<OrderItem> getAllOrderItems(int orderId) {
		List<OrderItem> orderitem=(List)HibernateTemplate.getObjectListByQuery("From OrderItem where orderId1=" + orderId);
		System.out.println("Inside All OrderItem ..."+orderitem);
		return orderitem;
	}

}
