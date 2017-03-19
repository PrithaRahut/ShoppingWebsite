package com.shopping;

import com.googlecode.objectify.annotation.Entity;
import com.googlecode.objectify.annotation.Id;

@Entity
public class Order {
	
	String userName;

	@Id
	String userEmail;
	String clothCode;
	String clothPrice;
	String address;
	String city;
	String state;
	String pin;
	String size;
	int qty;
	
	public String getSize() {
		return size;
	}
	public void setSize(String size) {
		this.size = size;
	}
	public int getQty() {
		return qty;
	}
	public void setQty(int qty) {
		this.qty = qty;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
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
	public String getPin() {
		return pin;
	}
	public void setPin(String pin) {
		this.pin = pin;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getClothCode() {
		return clothCode;
	}
	public void setClothCode(String clothCode) {
		this.clothCode = clothCode;
	}
	public String getClothPrice() {
		return clothPrice;
	}
	public void setClothPrice(String clothPrice) {
		this.clothPrice = clothPrice;
	}

}
