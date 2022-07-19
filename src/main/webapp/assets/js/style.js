$(function(){
	$('#cameraBox').click(function(){
	   $('#img').trigger('click');
	});
});

$('#faqBtn').click(function(){
	var formData = new FormData($('#styleWriteForm')[0]);
	
	var data = '';
	$.each( $('#styleWriteForm').serializeArray(), function(key, val){
	    data += ","+val['name']+":"+val['value'];
	});
	
	console.log(data);
	
	$.ajax({
			type: 'post',
			url: '/upload/',
			enctype: 'multipart/form-data',
			processData: false,
			contentType: false,
			data: formData,
			success: function(){
				alert('글이 등록되었습니다.');
				location.href='/ReseltProject/style/styleList';
			},
			error: function(err){
				console.log(err);
			}
	});
});