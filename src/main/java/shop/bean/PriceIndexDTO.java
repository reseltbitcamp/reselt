package shop.bean;

import java.util.Date;

import org.springframework.stereotype.Component;

import lombok.Data;

@Component
@Data
public class PriceIndexDTO {
	private String product_id;
	private int price;
	private String logtime;
}
