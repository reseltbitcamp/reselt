<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지 작성</title>
</head>
<body>
<form id="noticeWriteForm">
  <table border="1" cellspacing="0" cellpadding="5">
		<tr>
		  <td width="70" align="center">제목</td>
			<td>
				<input type="text" name="title" id="title" placeholder="제목을 입력하세요">
				<div id="titleDiv"></div>
			</td>
		</tr>
		
		<tr>
			<td align="center">내용</td>
			<td>
				<textarea name="content" id="content" rows="15" cols="50" placeholder="내용을 입력하세요"></textarea>
				<div id="contentDiv"></div>
			</td>
		</tr>
		
		<tr>
		<td colspan="2" align="center">
				<input type = "button" value="글쓰기" id="noticeWriteBtn">
				<input type = "reset" value="다시작성">
				<input type = "button" value ="목록" onclick="location.href='/ReseltProject/notice/noticeMain'">
			</td>
		</tr>
	</table>
  
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
$(function(){
	$('#noticeWriteBtn').click(function(){
		$('#titleDiv').empty();
		$('#contentDiv').empty();
		
		if($('#title').val() == ''){
			$('#titleDiv').html('제목을 입력하세요');
			$('#titleDiv').css('color', 'red');
			$('#titleDiv').css('font-size', '8pt');
			$('#titleDiv').css('font-weight', 'bold');
		}else if($('#content').val() == ''){
			$('#contentDiv').html('내용을 입력하세요');
			$('#contentDiv').css('color', 'red');
			$('#contentDiv').css('font-size', '8pt');
			$('#contentDiv').css('font-weight', 'bold');
		}else{
			
			$.ajax({
				type: 'post',
				url: '/ReseltProject/notice/noticeWrite',
				data: 
						{'title': $('#title').val(),
					   	 'content': $('#content').val()},
				success: function(){
					alert('작성하신 글을 저장하였습니다.');
					//location.href = '/ReseltProject/notice/noticeMain';
				},
				error: function(e){
					console.log(e);
				}
			});
		}
	});
});
</script>
</form>
</body>
</html>