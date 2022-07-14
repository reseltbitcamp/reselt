<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../css/myPage.css"/>
<title>Insert title here</title>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css"/>
</head>
<body>
<div class="container mt-0 mb-0 p-10 pb-40 px-[100px]">
      <div>
        <div class="float-left mr-5 w-[180px]">
          <a href="/ReseltProject/myPage/myMain" class="nuxt-link-active text no-underline">
            <h2 class="pb-[30px] text-2xl font-bold leading-7 tracking-[-.15px]">마이 페이지</h2>
          </a>

          <nav>
            <div>
              <strong class="mb-3 inline-block align-top text-lg font-bold leading-[22px] tracking-[-.27px]">쇼핑 정보</strong>
              <ul class="list-none">
                <li class="list-none"><a class="text-[15px] leading-[18px] tracking-[-.15px] text-[#222]" href="/ReseltProject/myPage/buying">구매 내역</a></li>
                <li class="mt-3 list-none"><a class="text-[15px] leading-[18px] tracking-[-.15px] text-[#222]" href="/ReseltProject/myPage/selling">판매 내역</a></li>
                <li class="mt-3 list-none"><a class="text-[15px] leading-[18px] tracking-[-.15px] text-[#222]" href="/ReseltProject/myPage/wish">관심 상품</a></li>
              </ul>
            </div>

            <div class="mt-10">
              <strong class="mb-3 inline-block align-top text-lg font-bold leading-[22px] tracking-[-.27px]">내 정보</strong>
              <ul class="list-none">
                <li class="mt-3 list-none"><a class="menu_link text-[15px] leading-[18px] tracking-[-.15px] text-[#222]" href="/ReseltProject/myPage/profile">프로필 정보</a></li>
                <li class="mt-3 list-none"><a class="menu_link text-[15px] leading-[18px] tracking-[-.15px] text-[#222]" href="/ReseltProject/myPage/payment">결제 정보</a></li>
              </ul>
            </div>
          </nav>
          <!--snb-->
        </div>
        <!--snb_area-->
      </div>
      <!--nav-->



 <div class="content content_area min-h-[380px] overflow-hidden">

<div class="my_purchase">
  <div class="content_title flex pt-[5px] pb-[6px]">
    <div class="title text-[24px] tracking-[-.36px]">
      <h3 class="leading-[29px] text-inherit font-semibold">판매 내역</h3>
    </div>
  </div>

  <!--tab_on은 클릭 시 이벤트-->
  <div class="purchase_list_tab detail_tab bg-[#fff] rounded-[0px] mt-[20px] table table-fixed w-full">

    <div class="tab_item tab_on table-cell text-center">
      <a href="#" class="tab_link border-b-[2px] border-b-solid border-b-[#222] pt-[12px] h-[68px] relative block ">
        <dl class="tab_box flex flex-col-reverse ">
          <dt class="title text-[#222] font-bold">판매 입찰</dt>
          <dd class="count text-[#31b46e] mt-[0px] text-[20px] leading-[24px] tracking-[-.1px]">0</dd>
        </dl>
      </a>
    </div>

    <div class="tab_item table-cell text-center">
      <a href="#" class="tab_link border-b-[1px] border-b-solid border-b-[#d3d3d3] pt-[12px] h-[68px] relative block">
        <dl class="tab_box flex flex-col-reverse">
          <dt class="title text-[##22222280]">진행 중</dt>
          <dd class="count mt-[0px] text-[20px] leading-[24px] tracking-[-.1px]">0</dd>
        </dl>
      </a>
    </div>
    
    <div class="tab_item table-cell text-center">
      <a href="#" class="tab_link border-b-[1px] border-b-solid border-b-[#d3d3d3] pt-[12px] h-[68px] relative block">
        <dl class="tab_box flex flex-col-reverse">
          <dt class="title text-[##22222280]">종료</dt>
          <dd class="count mt-[0px] text-[20px] leading-[24px] tracking-[-.1px]">0</dd>
        </dl>
      </a>
    </div>

  </div>


  
  <div class="period_search flex justify-center p-[14px] bg-[#fafafa] border-b-[1px] border-b-solid border-b-[#ebebeb]">
    
    <div class="period_month mr-[20px]">
      <ul class="month_list flex">
        <li class="month_item flex">
          <a onClick="setSearchDate('2m')" class="month_link flex px-[12px] min-w-[62px] h-[32px] leading-[30px] bg-[#fff] border-[1px] border-solid border-[#ebebeb] text-[13px] tracking-[-.07px] text-[#22222280] justify-center">최근 2개월</a>
        </li>
        <li class="month_item flex">
          <a onClick="setSearchDate('4m')" class="month_link flex px-[12px] min-w-[62px] h-[32px] leading-[30px] bg-[#fff] border-[1px] border-solid border-[#ebebeb] text-[13px] tracking-[-.07px] text-[#22222280] justify-center">4개월</a>
        </li>
        <li class="month_item flex">
          <a onClick="setSearchDate('6m')" class="month_link flex px-[12px] min-w-[62px] h-[32px] leading-[30px] bg-[#fff] border-[1px] border-solid border-[#ebebeb] text-[13px] tracking-[-.07px] text-[#22222280] justify-center">6개월</a>
        </li>
      </ul>
    </div>

    <div class="period_calendar_wrapper flex">
      <div class="period_calendar relative">

        <div class="calendar_wrap relative pr-[30px] pl-[12px] inline-block w-[180px] h-[32px] leading-[30px] align-top border-[1px] border-solid border-[#fff] cursor-pointer">
          <span class="dset">
            <input type="text" class="h-[32px] datepicker inpType cal_input" name="searchStartDate" id="searchStartDate" >
            <span class="cal_btn absolute top-1/2 right-3 mt-[-9px] w-[18px] h-[18px] bg-[length:18px_18px] bg-[url('data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIGZpbGw9Im5vbmUiIHZpZXdCb3g9IjAgMCA1NiA1NiI+PHBhdGggZmlsbD0iI0JCQiIgZD0iTTIxIDI1LjY2N2gtNC42Njd2NC42NjZIMjF2LTQuNjY2em05LjMzMyAwaC00LjY2NnY0LjY2Nmg0LjY2NnYtNC42NjZ6bTkuMzM0IDBIMzV2NC42NjZoNC42Njd2LTQuNjY2em00LjY2Ni0xNi4zMzRINDJWNC42NjdoLTQuNjY3djQuNjY2SDE4LjY2N1Y0LjY2N0gxNHY0LjY2NmgtMi4zMzNjLTIuNTkgMC00LjY0NCAyLjEtNC42NDQgNC42NjdMNyA0Ni42NjdhNC42NjYgNC42NjYgMCAwMDQuNjY3IDQuNjY2aDMyLjY2NkE0LjY4IDQuNjggMCAwMDQ5IDQ2LjY2N1YxNGE0LjY4IDQuNjggMCAwMC00LjY2Ny00LjY2N3ptMCAzNy4zMzRIMTEuNjY3VjIxaDMyLjY2NnYyNS42Njd6Ii8+PC9zdmc+')]"></span>
            <!-- <a href="#none" class="btncalendar dateclick">달력</a> -->
          <span/>
        </div>

        <span class="swung_dash inline-block text-[14px] tracking-[-.21px] leading-[32px] text-[#22222280]">~</span>

        <div class="calendar_wrap relative pr-[30px] pl-[12px] inline-block w-[180px] h-[32px] leading-[30px] align-top border-[1px] border-solid border-[#fff] cursor-pointer">
          <span class="dset">
            <div class="calendar">
              <input type="text" class="h-[32px] datepicker inpType" name="searchEndDate" id="searchEndDate" >
               <span class="cal_btn absolute top-1/2 right-3 mt-[-9px] w-[18px] h-[18px] bg-[length:18px_18px] bg-[url('data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIGZpbGw9Im5vbmUiIHZpZXdCb3g9IjAgMCA1NiA1NiI+PHBhdGggZmlsbD0iI0JCQiIgZD0iTTIxIDI1LjY2N2gtNC42Njd2NC42NjZIMjF2LTQuNjY2em05LjMzMyAwaC00LjY2NnY0LjY2Nmg0LjY2NnYtNC42NjZ6bTkuMzM0IDBIMzV2NC42NjZoNC42Njd2LTQuNjY2em00LjY2Ni0xNi4zMzRINDJWNC42NjdoLTQuNjY3djQuNjY2SDE4LjY2N1Y0LjY2N0gxNHY0LjY2NmgtMi4zMzNjLTIuNTkgMC00LjY0NCAyLjEtNC42NDQgNC42NjdMNyA0Ni42NjdhNC42NjYgNC42NjYgMCAwMDQuNjY3IDQuNjY2aDMyLjY2NkE0LjY4IDQuNjggMCAwMDQ5IDQ2LjY2N1YxNGE0LjY4IDQuNjggMCAwMC00LjY2Ny00LjY2N3ptMCAzNy4zMzRIMTEuNjY3VjIxaDMyLjY2NnYyNS42Njd6Ii8+PC9zdmc+')]"></span>
             <!--  <a href="#none" class="btncalendar dateclick">달력</a> -->
            </div>
           </span>
        </div>
        
      </div> <!--calendar-->

      <div class="period_btn_box ml-[4px]">
        <button class="is_active btn_search px-[16px] ml-[7px] mt-[1px] h-[32px] leading-[34px] text-[13px] tracking-[-.07px] border-[1px] border-solid cursor-pointer bg-[#222] border-[#d3d3d3] text-[#fff]">조회</button>
      </div>
    </div> <!--wrapper-->
  </div>



<ul class="search_info py-[12px]">
  <li class="info_item relative pl-[7px] text-[12px] tracking-[-.06px] text-[#22222280] mb-[3px]">
    <p>한 번에 조회 가능한 기간은 최대 6개월입니다.</p>
  </li>
  <li class="info_item relative pl-[7px] text-[12px] tracking-[-.06px] text-[#22222280]">
    <p>기간별 조회 결과는 입찰일 기준으로 노출됩니다</p>
  </li>
</ul>


<div class="purchase_list">
  <div class="purchase_head flex p-[12px] items-center border-b-[1px] border-b-solid border-b-[#ebebeb]">
    
    <div class="head_product flex h-[38px]">
      <a class="btn_filter relative py-[5px] pr-[30px] pl-[10px] inline-block w-[120px] leading-[24px] bg-[#fff] border-[1px] border-solid border-[#d3d3d3] rounded-[12px] text-[13px] tracking-[-.07px]">
        	전체
      </a>
      <svg data-v-33da0054="" xmlns="http://www.w3.org/2000/svg" class="w-[24px] h-[24px] absolute top-[6px] right-[5px] ico-arr-dir-down-circle icon sprite-icons">
      	<use data-v-33da0054="" href="/_nuxt/3eb827d04a461ab3eecd387024737978.svg#i-ico-arr-dir-down-circle" xlink:href="/_nuxt/3eb827d04a461ab3eecd387024737978.svg#i-ico-arr-dir-down-circle"></use>
      </svg>
    </div>


          <!-- status_box field_price 에서 버튼 누르면 descending active_first -->
          <!-- .head_status .status_box.active_first {
              font-weight: 700;
          } -->


    <div class="head_status ml-auto items-center text-right flex ">
      <div class="status_box field_price block w-[140px]">
      	<a href="#" class="status_link relative pr-[16px] inline-block text-[13px] tracking-[-.07px] leading-[24px]">
      		<span class="status_txt inline-block align-top">구매 희망가</span>
      	</a>
      </div>
      <!-- status_link after에 svg image 넣기-->
      
      <div class="status_box field_expires_at block">
      	<a href="#" class="status_link relative pr-[16px] inline-block text-[13px] tracking-[-.07px] leading-[24px]">
      		<span class="status_txt inline-block align-top ml-[10px]">만료일</span>
      	</a>
      </div> 
    </div> <!-- head_status -->
  </div> <!-- purchase_head -->



  <div class="empty_area py-[80px] text-center">
  	<p class="desc text-[13px] tracking-[-.07px] text-[#22222280]">구매 입찰 내역이 없습니다</p>
  	<a class="btn outlinegrey small mt-[12px] border-[1px] border-solid border-[#d3d3d3] text-[#22222280] text-[12px] tracking-[-.06px] px-[14px] h-[34px] leading-[32px] rounded-[10px] inline-block cursor-pointer text-center align-middle bg-[#fff]">SHOP 바로가기</a>
  </div>


<!-- 구매일 배송 완료 넣기 -->
  <div class="not_empty_area">
    <ul class="wish_list">
            <!-- 관심 상품 있을 경우 (li_a)리스트로 뿌리기 -->
            <li>
              <div class="flex pt-[20px] pb-[19px]">
              
                <div class="wish_product mr-[30px] flex">
                
                  <div class="product_box mt-[10px] h-[80px] w-[80px] flex-none">
                    <img src="/MyPage/image/bearbrick.JPG" class="h-20 w-20" />
                  </div>

                  <div class="product_detail ml-[13px] flex flex-col pt-[10px] text-left">
                    <div class="brand">
                      <a class="brand-text border-b-solid inline-block h-[17px] overflow-hidden text-ellipsis whitespace-nowrap border-b-[1px] border-b-[#222] pb-[2px] align-top text-[14px] font-bold leading-[17px] text-[#333]">Helinox</a>
                    </div>
                    <p class="name mt-[2px] max-h-[36px] overflow-hidden text-ellipsis text-[13px] leading-[18px] tracking-[-.03px]">Helinox Tactical Cot Convertible Coyote Tan</p>
                    <span class="size mt-auto inline-flex text-left text-[13px] font-bold leading-[16px]">ONE SIZE</span>
                  </div>
                </div> <!-- wish_product -->

                <div class="wish_buy mt-[10px] ml-auto inline-flex flex-shrink-0 flex-col text-right">
                  <div>
                    <div class="division_btn_box lg mt-0 flex h-[60px] w-[164px] text-left">
                      <a class="btn_division buy relative inline-flex flex-1 items-center rounded-[10px] bg-[#ef6253] text-[#fff]">
                        <strong class="title w-[55px] text-center text-[18px] tracking-[-.27px]">구매</strong>
                        <div class="price ml-[10px] leading-[15px]">
                          <span class="amount block">
                            <em class="num inline-block align-top text-[15px] font-bold not-italic">423,000</em>
                            <span class="won inline-block align-top text-[14px] font-bold tracking-[-.21px]">원</span>
                          </span>
                          <span class="desc block text-[11px] font-normal text-[#ffffffcc]">즉시 구매가</span>
                        </div>
                      </a>
                    </div>

                    <a class="status_link mt-[6px] inline-flex px-[3px] text-[12px] tracking-[-.06px] text-[#222222cc]">삭제</a>
                  </div>
               </div> <!-- wish_buy -->
                
              </div>
            </li>
          </ul>
    

    </div>

</div> <!--bid-->
</div> <!--my purchase-->

		

	
</div> <!--content-area-->
</div> <!--container-->

<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="http://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script> <!-- 달력 기본 스타일 -->
<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/i18n/datepicker-ko.js"></script> <!-- datepicker 한국어로 -->
<script src="../js/myPage/calendar.js"></script>   
</body>
</html>