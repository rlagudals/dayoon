<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ȸ������</title>
</head>
<style>
	div 
	{ 
		width:700px;
		height:300px;
		border:2px solid #C98AFF;	
	}
</style>
<script type="text/javascript" src="/js/common/jquery-1.12.3.min.js"></script>
<script>
$(document).ready(function(){
	
	$('#btnReg').click(function(){			
		
		var userNm = $('[id=txtUserNm]').val();
		var frontRegNo = $('[id=txtFrontRegNo]').val();
		var gender = $('[id=cboGender]').val();
		var loginId = $('[id=txtLoginId]').val();
		var loginPwd = $('[id=txtLoginPwd]').val();
		var email = $('[id=txtEmail]').val();
		var telNum = $('[id=txtTelNum]').val();
		var deptCd = $('[id=cboDeptCd]').val();
		var gradeCd = $('[id=cbogGradeCd]').val();
		
		var inputInfo = { "userNm" : userNm, "frontRegNo" : frontRegNo, "gender" : gender, 
				          "loginId" : loginId, "loginPwd" : loginPwd, "email" : email,
						  "telNum" : telNum, "deptCd" : deptCd, "gradeCd" : gradeCd };
		
	
		$.ajax({ 
			type : "POST",
			dataType : "json",
			contentType: 'application/json; charset=UTF-8', 
			url : "/userRegProc",
			data : JSON.stringify(inputInfo),
			success : function(data){		
				
				if(data.userRegCheck == "Y"){
					alert(data.userNm + "�� ȸ�������� �Ϸ�Ǿ����ϴ�.");
				}else{
					alert("�űԵ���� ���������� ó������ �ʾҽ��ϴ�.");
				}
			},
			error : function(request,status,error){
				console.log("����");			
			}			
			
		});		
	});		
}); // document.ready	


function aaa(){
	
	alert("1111111111");
}


</script>
<body>
<div>
	<table>
	<tr height="3"></tr>
	<tr>
	    <td style="font-size:10pt; font-family:'����';">�̸�</td>
		<td><input type="text" id="txtUserNm"></td>		
	</tr>
	<tr> 
	    <td style="font-size:10pt; font-family:'����';">�������</td>
		<td><input type="text" maxlength="6" id="txtFrontRegNo"></td>		
	</tr>
	<tr>
	    <td style="font-size:10pt; font-family:'����';">����</td>
		<td>
			<select id="cboGender">
				<option value="1">��</option>
				<option value="2">��</option>
			</select>
		</td>		
	</tr>
	<tr>
	    <td style="font-size:10pt; font-family:'����';">���̵�</td>
		<td><input type="text" id="txtLoginId"></td>
		<!-- <td><input type="button" value="���̵� �ߺ� üũ" onclick="fn_idCheck();"></td> -->
	</tr>
	<tr>
	    <td style="font-size:10pt; font-family:'����';">��й�ȣ</td>
		<td><input type="password" id="txtLoginPwd"></td>		
	</tr>
	<tr>
	    <td style="font-size:10pt; font-family:'����';">�̸���</td>
		<td><input type="text" id="txtEmail"></td>		
	</tr>
	<tr>
	    <td style="font-size:10pt; font-family:'����';">����ó</td>
		<td><input type="text" id="txtTelNum" maxlength="13" pattern="[0-9]{3}-[0-9]{4}-[0-9]d{4}"></td>		
	</tr>
	<tr>
	    <td style="font-size:10pt; font-family:'����';">�μ�</td>
		<td>
			<select id="cboDeptCd">
				<option value="A0000">����1����</option>
				<option value="B0000">����2����</option>
				<option value="C0000">����3����</option>
				<option value="D0000">��������</option>
			</select>
		</td>		
	</tr>
	<tr>
	    <td style="font-size:10pt; font-family:'����';">����</td>
		<td><select id="cbogGradeCd">
				<option value="0001">��ǥ</option>
				<option value="0002">����</option>
				<option value="0003">��</option>
				<option value="0004">�̻�</option>
				<option value="0005">����</option>
				<option value="0006">����</option>
				<option value="0007">����</option>
				<option value="0008">�븮</option>
				<option value="0009">����</option>
				<option value="0010">���</option>
				<option value="0011">����</option>
				<option value="0012">��Ÿ</option>
			</select>
		</td>		
	</tr>
	<tr>
		<td><input type="button" id="btnReg" value="�����ϱ�"/></td>
	</tr>
	</table>
</div>
</body>
</html>