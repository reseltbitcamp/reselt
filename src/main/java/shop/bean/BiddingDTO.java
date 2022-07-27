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
	private String product_size;
	private int bidding_price;
	private String position;
	private String status;
	private int matched_bidding_id;
	private Date created_at;
}
