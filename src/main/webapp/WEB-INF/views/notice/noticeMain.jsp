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
    <div class="wrap_inner float-left ml-10 mr-5 grid">
        <div class="container customer md max-w-7xl m-auto pt-10 pr-10 pb-40">
            <div class="box-border">
                <div class="snb_area m-0 p-0">
                    <a href="/notice" aria-current="page" class="cursor-pointer">
                    <h2 class="snb_main_title pb-25 text-3xl tracking-tighter decoration-black uppercase block font-bold">고객센터</h2></a>
                    <br>
                    <nav class="snb">
                        <div class="snb_list">
                            <ul class="snb_menu">
                                <li class="menu_item menu_on mb-2"><a href="/noticeMain" aria-current="page"> 공지사항 </a></li>
                                <li class="menu_item"><a href="#" class="menu_link"> 검수 기준 </a></li>
                            </ul>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </div>
    <div id="content">
        <jsp:include page="../notice/noticeContent.jsp"></jsp:include>
    </div>
    </div>
</body>
</html>

