package com.dto;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;


@Entity

public class SubCategory {
	@Id@GeneratedValue
	int SubId;
	@Column(length = 20)
	String SubName;
	
	@OneToMany(mappedBy="subcategory")	
	private List <Item> items=new ArrayList<Item>();
	
	@ManyToOne
	@JoinColumn(name="CatID")
	private Category category;
	
	public SubCategory(int subId, String subName, Category category) {
		super();
		this.SubId = subId;
		this.SubName = subName;
		this.category = category;
	}
	public SubCategory() {
		super();
	}
	public int getSubId() {
		return SubId;
	}
	public void setSubId(int subId) {
		SubId = subId;
	}
	public String getSubName() {
		return SubName;
	}
	public void setSubName(String subName) {
		SubName = subName;
	}
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
	

}
