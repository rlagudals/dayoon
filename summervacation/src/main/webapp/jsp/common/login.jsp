<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�α���</title>
</head>

<style>
	div 
	{ 
		width:400px;
		height:100px;
		border:2px solid #FFB2D9;	
	}
</style>

<script type="text/javascript" src="../js/common/jquery-1.12.3.min.js"></script>

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
					console.log(data);
					console.log(data.sccYn);
					console.log(data.resultMsg);
					
					if(data.sccYn == "Y"){
						alert(data.userNm + "�� ȯ���մϴ�");
					}else{
						alert("����ڰ� ���Ծȵ��ְų� ��й�ȣ�� �߸��Ǿ����ϴ�");
					}
				},
				error : function(request,status,error){
					console.log("����");
					
				}			
			});
	}

	// ȸ������
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
			<label>���̵�</label>
		</td>
		<td>
			<input type="text" id="loginId"></input>
		</td>
	</tr>
	<tr>
		<td>
			<label>��й�ȣ</label>
		</td>
		<td>
			<input type="password" id="loginPwd"></input>
		</td>
	</tr>
	<tr>
		<td>
			<input type="button" value="�α���" onclick="fn_login();"></input>		
		</td>
		<td>
			<input type="button" value="ȸ������" onclick="fn_userReg();"></input>		
		</td>	
</table>
</div>
</body>
</html>