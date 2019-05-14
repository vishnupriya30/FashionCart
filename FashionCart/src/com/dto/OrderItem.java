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
import javax.persistence.Table;

@Entity
@Table(name="OrderItem")

public class OrderItem {
	@Id@GeneratedValue
	private int orderItemId;
	@Column(length=10)
	int orderId1;
	@Column(length=10)
	int itemId1;
	@Column(length=10)
	int quantity;
	
	public OrderItem() {
		super();
	}
	public OrderItem(int orderItemId, int orderId1, int itemId1, int quantity) {
		super();
		this.orderItemId = orderItemId;
		this.orderId1 = orderId1;
		this.itemId1 = itemId1;
		this.quantity = quantity;
	}
	public OrderItem(int orderId1, int itemId1, int quantity) {
		super();
		this.orderId1 = orderId1;
		this.itemId1 = itemId1;
		this.quantity = quantity;
		// TODO Auto-generated constructor stub
	}
	public int getOrderItemId() {
		return orderItemId;
	}
	public void setOrderItemId(int orderItemId) {
		this.orderItemId = orderItemId;
	}
	public int getOrderId1() {
		return orderId1;
	}
	public void setOrderId1(int orderId1) {
		this.orderId1 = orderId1;
	}
	public int getItemId1() {
		return itemId1;
	}
	public void setItemId1(int itemId1) {
		this.itemId1 = itemId1;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	
	

}
