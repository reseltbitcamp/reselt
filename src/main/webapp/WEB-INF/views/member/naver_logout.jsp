<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
<script type="text/javascript" src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js" charset="utf-8"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<script type="text/javascript">
$(function(){
	//window.open('https://nid.naver.com/nidlogin.logout', '네이버아이디 로그아웃', 'top=10, left=10, width=500, height=600, status=no, menubar=no, toolbar=no, resizable=no');
	
	//self.opener = self;
	//window.close();
	
	top.window.open('https://nid.naver.com/nidlogin.logout', '네이버아이디 로그아웃', 'top=10, left=10, width=500, height=600, status=no, menubar=no, toolbar=no, resizable=no').close();
	top.window.opener=self;
	top.self.close();
	
    //alert('stop');
    location.href="/ReseltProject/";
});
</script>
</html>

