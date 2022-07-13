package myPage.bean;

import java.util.Date;

public class MyPageBuyingDTO {
	private String image_url;
	private String brand_name;
	private int product_size_id;
	private Date created_at;
	private String name; //입찰상태명
	
	public String getImage_url() {
		return image_url;
	}
	public void setImage_url(String image_url) {
		this.image_url = image_url;
	}
	public String getBrand_name() {
		return brand_name;
	}
	public void setBrand_name(String brand_name) {
		this.brand_name = brand_name;
	}
	public int getProduct_size_id() {
		return product_size_id;
	}
	public void setProduct_size_id(int product_size_id) {
		this.product_size_id = product_size_id;
	}
	public Date getCreated_at() {
		return created_at;
	}
	public void setCreated_at(Date created_at) {
		this.created_at = created_at;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	
}
