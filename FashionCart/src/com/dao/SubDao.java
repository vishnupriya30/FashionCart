package com.dao;

import java.util.List;

import com.db.HibernateTemplate;
import com.dto.Customer;
import com.dto.SubCategory;

public class SubDao {
	@SuppressWarnings("unchecked")
	public List<SubCategory> getAllSubCategory() {
		List<SubCategory> subCategory=(List)HibernateTemplate.getObjectListByQuery("From SubCategory");
		System.out.println("Inside All SubCategory ..."+subCategory);
		return subCategory;	
	}

	public static SubCategory getSubCategory(int id) {
		return (SubCategory)HibernateTemplate.getObject(SubCategory.class,id);
	}

}
