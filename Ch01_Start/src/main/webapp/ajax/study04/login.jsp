<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0"/>
<title>Jsp:jQuery</title>
<style type="text/css">
#result{




}
</style>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>

아이디 <input type="text" id="id"><br>
비밀번호 <input type="text" id="pwd"><br>
<button id="submit">확인</button>
	<script>
	$(function(){
		$("#submit").on("click",function(){			
			$.ajax({
			url:'calc.jsp',
			type:'post',
			data: {val1: $("#val1").val(),
				val2: $("#val2").val()},
			datatype:"text",						// miss
			success: function(data,status,xhr){
				$("#result").text(data);
			},
			error: function(xhr, status, error){	// miss
				console.log(error);
			}
			
			/* success:function(data){ 		
				$("<p></p>").text(data).appendTo("#result");
				} */
			})
			
		})
	})
	</script>
	<p>결과</p>
<div id="result">
</div>
</body>
</html>