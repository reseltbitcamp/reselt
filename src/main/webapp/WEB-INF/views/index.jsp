<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>RESELT | 한정판 거래의 RESELT</title>
    <!-- TailwindCSS configuration -->
    <link rel="stylesheet" href="/ReseltProject/css/output.css"> 
    
    <!-- Custom CSS -->
    <link rel="stylesheet" href="/ReseltProject/css/style.css"> 

    <!-- External Web Fonts -->
    <!-- <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=notoSans:wght@300;400&display=swap" rel="stylesheet"> -->
  </head>
  <body>
    <!-- Header-->
    <header id="header" class="sticky top-0 z-50 bg-white">
      <div id="headerTop" class="border-b-[1px]">
        <div id="header" class="px-10 py-1 text-right text-[13px] font-notoSans font-extralight">
          <a href="#" class="m-2">고객센터</a>
          <a href="#" class="m-2">관심상품</a>
          <a href="#" class="m-2">마이페이지</a>
          <a href="#" class="m-2">로그인</a>
        </div>
      </div>
      <jsp:include page="${menu }" />
      </header>
    <!-- Body -->
    <main id="body" class="relative">
      <c:if test="${empty display }">
        <jsp:include page="${main }" />
      </c:if>
      
      <c:if test="${not empty display }">
        <jsp:include page="${display }" />
      </c:if>
    </main>

    <!-- Footer -->
    <jsp:include page="${footer }" />
  </body>
</html>