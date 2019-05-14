package com.db;

import java.io.Serializable;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.SharedSessionContract;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.dto.Customer;
import com.dto.Item;

public class HibernateTemplate {

	private static SessionFactory sessionFactory;
	
	static
	{
		sessionFactory=new Configuration().configure().buildSessionFactory();
	}
	
	public static int addObject(Object obj)
	{
		int result=0;
		
		Transaction tx=null;
		
		try {
			
			Session session=sessionFactory.openSession();
			tx=session.beginTransaction();
			
			session.save(obj);
			
			tx.commit();
			
			result=1;
			
		} catch (Exception e) {
		
			tx.rollback();
			
			e.printStackTrace();
		}
		
		return result;
	}
	
	public static Object getObject(Class c,Serializable serializable)
	{
		Object obj=null;
		
		try {			
			return sessionFactory.openSession().get(c,serializable);
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
		return obj;
	}
	
	public static Object getObjectByUserName(String userName) {
	
	String queryString = "from Customer where userName = :userName";
	  Query query = sessionFactory.openSession().createQuery(queryString);
	  query.setString("userName", userName);
	  Object queryResult = query.uniqueResult();
	  Customer customer = (Customer)queryResult;
	  System.out.println(customer.getUserName()+" "+customer.getPassword()); 
	  return customer; 
	}
	
	
	
	public static int updateObject(Object obj)
	{
		int result=0;
		
		Transaction tx=null;
		
		try {
			
			Session session=sessionFactory.openSession();
			tx=session.beginTransaction();
			
			//session.saveOrUpdate(obj);
			session.merge(obj);
			
			tx.commit();
			
			result=1;
			
		} catch (Exception e) {
		
			tx.rollback();
			
			e.printStackTrace();
		}
		
		return result;
	}
	
	public static int deleteObject(Class c,Serializable serializable)
	{
		int result=0;
		
		Session session=sessionFactory.openSession();
		
		Transaction tx=session.beginTransaction();
		
		try {
			
			Object obj=session.get(c,serializable);
			
			session.delete(obj); 
			
			/*Query query = session.createQuery("delete from Cart where custId = ");
			int result = query.executeUpdate();*/
			
			tx.commit();
			
			result=1;
						
		} catch (Exception e) {
			
			e.printStackTrace();
			
			tx.rollback();
		}
		
		return result;
	}

	public static List<Object> getObjectBySubId(int SubId) {
		String queryString = "from Item where SubId = :SubId";
		  Query query = sessionFactory.openSession().createQuery(queryString);
		  query.setLong("SubId", SubId);
		  Object queryResult = query.uniqueResult();
		  Item item = (Item)queryResult;
		 // System.out.println(Item.SubCateg+" "+customer.getPassword()); 
		  return  (List<Object>)item; 
		//return null;
	}
	public static List<Object> getObjectListByQuery(String query)
	{
		return sessionFactory.openSession().createQuery(query).list();
	}
	public static int deleteObjectByQuery(String query)
	{
		Session session = sessionFactory.openSession();
		Transaction tx =  session.beginTransaction();
		Query query1 = session.createQuery(query);
		
		int result = query1.executeUpdate();
		tx.commit();
		return result;		
	}

	public static Object getObjectByQuery(String query)
	{
		Session session = sessionFactory.openSession();
		Transaction tx =  session.beginTransaction();
		Query query1 = session.createQuery(query);
		
		Object result = query1.executeUpdate();
		tx.commit();
		return result;		
	}
	}
	

