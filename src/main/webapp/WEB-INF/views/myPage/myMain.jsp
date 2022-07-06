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
                    <li class="menu_item"><a class="menu_link" href="/MyPage/my/buying">구매 내역</a></li>
                    <li class="menu_item"><a class="menu_link" href="/MyPage/my/selling">판매 내역</a></li>
                    <li class="menu_item"><a class="menu_link" href="/MyPage/my/wish">관심 상품</a></li>
                </ul>
              </div>
        
                
            <div class="snb_list">
              <strong class="snb_title">내 정보</strong>
              <ul class="snb_menu">
                  <li class="menu_item"><a class="menu_link" href="/MyPage/my/profile">프로필 정보</a></li>
                  <li class="menu_item"><a class="menu_link" href="/MyPage/my/payment">결제 정보</a></li>
              </ul>
            </div>
            </nav> <!--snb-->
        
          </div> <!--snb_area-->
        </div>
        
        
        <div class="content content_area">
        
                
        <div class="my home">
        
          <div class="user_membership">
            <div class="user_detail">
              
              <div class="user_thumb">
                <img src="/MyPage/image/profile.png" alt="사용자 이미지" class="thumb_img">
              </div>
              
              <div class="user_info">
                <div class="info_box">
                  <strong class="name">이름</strong>
                  <p class="email">naver.com</p>
                    <input class="btn outlinegrey small" type="button" value="프로필 수정" onClick="location.href='/MyPage/my/profile'">
                    <input class="btn btn btn_my_style outlinegrey small" type="button" value="내 스타일" onClick="location.href='/MyPage/social/users'">
                </div> <!--info_box-->
              </div> <!--user_info -->
        
            </div> <!--user_detail-->
          </div> <!--user_membership-->
          
        
          <!-- 구매 내역 -->	
          <div class="my_home_title">
              <h3 class="title">구매 내역</h3>
              <a class="btn_more" href="/MyPage/my/buying">
                <span class="btn_txt">더보기 ></span>
              </a>
          </div>
            
          <div class="recent_purchase">
              <div class="purchase_list_tab">
        
                <div class="tab_item total">
                  <a href="/MyPage/my/buying" class="tab_link">
                    <dl class="tab_box">
                      <dt class="title">전체</dt>
                      <dd class="count">0</dd>
                    </dl>
                  </a> 
                </div> <!--total-->
              
                <div class="tab_item tab_on">
                  <a href="/MyPage/my/buying?tab=bidding" class="tab_link">
                    <dl class="tab_box">
                      <dt class="title">입찰 중</dt>
                      <dd class="count">0</dd>
                    </dl>
                  </a> 
                </div>
        
                <div class="tab_item">
                  <a href="/MyPage/my/buying?tab=pending" class="tab_link">
                    <dl class="tab_box">
                      <dt class="title">진행 중</dt>
                      <dd class="count">0</dd>
                    </dl>
                  </a> 
                </div>
        
                <div class="tab_item">
                  <a href="/MyPage/my/buying?tab=finished" class="tab_link">
                    <dl class="tab_box">
                      <dt class="title">종료</dt>
                      <dd class="count">0</dd>
                    </dl>
                  </a> 
                </div>
                
              </div> <!--purchase_list_tab-->
        
            <!--거래 내역 없을 경우-->
            <div>
              <div class="purchase_list all bid">
                <div class="empty_area">
                  <p class="desc">거래 내역이 없습니다</p>
                </div>
              </div>
            </div>
            
          </div>
        
        
        
        
        
          <!--판매 내역-->
          <div class="my_home_title">
            <h3 class="title">판매 내역</h3>
            <a class="btn_more" href="/MyPage/my/selling">
              <span class="btn_txt">더보기 ></span>
            </a>
          </div>
              
          <div class="recent_purchase">
            <div class="purchase_list_tab">
        
              <div class="tab_item total">
                <a href="/MyPage/my/selling" class="tab_link">
                  <dl class="tab_box">
                    <dt class="title">전체</dt>
                    <dd class="count">0</dd>
                  </dl>
                </a> 
              </div> <!--total-->
              
              <div class="tab_item tab_on">
                <a href="/MyPage/my/selling?tab=bidding" class="tab_link">
                  <dl class="tab_box">
                    <dt class="title">입찰 중</dt>
                    <dd class="count">0</dd>
                  </dl>
                </a> 
              </div>
        
              <div class="tab_item">
                <a href="/MyPage/my/selling?tab=pending" class="tab_link">
                  <dl class="tab_box">
                    <dt class="title">진행 중</dt>
                    <dd class="count">0</dd>
                  </dl>
                </a> 
              </div>
        
              <div class="tab_item">
                <a href="/MyPage/my/selling?tab=finished" class="tab_link">
                  <dl class="tab_box">
                    <dt class="title">종료</dt>
                    <dd class="count">0</dd>
                  </dl>
                </a> 
              </div>
        
            </div>  <!--purchase_list_tab-->
        
           <!--거래 내역 없을 경우-->
            <div>
              <div class="purchase_list all bid">
                <div class="empty_area">
                  <p class="desc">거래 내역이 없습니다</p>
                </div>
              </div>
            </div>
          </div> <!--recent_purchase-->
        
        
        
        
        <!--관심 상품-->
        <div class="my_home_title">
            <h3 class="title">관심 상품</h3>
            <a class="btn_more" href="/MyPage/my/wish">
              <span class="btn_txt">더보기 ></span>
            </a>
         </div>
        
         
        
          <div class="insert_product">
        
            <div class="empty_area has_bg">
              <p class="desc">추가하신 관심 상품이 없습니다</p>
              <a class="btn outlinegrey small">SHOP 바로가기</a>
            </div>
        
            <!--추가한 상품이 있을 경우-->
              <div class="product_list">
                <div class="product_item">
                  <a href="사진 주소로 이동" class="item_inner">
        
                    <div class="thumb_box">
                      <div class="product" style="background-color: rgb(244, 244, 244);">
                        <picture class="picture product_img">
                          <img class="image" src="/MyPage/image/bearbrick.JPG">
                        </picture> 
                      </div>
                    </div>
        
                    <div class="info_box">
                      <div class="brand">
                        <p class="brand-text">Bearbrick</p>
                      </div>
        
                       <p class="name">Bearbrick Sesame Street Cookie Monster Costume Ver. 400%</p>
        
                      <div class="price">
                        <div class="amount lg">
                          <em class="num">520,000</em>
                          <span class="won lg">원</span>
                        </div>
        
                        <div class="desc">
                          <p>즉시 구매가</p>
                        </div>
                      </div> <!--price-->
        
                    </div> <!--info_box-->
                    
                  </a>
                </div> <!--item-->
        
              </div> <!--list-->
          </div> <!--insert product-->
        
        
        
        </div> <!--my home-->
            
    </div> <!--content-area-->
 </div> <!--container-->
</body>
</html>