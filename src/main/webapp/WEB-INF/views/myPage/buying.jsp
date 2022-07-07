<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css"/>
</head>
<body>
<div class="container my md">


<div class="nav">
	 <div class="snb_area">
    <a href="/MyPage/my" class="nuxt-link-active">
    	<h2 class="snb_main_title">���� ������</h2>
    </a>
    
    <nav class="snb">
      <div class="snb_list">
        <strong class="snb_title">���� ����</strong>
        <ul class="snb_menu">
            <li class="menu_item"><a class="menu_link" href="/MyPage/my/buying">���� ����</a></li>
            <li class="menu_item"><a class="menu_link" href="/MyPage/my/selling">�Ǹ� ����</a></li>
            <li class="menu_item"><a class="menu_link" href="/MyPage/my/wish">���� ��ǰ</a></li>
        </ul>
      </div>

        
      <div class="snb_list">
        <strong class="snb_title">�� ����</strong>
        <ul class="snb_menu">
            <li class="menu_item"><a class="menu_link" href="/MyPage/my/profile">������ ����</a></li>
            <li class="menu_item"><a class="menu_link" href="/MyPage/my/payment">���� ����</a></li>
        </ul>
      </div>
    </nav> <!--snb-->

  </div> <!--snb_area-->
</div> <!--nav-->


<div class="content content_area">

<div class="my_purchase">
  <div class="content_title">
    <div class="title">
      <h3>���� ����</h3>
    </div>
  </div>

  <!--tab_on�� Ŭ�� �� �̺�Ʈ-->
  <div class="purchase_list_tab detail_tab">

    <div class="tab_item tab_on">
      <a href="#" class="tab_link">
        <dl class="tab_box">
          <dt class="title">���� ����</dt>
          <dd class="count">0</dd>
        </dl>
      </a>
    </div>

    <div class="tab_item">
      <a href="#" class="tab_link">
        <dl class="tab_box">
          <dt class="title">���� ��</dt>
          <dd class="count">0</dd>
        </dl>
      </a>
    </div>
    
    <div class="tab_item">
      <a href="#" class="tab_link">
        <dl class="tab_box">
          <dt class="title">����</dt>
          <dd class="count">0</dd>
        </dl>
      </a>
    </div>
  </div>


  
  <div class="period_search">
    
    <div class="period_month">
      <ul class="month_list">
        <li class="month_item">
          <a onClick="setSearchDate('2m')" class="month_link">�ֱ� 2����</a>
        </li>
        <li class="month_item">
          <a onClick="setSearchDate('4m')" class="month_link">4����</a>
        </li>
        <li class="month_item">
          <a onClick="setSearchDate('6m')" class="month_link">6����</a>
        </li>
      </ul>
    </div>

    <div class="period_calendar_wrapper">
      <div class="period_calendar">

        <div class="calendar_wrap">
          <span class="dset">
            <input type="text" class="datepicker inpType cal_input" name="searchStartDate" id="searchStartDate" >
            <span class="cal_btn"></span>
            <a href="#none" class="btncalendar dateclick">�޷�</a>
          <span/>
        </div>

        <span class="swung_dash">~</span>

        <div class="calendar_wrap">
          <span class="dset">
            <div class="calendar">
              <input type="text" class="datepicker inpType" name="searchEndDate" id="searchEndDate" >
              <span class="cal_btn"></span>
              <a href="#none" class="btncalendar dateclick">�޷�</a>
            </div>
           </span>
        </div>
        
      </div> <!--calendar-->

      <div class="period_btn_box">
        <button class="btn_search is_active">��ȸ</button>
      </div>
    </div> <!--wrapper-->
  </div>



<ul class="search_info">
  <li class="info_item">
    <p>�� ���� ��ȸ ������ �Ⱓ�� �ִ� 6�����Դϴ�.</p>
  </li>
  <li class="info_item">
    <p>�Ⱓ�� ��ȸ ����� ������ �������� ����˴ϴ�</p>
  </li>
</ul>


<div class="purchase_list bidding bid">
  <div class="purchase_head">
    
    <div class="head_product">
      <a class="btn_filter">
        	��ü
      </a>
      <svg data-v-33da0054="" xmlns="http://www.w3.org/2000/svg" class="ico-arr-dir-down-circle icon sprite-icons">
      	<use data-v-33da0054="" href="/_nuxt/3eb827d04a461ab3eecd387024737978.svg#i-ico-arr-dir-down-circle" xlink:href="/_nuxt/3eb827d04a461ab3eecd387024737978.svg#i-ico-arr-dir-down-circle"></use>
      </svg>
    </div>


          <!-- status_box field_price ���� ��ư ������ descending active_first -->
          <!-- .head_status .status_box.active_first {
              font-weight: 700;
          } -->


    <div class="head_status">
      <div class="status_box field_price">
      	<a href="#" class="status_link">
      		<span class="status_txt">���� �����</span>
      	</a>
      </div>
      
      <div class="status_box field_expires_at">
      	<a href="#" class="status_link">
      		<span class="status_txt">������</span>
      	</a>
      </div> 
    </div> <!-- head_status -->
  </div> <!-- purchase_head -->



  <div class="empty_area">
  	<p class="desc">���� ���� ������ �����ϴ�</p>
  	<a class="btn outlinegrey small">SHOP �ٷΰ���</a>
  </div>


  <div class="not_empty_area">
    <ul class="wish_list">
        <!-- ���� ��ǰ ���� ��� (li_a)����Ʈ�� �Ѹ��� -->
        <li>
          <a class="wish_item" style="display: flex;">
              <div class="wish_product" style="display:flex;">
                  
                  <div class="product_box">
                      <div class="product" style="background-color: rgb(244, 244, 244);">
                            <img src="/MyPage/image/bearbrick.JPG" style="width: 60px; text-align:center;">
                      </div>
                  </div>
                  
                  
                  <div class="product_detail">
                      <div class="brand">
                        <a class="brand-text">Helinox</a>
                      </div>
                      <p class="name">Helinox Tactical Cot Convertible Coyote Tan</p>
                      <span class="size">ONE SIZE</span>
                  </div>
              
              
              
        <!-- ������, ��ۿϷ� �ֱ�  -->
                
              </div>
          </a>
        <li>
      </ul>
    

    </div>

</div> <!--bid-->
</div> <!--my purchase-->

		

	
</div> <!--content-area-->
</div> <!--container-->

<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="http://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script> <!-- �޷� �⺻ ��Ÿ�� -->
<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/i18n/datepicker-ko.js"></script> <!-- datepicker �ѱ���� -->
<script src="../js/calendar.js"></script>   
</body>
</html>