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
@Table(name="Cart")
public class Cart {
	@Id@GeneratedValue
	int cartId;
	@Column(length=10)
	int quantity;
	@Column(length=10)
	int itemId1;
	@ManyToOne
	@JoinColumn(name="custId")
	private Customer customer;
	public Cart() {
		super();
	}
	public int getCartId() {
		return cartId;
	}

	public void setCartId(int cartId) {
		this.cartId = cartId;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	public int getItemId1() {
		return itemId1;
	}

	public void setItemId1(int itemId1) {
		this.itemId1 = itemId1;
	}

	
	public Cart(int cartId, int quantity, Customer customer, int itemId1) {
		super();
		this.cartId = cartId;
		this.quantity = quantity;
		this.customer = customer;
		this.itemId1 = itemId1;
	}

	
	}

	
	