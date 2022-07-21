<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<div class="layer_search fixed t-0 r-0 b-0 h-[100%] w-[100%] bg-[rgba(34,34,34,.5)] overflow-y-auto z-[900] flex">
  <div class="layer_container w-[100%] overflow-hidden">
    <div class="layer_content p-0 m-auto">
      
      <div class="search_container bg-[#fff] box-border">
        
        <div class="search_wrap pt-[25px] px-[40px] pb-[19px] m-auto w-[704px] flex">
          
          <div class="search_area flex-1 mr-[20px] block">
            
            <div class="search relative py-0 pr-[40px] pl-[44px] bg-[#f4f4f4] rounded-[8px] h-[40px]">
			  <input type="text" placeholder="브랜드명, 모델명, 모델번호 등" title="검색창" id="input_search" class="input_search w-[100%] h-[100%] transition-all text-[14px] tracking-[-.21px] border-none bg-[#f4f4f4]">
            </div>
            
          </div>
          
          <button class="searchBtn ml-auto p-0 border-0 bg-[rgba(0,0,0,0)] appearance-none" onclick='recentSearch()'>검색</button>&nbsp;&nbsp;
          <button class="searchBtn ml-auto p-0 border-0 bg-[rgba(0,0,0,0)] appearance-none" onclick='itemSearch()'>임시</button>&nbsp;&nbsp;
          <button class="btn_close ml-auto p-0 border-0 bg-[rgba(0,0,0,0)] appearance-none" onclick="location.href='/ReseltProject/'">취소</button>
        </div>
        
      </div>
      
      <div class="search_content_wrap block block bg-[#fff]">
        
        <div class="recent_area relative pb-[42px] w-[704px] m-auto">
          
          <div class="recent_box pt-0 px-[40px] pb-[21px] block">
            <strong class="recent_title inline-block leading-[20px] text-[12px] text-black align-middle font-bold">최근 검색어</strong>
            <button class="btn_delete inline-block align-middle pt-[8px] pr-[5px] pb-[3px] pl-[1px] ml-[5px]" onclick='recentSearchReset()'>x
            </button>
            <ul id="search_list" class="search_list mt-[4px] list-none m-0 p-0">
              <li class="list_item">
                <a class="search_item block max-w-[650px] overflow-hidden text-ellipsis whitespace-nowrap text-[14px] tracking-[-.21px] leading-[32px] text-[rgba(34,34,34,.8)]"></a>
              </li>
            </ul> <!-- append로 li 추가 -->
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
              <div class="suggest_item h-[84px] border-b-[1px] border-b-solid border-b-[#ebebeb]">
                <a class="suggest_link align-center h-[100%] text-inherit flex">
                  <div class="suggest_thumb overflow-hidden mr-[7px] w-[70px] h-[70px] shrink-0 rounded-[8px] block">
                    <img class="thumb_img w-[100%] h-[100%]" src="https://kream-phinf.pstatic.net/MjAyMjA0MThfMTA1/MDAxNjUwMjQ1OTA0MjUx.ZRPWkYAT-DiTglB1ujM9dw_osqHe230Ozj3Xp9QDjmQg.CPrvFDxaeBRtQy48U2De-VfdJD5cNxp0DgDucyt2f4og.JPEG/a_d8dfb45da4cd47f3bf67ccd3ff0b2eb4.jpg">
                  </div>
                  <div class="suggest_info">
                    <p class="model_title overflow-hidden text-ellipsis text-[14px] tracking-[-.21px]">상품영어</p>
                    <p class="model_sub_info mt-[2px] text-[12px] tracking-[-.06px] text-[rgba(34,34,34,.5)]">상품한글</p>
                  </div>
                </a>
              </div>
              <div class="suggest_item h-[84px] border-b-[1px] border-b-solid border-b-[#ebebeb]">
                <a class="suggest_link align-center h-[100%] text-inherit flex">
                  <div class="suggest_thumb overflow-hidden mr-[7px] w-[70px] h-[70px] shrink-0 rounded-[8px] block">
                    <img class="thumb_img w-[100%] h-[100%]" src="https://kream-phinf.pstatic.net/MjAyMTEwMTRfNTIg/MDAxNjM0MjA1NzQ2NTYw.1QdEB-0rYUmxNkt8JD4XsIVknAaHUhQfM2nkMfPRw6Ig.1SUHYGfZc0S-K7_ls_OYEiWVKfeZVe6qgsuugyI2Clcg.PNG/a_39b383a25b8a4ab1aef1b18d3326f6e7.png">
                  </div>
                  <div class="suggest_info">
                    <p class="model_title overflow-hidden text-ellipsis text-[14px] tracking-[-.21px]">상품영어</p>
                    <p class="model_sub_info mt-[2px] text-[12px] tracking-[-.06px] text-[rgba(34,34,34,.5)]">상품한글</p>
                  </div>
                </a>
              </div>
              <div class="suggest_item h-[84px] border-b-[1px] border-b-solid border-b-[#ebebeb]">
                <a class="suggest_link align-center h-[100%] text-inherit flex">
                  <div class="suggest_thumb overflow-hidden mr-[7px] w-[70px] h-[70px] shrink-0 rounded-[8px] block">
                    <img class="thumb_img w-[100%] h-[100%]" src="https://kream-phinf.pstatic.net/MjAyMTEwMTRfNTIg/MDAxNjM0MjA1NzQ2NTYw.1QdEB-0rYUmxNkt8JD4XsIVknAaHUhQfM2nkMfPRw6Ig.1SUHYGfZc0S-K7_ls_OYEiWVKfeZVe6qgsuugyI2Clcg.PNG/a_39b383a25b8a4ab1aef1b18d3326f6e7.png">
                  </div>
                  <div class="suggest_info">
                    <p class="model_title overflow-hidden text-ellipsis text-[14px] tracking-[-.21px]">상품영어</p>
                    <p class="model_sub_info mt-[2px] text-[12px] tracking-[-.06px] text-[rgba(34,34,34,.5)]">상품한글</p>
                  </div>
                </a>
              </div>
              <div class="suggest_item h-[84px] border-b-[1px] border-b-solid border-b-[#ebebeb]">
                <a class="suggest_link align-center h-[100%] text-inherit flex">
                  <div class="suggest_thumb overflow-hidden mr-[7px] w-[70px] h-[70px] shrink-0 rounded-[8px] block">
                    <img class="thumb_img w-[100%] h-[100%]" src="https://kream-phinf.pstatic.net/MjAyMTEwMTRfNTIg/MDAxNjM0MjA1NzQ2NTYw.1QdEB-0rYUmxNkt8JD4XsIVknAaHUhQfM2nkMfPRw6Ig.1SUHYGfZc0S-K7_ls_OYEiWVKfeZVe6qgsuugyI2Clcg.PNG/a_39b383a25b8a4ab1aef1b18d3326f6e7.png">
                  </div>
                  <div class="suggest_info">
                    <p class="model_title overflow-hidden text-ellipsis text-[14px] tracking-[-.21px]">상품영어</p>
                    <p class="model_sub_info mt-[2px] text-[12px] tracking-[-.06px] text-[rgba(34,34,34,.5)]">상품한글</p>
                  </div>
                </a>
              </div>
              <div class="suggest_item h-[84px] border-b-[1px] border-b-solid border-b-[#ebebeb]">
                <a class="suggest_link align-center h-[100%] text-inherit flex">
                  <div class="suggest_thumb overflow-hidden mr-[7px] w-[70px] h-[70px] shrink-0 rounded-[8px] block">
                    <img class="thumb_img w-[100%] h-[100%]" src="https://kream-phinf.pstatic.net/MjAyMTEwMTRfNTIg/MDAxNjM0MjA1NzQ2NTYw.1QdEB-0rYUmxNkt8JD4XsIVknAaHUhQfM2nkMfPRw6Ig.1SUHYGfZc0S-K7_ls_OYEiWVKfeZVe6qgsuugyI2Clcg.PNG/a_39b383a25b8a4ab1aef1b18d3326f6e7.png">
                  </div>
                  <div class="suggest_info">
                    <p class="model_title overflow-hidden text-ellipsis text-[14px] tracking-[-.21px]">상품영어</p>
                    <p class="model_sub_info mt-[2px] text-[12px] tracking-[-.06px] text-[rgba(34,34,34,.5)]">상품한글</p>
                  </div>
                </a>
              </div>
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

//검색List 활성화
$(function(){
  $('.suggest_wrap').hide();
	
  $('.input_search').click(function(){
    if($('.input_search').val() != '')
      $('.suggest_wrap').show();
  });
  
});

//최근 검색어
$('.recent_box').hide()

function recentSearch(){
  $('.recent_box').show()
	
  var recent_search = document.getElementById('search_list')
  
  recent_search.innerHTML += '<li>'+ $('.input_search').val() +'</li>'
  $('.input_search').val('')
}

function recentSearchReset(){
  $('.recent_box').hide()
  $('#search_list').empty()
}

function itemSearch(){
  $('.suggest_wrap').show()
}
 

</script>





