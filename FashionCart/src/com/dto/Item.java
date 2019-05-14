package com.dto;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.annotations.NotFound;
import org.hibernate.annotations.NotFoundAction;

@Entity
@Table(name="Item")
public class Item {
	@Id@GeneratedValue
	int itemId;
	@Column(length=20)
	String itemName;
	@Column(length=30)
	String image;
	@Column(length=100)
	String ftr1;
	@Column(length=100)
	String ftr2;
	@Column(length=100)
	String ftr3;
	@Column(length=100)
	String ftr4;
	@Column(length=20)
	Float price;
	@NotFound(action = NotFoundAction.IGNORE)
	//private Cart cart;
	@ManyToOne
	@JoinColumn(name="SubID")
	private SubCategory subcategory;
	
	public Item(int itemId, String itemName, String image, String ftr1, String ftr2, String ftr3, String ftr4,
			Float price, SubCategory subcategory) {
		super();
		this.itemId = itemId;
		this.itemName = itemName;
		this.image = image;
		this.ftr1 = ftr1;
		this.ftr2 = ftr2;
		this.ftr3 = ftr3;
		this.ftr4 = ftr4;
		this.price = price;
		this.subcategory = subcategory;
	}
	public Item() {
		super();
	}
	public int getItemId() {
		return itemId;
	}
	public void setItemId(int itemId) {
		this.itemId = itemId;
	}
	public String getItemName() {
		return itemName;
	}
	public void setItemName(String itemName) {
		this.itemName = itemName;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getFtr1() {
		return ftr1;
	}
	public void setFtr1(String ftr1) {
		this.ftr1 = ftr1;
	}
	public String getFtr2() {
		return ftr2;
	}
	public void setFtr2(String ftr2) {
		this.ftr2 = ftr2;
	}
	public String getFtr3() {
		return ftr3;
	}
	public void setFtr3(String ftr3) {
		this.ftr3 = ftr3;
	}
	public String getFtr4() {
		return ftr4;
	}
	public void setFtr4(String ftr4) {
		this.ftr4 = ftr4;
	}
	public Float getPrice() {
		return price;
	}
	public void setPrice(Float price) {
		this.price = price;
	}
	public SubCategory getSubcategory() {
		return subcategory;
	}
	public void setSubcategory(SubCategory subcategory) {
		this.subcategory = subcategory;
	}
	@Override
	public String toString() {
		return "Item [itemId=" + itemId + ", itemName=" + itemName + ", image=" + image + ", ftr1=" + ftr1 + ", ftr2="
				+ ftr2 + ", ftr3=" + ftr3 + ", ftr4=" + ftr4 + ", price=" + price + ", subcategory=" + subcategory
				+ "]";
	}
	
	
}
