package com.dto;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="Orders")
public class Orders {	
		@Id@GeneratedValue
		private int orderId;
		@Column(length=10)
		private int custId1;
		@Column(length=20)
		private String date1;
		
		public Orders(int orderId, int custId1, String date) {
			super();
			this.orderId = orderId;
			this.custId1 = custId1;
			this.date1 = date;
		}
		
		public Orders(int custId1, String date) {
			super();
			this.custId1 = custId1;
			this.date1 = date;
		}

		public Orders() {
			// TODO Auto-generated constructor stub
		}

		public int getOrderId() {
			return orderId;
		}
		public void setOrderId(int orderId) {
			this.orderId = orderId;
		}
		public int getCustId1() {
			return custId1;
		}
		public void setCustId1(int custId1) {
			this.custId1 = custId1;
		}
		public String getDate1() {
			return date1;
		}
		public void setDate1(String date) {
			this.date1 = date;
		}
		

	}



