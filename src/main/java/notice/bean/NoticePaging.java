package notice.bean;

import org.springframework.stereotype.Component;

import lombok.Data;

@Component
@Data
public class NoticePaging {
	private int currentPage; //현재페이지
	private int pageBlock; //[이전][1][2][3][다음]
	private int pageSize; //1페이지당 10개씩
	private int totalA; //총글수
	private StringBuffer pagingHTML;
	
	public void makePagingHTML() {
		pagingHTML = new StringBuffer();
		
		//int totalP = (totalA-1) / pageSize + 1; //총 페이지 수
		int totalP = (totalA + pageSize-1) / pageSize;
		
		int startPage = (currentPage-1) / pageBlock * pageBlock + 1; //시작 페이지 번호
		
		int endPage = startPage + pageBlock - 1;
		if(endPage > totalP) endPage = totalP;
		
		if(startPage > pageBlock) //if(startPage != 1) 둘 다 가능
			pagingHTML.append("[ <span id='paging' onclick='noticePaging("+ (startPage-1) + ")'>이전</span> ]");
		
		for(int i=startPage; i<=endPage; i++) {
			if(i == currentPage) 
				pagingHTML.append("[ <span id='currentPaging' onclick='noticePaging(" + i + ")'>" + i + "</span>]");
			else 
				pagingHTML.append("[ <span id='paging' onclick='noticePaging(" + i + ")'>" + i + "</span> ]");
		}
		
		if(endPage < totalP)
			pagingHTML.append("[ <span id='paging' onclick='noticePaging("+ (endPage+1) + ")'>다음</span> ]");

	}


}
