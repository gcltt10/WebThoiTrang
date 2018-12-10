package model;

import java.sql.Date;

public class bills {
	private int idbills;
	private int id_customers;
	private Date date_payment;
	private float total_money;
	private String delivery;
	private Date date_orders;
	public int getIdbills() {
		return idbills;
	}
	public void setIdbills(int idbills) {
		this.idbills = idbills;
	}
	public int getId_customers() {
		return id_customers;
	}
	public void setId_customers(int id_customers) {
		this.id_customers = id_customers;
	}
	public Date getDate_payment() {
		return date_payment;
	}
	public void setDate_payment(Date date_payment) {
		this.date_payment = date_payment;
	}
	public float getTotal_money() {
		return total_money;
	}
	public void setTotal_money(float total_money) {
		this.total_money = total_money;
	}
	public String getDelivery() {
		return delivery;
	}
	public void setDelivery(String delivery) {
		this.delivery = delivery;
	}
	public Date getDate_orders() {
		return date_orders;
	}
	public void setDate_orders(Date date_orders) {
		this.date_orders = date_orders;
	}
	

}
