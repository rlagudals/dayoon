<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>여름방학</title>
    <!-- Bootstrap Core CSS -->
    <link href="../resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- MetisMenu CSS -->
    <link href="../resources/vendor/metisMenu/metisMenu.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="../resources/dist/css/sb-admin-2.css" rel="stylesheet">
    <!-- Custom Fonts -->
    <link href="../resources/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<!-- jQuery -->
<script type="text/javascript" src="../js/common/jquery-1.12.3.min.js"></script>
<!-- Bootstrap Core JavaScript -->
<script src="../resources/vendor/bootstrap/js/bootstrap.min.js"></script>
<!-- Metis Menu Plugin JavaScript -->
<script src="../resources/vendor/metisMenu/metisMenu.min.js"></script>
<!-- Custom Theme JavaScript -->
<script src="../resources/dist/js/sb-admin-2.js"></script>

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
						alert(data.userNm + "님 환영합니다");
					}else{
						alert("사용자가 가입안되있거나 비밀번호가 잘못되었습니다");
					}
				},
				error : function(request,status,error){
					console.log("에러");
					alert("서버에러입니다. \n 개발자에 문의하세요");
				}			
			});
	}

	function funcM() {
		alert();
	}
</script>

<body>

    <div class="container">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="login-panel panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">로그인 해주세요</h3>
                    </div>
                    <div class="panel-body">	
                        <form role="form">
                            <fieldset>
                                <div class="form-group">
<!--                                     <input class="form-control" placeholder="E-mail" name="email" type="email" autofocus> -->
                                    <input class="form-control"  placeholder="사용자아이디" id="loginId"  type="text" autofocus>
                                </div>
                                <div class="form-group">
                                    <input class="form-control" placeholder="비밀번호" id="loginPwd" type="password">
                                </div>
                                <div class="checkbox">
                                    <label>
                                        <input name="remember" type="checkbox" value="Remember Me">기억해줘 ...
                                    </label>
                                </div>
                                <!-- Change this to a button or input when using this as a form -->
                                <a href="javascript:void(0)" class="btn btn-lg btn-success btn-block" onclick="fn_login()">Login</a>
                            </fieldset>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>

</html>
