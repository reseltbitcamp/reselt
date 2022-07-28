<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<jsp:include page="../shopMenu/isModal.jsp"></jsp:include>
<link rel="stylesheet" href="../css/sellStraight.css"/>
<div id="headerBot" class="py-2 px-11 border-b-[1px] flex grid-cols-3 flex-row font-notoSans">
  <div id="menuLogo" class="float-left inline-block w-1/3" >
    <a href="/ReseltProject" class="font-extrabold text-[32px] italic">RESELT</a>
  </div>

  <div class="font-semibold m-auto text-center inline-block w-1/3"> 
    <p id="centerText" class="text-2xl">즉시 판매하기<p>
  </div>

  <div class="ml-auto text-right w-1/3  inline-block">
    <button id="inspectionBtn" class="border-gray-300 border-2 h-8 w-24 mt-2 cursor-pointer text-xs rounded-lg">검수기준</button>
  </div>
     
  </div>

