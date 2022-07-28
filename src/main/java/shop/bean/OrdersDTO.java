package shop.bean;

import java.sql.Date;

import org.springframework.stereotype.Component;

import lombok.Data;

@Component
@Data
public class OrdersDTO {

	private int order_id; 
	private int order_status_id;
	private int biddings_id;
	private int buyer_id;
	private int seller_id;
	private Date created_at;
	private int  pid;
	

}

