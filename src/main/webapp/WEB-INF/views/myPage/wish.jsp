<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<div class="container my md">


<div class="nav">
	<div class="snb_area">
    <a href="/MyPage/my" class="nuxt-link-active">
    	<h2 class="snb_main_title">마이 페이지</h2>
    </a>
    
    <nav class="snb">
      <div class="snb_list">
        <strong class="snb_title">쇼핑 정보</strong>
        <ul class="snb_menu">
            <li class="menu_item"><a class="menu_link" href="/MyPage/myPage/buying">구매 내역</a></li>
            <li class="menu_item"><a class="menu_link" href="/MyPage/myPage/selling">판매 내역</a></li>
            <li class="menu_item"><a class="menu_link" href="/MyPage/myPage/wish">관심 상품</a></li>
        </ul>
      </div>

        
      <div class="snb_list">
        <strong class="snb_title">내 정보</strong>
        <ul class="snb_menu">
            <li class="menu_item"><a class="menu_link" href="/MyPage/myPage/profile">프로필 정보</a></li>
            <li class="menu_item"><a class="menu_link" href="/MyPage/myPage/payment">결제 정보</a></li>
        </ul>
      </div>
    </nav> <!--snb-->

  </div> <!--snb_area-->
</div> <!--nav-->


<div class="content content_area">
  <div class="my_interest">

    <div class="content_title border">
      <div class="title">
        <h3>관심 상품</h3>
      </div>
    </div>
        
    <ul class="wish_list">
      <!-- 관심 상품 있을 경우 (li_a)리스트로 뿌리기 -->
      <li>
        <a class="wish_item" style="display: flex;">

            <div class="wish_product" style="display:flex;">
                
                <div class="product_box">
                    <div class="product" style="background-color: rgb(244, 244, 244);">
                          <img src="/MyPage/image/bearbrick.JPG" style="width: 60px;">
                    </div>
                </div>
                
                
                <div class="product_detail">
                    <div class="brand">
                      <a class="brand-text">Helinox</a>
                    </div>
                    <p class="name">Helinox Tactical Cot Convertible Coyote Tan</p>
                    <span class="size">ONE SIZE</span>
                </div>
            </div>
            
            
            <div class="wish_buy">
              <div>  
                <div class="division_btn_box lg">
                  <a class="btn_division buy">
                      <strong class="title">구매</strong>
                      <div class="price">
                        <span class="amount">
                            <em class="num">423,000</em>
                            <span class="won">원</span>
                        </span>
                        <span class="desc">즉시 구매가</span>
                      </div>
                  </a>
                </div>

                <a class="status_link">삭제</a>
              </div>
              

            </div> <!-- wish_product -->
        </a>
      <li>
    </ul>
    
    
    
    
      <!-- paging -->
      <div class="pagination"></div>


    </div> <!--my interest-->
</div> <!--content-area-->
</div> <!--container-->
</body>
</html>