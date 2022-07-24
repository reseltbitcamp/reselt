package shop.bean;

import java.sql.Date;

import org.springframework.stereotype.Component;

import lombok.Data;

@Component
@Data
public class BiddingDTO {

	private int bidding_id;
	private int pid;
	private int member_id;
	private int status_id;
	private int product_size;
	private int bidding_price;
	private Date created_at;
	private Date update_at;
}
