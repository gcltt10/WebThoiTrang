package model;

import java.sql.Date;

public class promotion {
	private int idpromotion;
	private String promotion_name;
	private Date start;
	private Date end;
	private int discout;
	public int getIdpromotion() {
		return idpromotion;
	}
	public void setIdpromotion(int idpromotion) {
		this.idpromotion = idpromotion;
	}
	public String getPromotion_name() {
		return promotion_name;
	}
	public void setPromotion_name(String promotion_name) {
		this.promotion_name = promotion_name;
	}
	public Date getStart() {
		return start;
	}
	public void setStart(Date start) {
		this.start = start;
	}
	public Date getEnd() {
		return end;
	}
	public void setEnd(Date end) {
		this.end = end;
	}
	public int getDiscout() {
		return discout;
	}
	public void setDiscout(int discout) {
		this.discout = discout;
	}
	

}
