<%@ page language="java" contentType="text/html; charset=EUC-KR"
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
<script>
	function funcPageMove() {	
		location.replace("http://www.daum.net");
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
			<input type="text" name="txtId"></input>
		</td>
	</tr>
	<tr>
		<td>
			<label>비밀번호</label>
		</td>
		<td>
			<input type="password" id="txtPwd"></input>
		</td>
	</tr>
	<tr>
		<td>
			<input type="button" value="로그인" onclick="funcPageMove();"></input>		
		</td>
		<td>
			<input type="button" value="확인" onclick="funcM();"></input>		
		</td>	
</table>
</div>
</body>
</html>