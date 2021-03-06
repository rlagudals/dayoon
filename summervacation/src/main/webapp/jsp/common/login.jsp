<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>로그인</title>
</head>

<style>
	div 
	{ 
		width:400px;
		height:100px;
		border:2px solid #FFB2D9;	
	}
</style>

<script type="text/javascript" src="/js/common/jquery-1.12.3.min.js"></script>

<script>
	function fn_login() {	
		
		var loginId = $("[id=loginId]").val();
		var loginPwd = $("[id=loginPwd]").val();
		
		var inputData =  { "loginId" : loginId, "loginPwd" : loginPwd };
		
		// ILoginController.loginProc
		 $.ajax({
				type : "POST",
				dataType : "json",
				contentType: 'application/json; charset=UTF-8', 
				url : "/loginProc",
				data : JSON.stringify(inputData),
				success : function(data){		
					alert(data.userNm + "님 환영합니다");
					console.log(data);
					console.log(data.sccYn);
					console.log(data.resultMsg);
					var data = {"page" : "mainpage"};
					if(data.sccYn == "Y"){
						alert(data.userNm + "님 환영합니다");

					}else{
						alert("사용자가 가입안되있거나 비밀번호가 잘못되었습니다");
					}
				},
				error : function(request,status,error){
					console.log("에러");
					
				}			
			});
	}

	// 회원가입
	function fn_userReg() {
		console.log("fn_userReg()");
		location.href = "/jsp/common/userreg.jsp";
		//location.replace("../jsp/common/userreg.jsp");
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
			<input type="button" value="회원가입" onclick="fn_userReg();"></input>		
		</td>	
</table>
</div>
</body>
</html>