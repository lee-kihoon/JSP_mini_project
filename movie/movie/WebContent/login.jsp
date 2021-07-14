<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<style>
body{	
	background : url('images/background.png');
	background-size : cover;
}
</style> 
<link rel="stylesheet" type="text/css" href="resource/style.css">
</head>

<body>
   <div class="main-container">
      <div class="main-wrap">
      <header>
         <div class="logo-wrap">
            <h1><b><font size=8 color="white">로그인</font></b></h1>
         </div>
      </header>
      <section class="login-input-section-wrap">
         <form action="login_check.jsp" method="post">
         <div class="login-input-wrap">   
            <input name="input_id" placeholder="Username" type="text"></input>
         </div>
         <div class="login-input-wrap password-wrap">   
            <input name="input_pw" type="password" placeholder="Password"></input>
         </div>
         <div class="login-button-wrap">
            <button>로그인</button>
         </div>
         <br><br><br>
         </form>
         <br><br><br><br>
         <div class="login-stay-sign-in">
            <font size=6 color=white ><strong>회원이 아니신가요?</strong></font><a href="signup.jsp"><font size=6 color=white>&nbsp;&nbsp;&nbsp;<strong>회원가입</strong></font></a>
         </div>
      </section>
      </div>
   </div>
</body>
</html>