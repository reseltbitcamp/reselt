package shop.bean;

import java.sql.Date;

import org.springframework.stereotype.Component;

import lombok.Data;

@Component
@Data
public class ProductDTO {
   private int pid;
   private String product_name_kor;
   private String product_name_eng;
   private String product_id;
   private int category_id;
   private String gender_name;
   private String brand_name;
   private int released_price;
   private Date created_at;
   private int product_likes;
   private int product_bookmark;
   private String img_file;
   private String category_name_eng;
   private int buy_bidding_price;
   private int sell_bidding_price;
}