package shop.bean;

import java.sql.Date;

import org.springframework.stereotype.Component;

import lombok.Data;

@Component
@Data
public class ProductDTO {
	private String product_name_kor;
	private String product_name_eng;
	private String product_id;
	private String product_image;
	private String brand_name;
	private int gender_id;
	private int brand_id;
	private int category_id;
	private int released_price;
	private int product_likes;
	private int product_bookmark;
	private int pid;
	private Date created_at;
	

}
