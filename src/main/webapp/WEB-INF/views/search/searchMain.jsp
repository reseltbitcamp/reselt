<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<div class="layer_search fixed t-0 r-0 b-0 h-[100%] w-[100%] bg-[rgba(34,34,34,.5)] overflow-y-auto z-[900] flex">
  <div class="layer_container w-[100%]">
    <div class="layer_content p-0 m-auto">
      
      <div class="search_container bg-[#fff] box-border">
        
        <div class="search_wrap pt-[25px] px-[40px] pb-[19px] m-auto w-[704px] flex">
          
          <div class="search_area flex-1 mr-[20px] block">
            
            <div class="search relative py-0 pr-[40px] pl-[44px] bg-[#f4f4f4] rounded-[8px] h-[40px]">
			  <input type="text" placeholder="브랜드명, 모델명, 모델번호 등" title="검색창" class="input_search w-[100%] h-[100%] transition-all text-[14px] tracking-[-.21px] border-none bg-[#f4f4f4]">
            </div>
            
          </div>
          
          <button class="btn_close ml-auto p-0 border-0 bg-[rgba(0,0,0,0)] appearance-none">취소</button>
        </div>
        
      </div>
      
      <div class="search_content_wrap block block bg-[#fff]">
        
        <div class="recent_area relative pb-[42px] w-[704px] m-auto">
          
          <div class="recent_box pt-0 px-[40px] pb-[21px] block">
            <strong class="recent_title inline-block leading-[20px] text-[12px] text-black align-middle font-bold">최근 검색어</strong>
            <button class="btn_delete inline-block align-middle pt-[8px] pr-[5px] pb-[3px] pl-[1px] ml-[5px]">x
            </button>
            <ul class="search_list mt-[4px] list-none m-0 p-0"></ul> <!-- append로 li 추가 -->
          </div>
          
          <ul class="brand_list py-0 px-[40px] whitespace-nowrap">
            <li class="brand_item inline-block align-top rounded-[8px]">
              <a class="brand_box block w-[100px] h-[100px] text-center cursor-pointer text-inherit">
              <img src="https://kream-phinf.pstatic.net/MjAyMjA3MTVfNDkg/MDAxNjU3ODg0MjUyMTcz.IgPRfZsdskrKB1b8lI5PrWJPTaSRJqYIeNdAddKWZccg.a80U4BtQwsXym1oWeof-jJX3Mzbcnailh92NweFlyiQg.PNG/a_8d702a57d5b942058313a2cd84502a24.png" alt="포켓몬"
                    class="w-[80px] h-[80px] m-auto">
                <p class="brand_name max-w-[80px] mt-[-8px] mx-auto mb-0 text-[12px] block">포켓몬</p>
              </a>
            </li>
          </ul>
        
        </div>
        
        <div class="suggest_wrap bg-[#fff]">
          <div class="suggest_area w-[704px] pt-0 pr-[44px] pb-[23px] pl-[40px] my-0 mx-auto overflow-hidden relative ">
            <div class="suggest_title_area mr-[43px]"><p></p></div>
            <div class="suggest_list pr-[43px] max-h-[420px] overflow-y-auto">
              <div class="suggest_item h-[84px] border-b-[1px] border-b-solid border-b-[#ebebeb]"><a></a></div>
              <div class="suggest_item"><a></a></div>
            </div>
          </div>
        </div>
        
      </div>
    </div>
  </div>
</div>

<jsp:include page="../main/main.jsp"></jsp:include>

<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
$(function(){
  $('.suggest_wrap').hide();
	
  $('.input_search').click(function(){
    if($('.input_search').val() != '')
      $('.suggest_wrap').show();
  });
});

</script>





