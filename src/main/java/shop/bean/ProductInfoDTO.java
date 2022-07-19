package shop.bean;

import java.sql.Date;

import org.springframework.stereotype.Component;

import lombok.Data;

@Component
@Data
public class ProductInfoDTO {
	private String product_name_kor;
	private String product_name_eng;
	private String product_id;
	private int category_id;
	private int released_price;
	private Date created_at;

}
