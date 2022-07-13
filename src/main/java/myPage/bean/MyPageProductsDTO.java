package myPage.bean;

import java.util.Date;

public class MyPageProductsDTO {
	private int product_id;
	private int brand_id;
	private String product_name;
	private String pid_number;
	private int released_price;
	private Date created_at;
	private Date updated_at;
	private String image_url;
	private String product_detail;
	public int getProduct_id() {
		return product_id;
	}
	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}
	public int getBrand_id() {
		return brand_id;
	}
	public void setBrand_id(int brand_id) {
		this.brand_id = brand_id;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public String getPid_number() {
		return pid_number;
	}
	public void setPid_number(String pid_number) {
		this.pid_number = pid_number;
	}
	public int getReleased_price() {
		return released_price;
	}
	public void setReleased_price(int released_price) {
		this.released_price = released_price;
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
	public String getImage_url() {
		return image_url;
	}
	public void setImage_url(String image_url) {
		this.image_url = image_url;
	}
	public String getProduct_detail() {
		return product_detail;
	}
	public void setProduct_detail(String product_detail) {
		this.product_detail = product_detail;
	}
	
	
}
