<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/myPage.css"/>
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
      <h3 class="leading-[29px] text-inherit font-semibold">구매 내역</h3>
    </div>
  </div>

  <!--tab_on은 클릭 시 이벤트-->
  <div class="purchase_list_tab detail_tab bg-[#fff] rounded-[0px] mt-[20px] table table-fixed w-full">

    <div class="buying_btn_1 tab_item table-cell text-center">
      <a href="#" class="tab_link border-b-[1px] tab_on border-b-solid border-b-[#d3d3d3] pt-[12px] h-[68px] relative block ">
        <dl class="tab_box flex flex-col-reverse ">
          <dt class="title text-[#222] font-bold">구매 입찰</dt>
          <dd class="count text-[#f15746] mt-[0px] text-[20px] leading-[24px] tracking-[-.1px]">0</dd>
        </dl>
      </a>
    </div>

    <div class="buying_btn_2 tab_item table-cell text-center">
      <a href="#" class="tab_link border-b-[1px] border-b-solid border-b-[#d3d3d3] pt-[12px] h-[68px] relative block">
        <dl class="tab_box flex flex-col-reverse">
          <dt class="title text-[##22222280]">진행 중</dt>
          <dd class="count mt-[0px] text-[20px] leading-[24px] tracking-[-.1px]">0</dd>
        </dl>
      </a>
    </div>
    
    <div class="buying_btn_3 tab_item table-cell text-center">
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
          <a onClick="setSearchDate('2m')" class="month_link flex px-[12px] min-w-[62px] h-[32px] leading-[30px] bg-[#fff] border-[1px] border-solid border-[#ebebeb] text-[13px] tracking-[-.07px] text-[#222] justify-center">최근 2개월</a>
        </li>
        <li class="month_item flex">
          <a onClick="setSearchDate('4m')" class="month_link flex px-[12px] min-w-[62px] h-[32px] leading-[30px] bg-[#fff] border-[1px] border-solid border-[#ebebeb] text-[13px] tracking-[-.07px] text-[#222] justify-center">4개월</a>
        </li>
        <li class="month_item flex">
          <a onClick="setSearchDate('6m')" class="month_link flex px-[12px] min-w-[62px] h-[32px] leading-[30px] bg-[#fff] border-[1px] border-solid border-[#ebebeb] text-[13px] tracking-[-.07px] text-[#222] justify-center">6개월</a>
        </li>
      </ul>
    </div>

    <div class="period_calendar_wrapper flex">
      <div class="period_calendar relative">

        <div class="calendar_wrap relative pr-[30px] pl-[12px] inline-block w-[180px] h-[32px] leading-[30px] align-top border-[1px] border-solid border-[#fff] cursor-pointer">
          <span class="dset">
            <input type="text" readonly class="h-[32px] datepicker inpType cal_input" name="searchStartDate" id="searchStartDate" >
            <span class="cal_btn absolute top-1/2 right-3 mt-[-9px] w-[18px] h-[18px] bg-[length:18px_18px] bg-[url('data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIGZpbGw9Im5vbmUiIHZpZXdCb3g9IjAgMCA1NiA1NiI+PHBhdGggZmlsbD0iI0JCQiIgZD0iTTIxIDI1LjY2N2gtNC42Njd2NC42NjZIMjF2LTQuNjY2em05LjMzMyAwaC00LjY2NnY0LjY2Nmg0LjY2NnYtNC42NjZ6bTkuMzM0IDBIMzV2NC42NjZoNC42Njd2LTQuNjY2em00LjY2Ni0xNi4zMzRINDJWNC42NjdoLTQuNjY3djQuNjY2SDE4LjY2N1Y0LjY2N0gxNHY0LjY2NmgtMi4zMzNjLTIuNTkgMC00LjY0NCAyLjEtNC42NDQgNC42NjdMNyA0Ni42NjdhNC42NjYgNC42NjYgMCAwMDQuNjY3IDQuNjY2aDMyLjY2NkE0LjY4IDQuNjggMCAwMDQ5IDQ2LjY2N1YxNGE0LjY4IDQuNjggMCAwMC00LjY2Ny00LjY2N3ptMCAzNy4zMzRIMTEuNjY3VjIxaDMyLjY2NnYyNS42Njd6Ii8+PC9zdmc+')]"></span>
            <!-- <a href="#none" class="btncalendar dateclick">달력</a> -->
          <span/>
        </div>

        <span class="swung_dash inline-block text-[14px] tracking-[-.21px] leading-[32px] text-[#22222280]">~</span>

        <div class="calendar_wrap relative pr-[30px] pl-[12px] inline-block w-[180px] h-[32px] leading-[30px] align-top border-[1px] border-solid border-[#fff] cursor-pointer">
          <span class="dset">
            <div class="calendar">
              <input type="text" readonly class="h-[32px] datepicker inpType" name="searchEndDate" id="searchEndDate" >
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
      <a class="btn_filter relative text-center py-[5px] pr-[20px] pl-[20px] inline-block w-[120px] leading-[24px] bg-[#fff] border-[1px] border-solid border-[#d3d3d3] rounded-[12px] text-[13px] tracking-[-.07px]">
        	--- 전체 ---
      </a>
    </div>

    <div class="head_status ml-auto items-center text-right flex ">
      
      <div class="status_box field_expires_at block">
      	<a href="#" class="relative pr-[16px] inline-block text-[13px] tracking-[-.07px] leading-[24px]">
      		<label class="status_txt inline-block align-top ml-[10px]">시간순</label>
      		<select size="2" id="asc_desc">
      			<option value="asc">오름차순</option>
      			<option value="desc">내림차순</option>
      		</select>
      	</a>
      </div> 
    </div> <!-- head_status -->
    
  </div> <!-- purchase_head -->


<!-- 구매 입찰 구간 -->

  <div class="empty_area_1 py-[80px] text-center">
  	<p class="desc text-[13px] tracking-[-.07px] text-[#22222280]">구매 입찰 내역이 없습니다</p>
  	<a class="btn outlinegrey small mt-[12px] border-[1px] border-solid border-[#d3d3d3] text-[#22222280] text-[12px] tracking-[-.06px] px-[14px] h-[34px] leading-[32px] rounded-[10px] inline-block cursor-pointer text-center align-middle bg-[#fff]">SHOP 바로가기</a>
  </div>

 <div class="not_empty_area_1">
  <ul class="wish_list_1" id="test">
  	
  	<!-- 동적처리 -->

  </ul>
</div>


<!-- 진행 중 구간 -->

  <div class="empty_area_2 py-[80px] text-center removeEvent">
  	<p class="desc text-[13px] tracking-[-.07px] text-[#22222280]">구매 입찰 내역이 없습니다</p>
  	<a class="btn outlinegrey small mt-[12px] border-[1px] border-solid border-[#d3d3d3] text-[#22222280] text-[12px] tracking-[-.06px] px-[14px] h-[34px] leading-[32px] rounded-[10px] inline-block cursor-pointer text-center align-middle bg-[#fff]">SHOP 바로가기</a>
  </div>

 <div class="not_empty_area_2 removeEvent">
  <ul class="wish_list_2" id="test">
  	
  	<!-- 동적처리 -->

  </ul>
</div>

<!-- 종료 구간 -->

  <div class="empty_area_3 py-[80px] text-center removeEvent">
  	<p class="desc text-[13px] tracking-[-.07px] text-[#22222280]">구매 입찰 내역이 없습니다</p>
  	<a class="btn outlinegrey small mt-[12px] border-[1px] border-solid border-[#d3d3d3] text-[#22222280] text-[12px] tracking-[-.06px] px-[14px] h-[34px] leading-[32px] rounded-[10px] inline-block cursor-pointer text-center align-middle bg-[#fff]">SHOP 바로가기</a>
  </div>

 <div class="not_empty_area_3 removeEvent">
  <ul class="wish_list_3" id="test">
  	
  	<!-- 동적처리 -->

  </ul>
</div>



</div> <!--purchase_list-->
</div> <!--my purchase-->
	
</div> <!--content-area-->
</div> <!--container-->


<!-- 모달창 -->
<div class="layer z-[1000] top-0 left-0 right-0 bottom-0 bg-[#22222280] fixed removeEvent">

  <div class="layer_container w-[500px] absolute top-[50%] left-[40%] overflow-hidden rounded-[16px] bg-[#fff] drop-shadow-sm">
    <div class="layer_header">
      <h2 class="title min-h-[60px] bg-[#fff] px-[50px] pt-[18px] pb-[20px] text-center text-[18px] font-bold leading-[22px] tracking-[-.15px] text-[#000]">선택한 상태 보기</h2>
    </div>
    <div class="layer_content">
      <div class="select_status px-[26px] pt-[4px] pb-[26px]">
        <ul id="test">
          <li class="status_item item_on m-[6px] inline-block" style="width: calc(30% - 12px);">
            <!--버튼 눌렀을 떄는 bg-[#222] font-bold-->
            <a id="--- 전체 ---" class="status_link block overflow-hidden whitespace-nowrap rounded-[16px] border-[1px] border-solid border-[#ebebeb] bg-[#fff] py-[15px] px-[14px] text-center text-[14px] leading-[20px]">전체</a>
          </li>

          <li class="status_item item_on m-[6px] inline-block" style="width: calc(33.33% - 12px);">
            <!--버튼 눌렀을 떄는 bg-[#222] font-bold-->
            <a id="-- 입찰 중 --" class="status_link block overflow-hidden whitespace-nowrap rounded-[16px] border-[1px] border-solid border-[#ebebeb] bg-[#fff] py-[15px] px-[14px] text-center text-[14px] leading-[20px]">입찰 중</a>
          </li>

          <li class="status_item item_on m-[6px] inline-block" style="width: calc(33.33% - 12px);">
            <!--버튼 눌렀을 떄는 bg-[#222] font-bold-->
            <a id="- 기한만료 -" class="status_link block overflow-hidden whitespace-nowrap rounded-[16px] border-[1px] border-solid border-[#ebebeb] bg-[#fff] py-[15px] px-[14px] text-center text-[14px] leading-[20px] text-[#f15746]">기한 만료</a>
          </li>
        </ul>
      </div>
    </div>
    <a class="btn_layer_close absolute top-[13px] right-[20px] cursor-pointer">
      <i class="fa-solid fa-xmark"></i>
    </a>
  </div>
</div>




<script src="https://kit.fontawesome.com/d84eab0825.js" crossorigin="anonymous"></script>
<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="http://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script> <!-- 달력 기본 스타일 -->
<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/i18n/datepicker-ko.js"></script> <!-- datepicker 한국어로 -->
<script src="../js/myPage/calendar.js"></script>
<script src="../js/myPage/buying.js"></script>
 
</body>
</html>