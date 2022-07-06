<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- TailwindCSS configuration -->
    <script src="https://cdn.tailwindcss.com"></script>
    <script src="./assets/js/tailwind.config.js"></script>
    <link rel="stylesheet" type="text/tailwindcss" href="./assets/css/tailwind.config.css"> 
</head>
<body>
 <div class="notice_outer ml-52">
  <div class="wrap_inner float-left m-auto grid">
        <div class="container customer max-w-7xl m-auto pt-10 pr-10 pb-40">
            <div class="box-border">
                <div class="snb_area m-0 p-0 float-left w-[150px] mt-5">
                    <a href="#" onclick="location.reload()" aria-current="page" class="cursor-pointer">
                    <h2 class="snb_main_title pb-25 text-3xl tracking-tighter text-black uppercase block font-semibold">고객센터</h2></a>
                    <br>
                    <nav class="snb">
                        <div class="snb_list">
                            <ul class="snb_menu">
                                <li><a href="#" onclick="location.reload()" aria-current="page" class="menu_item menu_on mb-2 text-[#222] font-semibold tracking-[-.15px] leading-[18px]"> 공지사항 </a></li>
                                <li class="menu_item"><a href="#" class="menu_link text-[rgba(34,34,34,.5)] tracking-[-.15px] leading-[40px]"> 검수 기준 </a></li>
                            </ul>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </div>
<jsp:include page="../notice/noticeContent.jsp"></jsp:include>
  </div>
</body>
</html>

