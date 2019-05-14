package com.dto;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.annotations.NotFound;
import org.hibernate.annotations.NotFoundAction;

@Entity
@Table(name="Customer")
public class Customer {
	@Id@GeneratedValue
	private int custId;
	@Column(length=20)
	private String userName;
	@Column(length=20)
	private String password;
	@Column(length=30)
	private String firstName;
	@Column(length=30)
	private String lastName;
	@Column(length=10)
	private String gender;
	@Column(length=40)
	private String email;
	@Column(length=15)
	private String phoneNum;
	@Column(length=20)
	private String doorNum;
	@Column(length=40)
	private String street;
	@Column(length=40)
	private String city;
	@Column(length=40)
	private String state;
	@Column(length=50)
	private String profilePath;
	@NotFound(action = NotFoundAction.IGNORE)
	@OneToMany(mappedBy="customer")	
	private List<Cart> cart = new ArrayList<Cart>();
	
	public Customer() {
		super();
	}
	public Customer(String userName, String password, String firstName, String lastName, String gender, String email,
			String phoneNum) {
		super();
		this.userName = userName;
		this.password = password;
		this.firstName = firstName;
		this.lastName = lastName;
		this.gender = gender;
		this.email = email;
		this.phoneNum = phoneNum;
	}
	public Customer(String userName, String password, String firstName, String lastName, String gender,
			String email, String phoneNum, String doorNum, String street, String city, String state) {
		super();
		this.userName = userName;
		this.password = password;
		this.firstName = firstName;
		this.lastName = lastName;
		this.gender = gender;
		this.email = email;
		this.phoneNum = phoneNum;
		this.doorNum = doorNum;
		this.street = street;
		this.city = city;
		this.state = state;
	}
	public int getCustId() {
		return custId;
	}
	public void setCustId(int custId) {
		this.custId = custId;
	}
	public String getProfilePath() {
		return profilePath;
	}
	public void setProfilePath(String profilePath) {
		this.profilePath = profilePath;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhoneNum() {
		return phoneNum;
	}
	public void setPhoneNum(String phoneNum) {
		this.phoneNum = phoneNum;
	}
	public String getDoorNum() {
		return doorNum;
	}
	public void setDoorNum(String doorNum) {
		this.doorNum = doorNum;
	}
	public String getStreet() {
		return street;
	}
	public void setStreet(String street) {
		this.street = street;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public List<Cart> getCart() {
		return cart;
	}
	public void setCart(List<Cart> cart) {
		this.cart = cart;
	}
	
}
