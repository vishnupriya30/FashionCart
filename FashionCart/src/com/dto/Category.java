package com.dto;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
@Entity
@Table(name="Category")
public class Category {
	@Id@GeneratedValue
	int CatId;
	@Column(length=20)
	String CatName;
	@OneToMany(mappedBy="category")	
	private List <SubCategory> subcategory=new ArrayList<SubCategory>();
	
	public Category() {
		// TODO Auto-generated constructor stub
	}
	
	public Category(int catId, String catName) {
		super();
		CatId = catId;
		CatName = catName;
	}
	
	public int getCatId() {
		return CatId;
	}
	public void setCatId(int catId) {
		CatId = catId;
	}
	public String getCatName() {
		return CatName;
	}
	public void setCatName(String catName) {
		CatName = catName;
	}
}
