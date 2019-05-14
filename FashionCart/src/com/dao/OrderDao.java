package com.dao;

import java.util.List;

import com.db.HibernateTemplate;
import com.dto.Orders;

public class OrderDao {
	public static int addOrder(Orders order) {
		return HibernateTemplate.addObject(order);
	}
	public List<Orders> getAllOrder() {
		List<Orders> orderitems=(List)HibernateTemplate.getObjectListByQuery("From Orders");
		System.out.println("Inside All Orders ..."+orderitems);
		return orderitems;	
	}
	public static Orders getOrderItem(int id) {
		return (Orders)HibernateTemplate.getObject(Orders.class,id);
	}
	public static List<Orders> getAllOrderItems(int orderId) {
		List<Orders> orderitem=(List)HibernateTemplate.getObjectListByQuery("From Orders where orderId=" + orderId);
		System.out.println("Inside All Order ..."+orderitem);
		return orderitem;
	}
	public static List<Orders> getAllOrderItemsByCustId(int custId) {
		List<Orders> orderitem=(List)HibernateTemplate.getObjectListByQuery("From Orders where custId1=" + custId);
		System.out.println("Inside All Order ..."+orderitem);
		return orderitem;
	}

}
