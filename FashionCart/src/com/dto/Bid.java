package com.dto;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Bid")
public class Bid {
	@Id@GeneratedValue
	int bidId;
	@Column(length=10)
	int custId1;
	@Column(length=10)
	double price;
	@Column(length=10)
	String status;
	public Bid() {
		super();
	}
	public Bid(int custId1, double price) {
		super();
		this.custId1 = custId1;
		this.price = price;
	}
	
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public int getBidId() {
		return bidId;
	}
	public void setBidId(int bidId) {
		this.bidId = bidId;
	}
	public int getCustId1() {
		return custId1;
	}
	public void setCustId1(int custId1) {
		this.custId1 = custId1;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	
	

}
