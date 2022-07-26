package admin.bean;

public class AdminProductListDTO {

	int pid;
	String product_name_eng, product_name_kor;
	String created_at;
	
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public String getProduct_name_eng() {
		return product_name_eng;
	}
	public void setProduct_name_eng(String product_name_eng) {
		this.product_name_eng = product_name_eng;
	}
	public String getProduct_name_kor() {
		return product_name_kor;
	}
	public void setProduct_name_kor(String product_name_kor) {
		this.product_name_kor = product_name_kor;
	}
	public String getCreated_at() {
		return created_at;
	}
	public void setCreated_at(String created_at) {
		this.created_at = created_at;
	}
	
	
	
}
