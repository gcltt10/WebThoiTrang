package model;

import java.sql.Date;

public class bills {
	
	private int billID;
	private int customerID;
	private float totalMoney;
	private String delivery;
	private Date dateOrders;
	
	public bills() {}

	public int getBillID() {
		return billID;
	}

	public void setBillID(int billID) {
		this.billID = billID;
	}

	public int getCustomerID() {
		return customerID;
	}

	public void setCustomerID(int customerID) {
		this.customerID = customerID;
	}

	public float getTotalMoney() {
		return totalMoney;
	}

	public void setTotalMoney(float totalMoney) {
		this.totalMoney = totalMoney;
	}

	public String getDelivery() {
		return delivery;
	}

	public void setDelivery(String delivery) {
		this.delivery = delivery;
	}

	public Date getDateOrders() {
		return dateOrders;
	}

	public void setDateOrders(Date dateOrders) {
		this.dateOrders = dateOrders;
	}
	
	

}
