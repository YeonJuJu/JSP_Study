package com.tjoeun.jsp.model;

public class ReserveListDTO {
	private int reserveno;
	private String name;
	private int price;
	private String img;
	private int quantity;
	private int days;
	private String rentdate;
	private int insurance;
	private int wifi;
	private int navigation;
	private int babyseat;
	
	
	public int getReserveno() {
		return reserveno;
	}
	public void setReserveno(int reserveno) {
		this.reserveno = reserveno;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public int getDays() {
		return days;
	}
	public void setDays(int days) {
		this.days = days;
	}
	public String getRentdate() {
		return rentdate;
	}
	public void setRentdate(String rentdate) {
		this.rentdate = rentdate;
	}
	public int getInsurance() {
		return insurance;
	}
	public void setInsurance(int insurance) {
		this.insurance = insurance;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getWifi() {
		return wifi;
	}
	public void setWifi(int wifi) {
		this.wifi = wifi;
	}
	public int getNavigation() {
		return navigation;
	}
	public void setNavigation(int navigation) {
		this.navigation = navigation;
	}
	public int getBabyseat() {
		return babyseat;
	}
	public void setBabyseat(int babyseat) {
		this.babyseat = babyseat;
	}
	
	
	
}
