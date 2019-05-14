	package com.dao;

import java.util.List;

import com.db.HibernateTemplate;
import com.dto.Bid;
import com.dto.Cart;
import com.dto.Item;

public class BidDao {
	public static int addBid(Bid bid) {
		return HibernateTemplate.addObject(bid);
	}
	public static int DeleteBid() {
		return HibernateTemplate.deleteObjectByQuery("delete from Bid");
	}
	public static Bid getBidByCustId(int id) {
		// TODO Auto-generated method stub
		List<Bid> bid = (List)HibernateTemplate.getObjectListByQuery("From Bid where custId1 = "+ id);
		System.out.println(bid.get(0));
		return bid.get(0);
	}
	public static List<Bid> getAllBidItems() {
		List<Bid> bid=(List)HibernateTemplate.getObjectListByQuery("From Bid");
		System.out.println("Inside All Bids ..."+ bid);
		return bid;	
	}

}
