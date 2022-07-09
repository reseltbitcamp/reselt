package notice.bean;

import org.springframework.stereotype.Component;

import lombok.Data;

@Component
@Data
public class NoticePaging {
	private int currentPage; //�쁽�옱�럹�씠吏�
	private int pageBlock; //[�씠�쟾][1][2][3][�떎�쓬]
	private int pageSize; //1�럹�씠吏��떦 10媛쒖뵫
	private int totalA; //珥앷��닔
	private StringBuffer pagingHTML;
	
	
	
	public void makePagingHTML() {
		pagingHTML = new StringBuffer();
		
		//int totalP = (totalA-1) / pageSize + 1; //珥� �럹�씠吏� �닔
		int totalP = (totalA + pageSize-1) / pageSize;
		
		int startPage = (currentPage-1) / pageBlock * pageBlock + 1; //�떆�옉 �럹�씠吏� 踰덊샇
		
		int endPage = startPage + pageBlock - 1;
		if(endPage > totalP) endPage = totalP;
		
		if(startPage > pageBlock) //if(startPage != 1) �몮 �떎 媛��뒫
			pagingHTML.append("[ <span id='paging' onclick='noticePaging("+ (startPage-1) + ")'>�씠�쟾</span> ]");
		
		for(int i=startPage; i<=endPage; i++) {
			if(i == currentPage) 
				pagingHTML.append("[ <span id='currentPaging' class='underline text-red cursor-pointer' onclick='noticePaging(" + i + ")'>" + i + "</span>]");
			else 
				pagingHTML.append("[ <span id='paging' onclick='noticePaging(" + i + ")'>" + i + "</span> ]");
		}
		
		if(endPage < totalP)
			pagingHTML.append("[ <span id='paging' onclick='noticePaging("+ (endPage+1) + ")'>�떎�쓬</span> ]");

	}


}
