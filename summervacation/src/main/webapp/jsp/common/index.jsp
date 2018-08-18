<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<style>
	div 
	{ 
		width:400px;
		heigt:900px;
		border:2px solid #FFB2D9;	
	}
</style>
<script type="text/javascript" src="../js/common/jquery-1.12.3.min.js"></script>

<script>
	function fn_login() {	
		
		var id = $("[id=loginId]").val();
		var pwd = $("[id=loginPwd]").val();
		
		var inputData =  { "id" : id, "passwd" : pwd };
		console.log(inputData);
		
		 $.ajax({
				type : "POST",
				dataType : "json",
				contentType: 'application/json; charset=UTF-8', 
				url : "/loginProc",
				data : JSON.stringify(inputData),
				success : function(data){		
					console.log("정상로그인");
					console.log(data);
					location.replace("http://www.daum.net");
					
// 					if(data == 1){
// 						alert('퇴사자는 로그인이 불가합니다');						
// 					}else if(data == 2){							
// 						location.href="/index";
// 					}else if(data == 3){
// 						alert('비밀번호를 확인해주세요');
// 					}else if(data == 4){
// 						alert('입력하신 아이디가 없습니다');
// 					}
				},
				error : function(request,status,error){
					console.log("에러");
					
				}			
			});
		//location.replace("http://www.daum.net");
	}

	function funcM() {
		alert();
	}
</script>
<body>
<h1>Login</h1>
<div>
<table> 
	<tr>
		<td>
			<label>아이디</label>
		</td>
		<td>
			<input type="text" id="loginId"></input>
		</td>
	</tr>
	<tr>
		<td>
			<label>비밀번호</label>
		</td>
		<td>
			<input type="password" id="loginPwd"></input>
		</td>
	</tr>
	<tr>
		<td>
			<input type="button" value="로그인" onclick="fn_login();"></input>		
		</td>
		<td>
			<input type="button" value="확인" onclick="funcM();"></input>		
		</td>	
</table>
</div>
</body>
</html>