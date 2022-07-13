package myPage.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import myPage.bean.MyPageBuyingDTO;
import myPage.dao.MyPageBuyingDAO;

@Service
public class MyPageBuyingServiceImpl implements MyPageBuyingService {

	@Autowired
	private MyPageBuyingDAO myPageBuyingDAO;
	
	@Override
	public List<MyPageBuyingDTO> getBuying() {
		
		String member_id = "111"; //임의의 값
		return myPageBuyingDAO.getBuying(member_id);
	}

}
