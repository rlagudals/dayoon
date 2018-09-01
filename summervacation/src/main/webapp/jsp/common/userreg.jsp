<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>회원가입</title>
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
					alert(data.userNm + "님 회원가입이 완료되었습니다.");
				}else{
					alert("신규등록이 정상적으로 처리되지 않았습니다.");
				}
			},
			error : function(request,status,error){
				console.log("에러");			
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
	    <td style="font-size:10pt; font-family:'돋움';">이름</td>
		<td><input type="text" id="txtUserNm"></td>		
	</tr>
	<tr> 
	    <td style="font-size:10pt; font-family:'돋움';">생년월일</td>
		<td><input type="text" maxlength="6" id="txtFrontRegNo"></td>		
	</tr>
	<tr>
	    <td style="font-size:10pt; font-family:'돋움';">성별</td>
		<td>
			<select id="cboGender">
				<option value="1">남</option>
				<option value="2">여</option>
			</select>
		</td>		
	</tr>
	<tr>
	    <td style="font-size:10pt; font-family:'돋움';">아이디</td>
		<td><input type="text" id="txtLoginId"></td>
		<!-- <td><input type="button" value="아이디 중복 체크" onclick="fn_idCheck();"></td> -->
	</tr>
	<tr>
	    <td style="font-size:10pt; font-family:'돋움';">비밀번호</td>
		<td><input type="password" id="txtLoginPwd"></td>		
	</tr>
	<tr>
	    <td style="font-size:10pt; font-family:'돋움';">이메일</td>
		<td><input type="text" id="txtEmail"></td>		
	</tr>
	<tr>
	    <td style="font-size:10pt; font-family:'돋움';">연락처</td>
		<td><input type="text" id="txtTelNum" maxlength="13" pattern="[0-9]{3}-[0-9]{4}-[0-9]d{4}"></td>		
	</tr>
	<tr>
	    <td style="font-size:10pt; font-family:'돋움';">부서</td>
		<td>
			<select id="cboDeptCd">
				<option value="A0000">금융1본부</option>
				<option value="B0000">금융2본부</option>
				<option value="C0000">금융3본부</option>
				<option value="D0000">연구본부</option>
			</select>
		</td>		
	</tr>
	<tr>
	    <td style="font-size:10pt; font-family:'돋움';">직급</td>
		<td><select id="cbogGradeCd">
				<option value="0001">대표</option>
				<option value="0002">전무</option>
				<option value="0003">상무</option>
				<option value="0004">이사</option>
				<option value="0005">부장</option>
				<option value="0006">차장</option>
				<option value="0007">과장</option>
				<option value="0008">대리</option>
				<option value="0009">주임</option>
				<option value="0010">사원</option>
				<option value="0011">인턴</option>
				<option value="0012">기타</option>
			</select>
		</td>		
	</tr>
	<tr>
		<td><input type="button" id="btnReg" value="가입하기"/></td>
	</tr>
	</table>
</div>
</body>
</html>