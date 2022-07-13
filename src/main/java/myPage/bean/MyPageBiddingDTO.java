package myPage.bean;

import java.util.Date;

public class MyPageBiddingDTO {
	private int id;
	private int member_id;
	private int status_id;
	private int bidding_position_id;
	private int product_size_id;
	private int price;
	private Date created_at;
	private Date updated_at;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getMember_id() {
		return member_id;
	}
	public void setMember_id(int member_id) {
		this.member_id = member_id;
	}
	public int getStatus_id() {
		return status_id;
	}
	public void setStatus_id(int status_id) {
		this.status_id = status_id;
	}
	public int getBidding_position_id() {
		return bidding_position_id;
	}
	public void setBidding_position_id(int bidding_position_id) {
		this.bidding_position_id = bidding_position_id;
	}
	public int getProduct_size_id() {
		return product_size_id;
	}
	public void setProduct_size_id(int product_size_id) {
		this.product_size_id = product_size_id;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public Date getCreated_at() {
		return created_at;
	}
	public void setCreated_at(Date created_at) {
		this.created_at = created_at;
	}
	public Date getUpdated_at() {
		return updated_at;
	}
	public void setUpdated_at(Date updated_at) {
		this.updated_at = updated_at;
	}
	
	
	
}
