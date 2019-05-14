package com.dao;

import java.util.List;

import com.db.HibernateTemplate;
import com.dto.Cart;
import com.dto.Customer;

public class CartDao {
	public int addItem(Cart cart) {
		return HibernateTemplate.addObject(cart);
	}
	public List<Cart> getAllCartItems() {
		List<Cart> cart=(List)HibernateTemplate.getObjectListByQuery("From Cart");
		System.out.println("Inside All Customers ..."+cart);
		return cart;	
	}
	public static int DeleteCartItem(int itemId) {
		// TODO Auto-generated method stub
		return HibernateTemplate.deleteObjectByQuery("delete from Cart where itemId1="+itemId);
	}
	public static int editCart(Cart cart) {
		// TODO Auto-generated method stub
		return HibernateTemplate.updateObject(cart);
	}
	public List<Cart> getAllItemsByCustId(int custId) {
		List<Cart> ar = (List)HibernateTemplate.getObjectListByQuery("From Cart where custId=" + custId);
		return ar;
	}
	public static int DeleteCartItemsByCustId(int custId) {
		return HibernateTemplate.deleteObjectByQuery("delete from Cart where custId="+custId);
	}
	

}
