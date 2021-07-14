<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link rel="stylesheet" type="text/css" href="resource/style.css">
<style>
        #wrap{
            width:530px;
            margin-left:auto; 
            margin-right:auto;
            text-align:center;
        }
        
        table{
            border:3px solid skyblue
        }
        
        td{
            border:1px solid skyblue
        }
        
        #title{
            background-color:skyblue
        }
    </style>
</head>
<script type="text/javascript">
	function checkMember() {
		var regId = /^[a-zA-Z]{1}[a-zA-Z0-9]{6,10}$/;
		var regName = /^[가-힣]{2,}$/;
		var regPasswd = /^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$/;
		var regPasswd_check = /^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$/;
		var regPhone = /^\d{3}-\d{3,4}-\d{4}$/;
		var regEmail = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
		var regBirth = /^[0-9]{4}$/;  
		var form = document.Member;
		var id = form.id.value;
		var name = form.name.value;
		var password = form.password.value;
		var password_check = form.password_check.value;
		var phone = form.phone1.value + "-" + form.phone2.value + "-"
				+ form.phone3.value;
		var email = form.email.value;
		var birth = form.birth1.value;
		if (!regId.test(id)) {
			alert("아이디는 영문,숫자 조합으로 8~15자로 입력해주세요!");
			form.id.select();
			return;
		}//end if
		if (!regPasswd.test(password)) {
			alert("비밀번호는 영문,숫자 조합으로 최소8자이상으로 입력해주세요!");
			form.password.select();
			return;
		}//end if
		if (password != password_check) {
			alert("비밀번호가 동일하지 않습니다!");
			form.password_check.select();
			return;
		}//end if
		if (!regName.test(name)) {
			alert("이름은 두자 이상 한글만으로 입력해 주세요!");
			form.name.select();
			return;
		}//end if
		if (!regEmail.test(email)) {
			alert("이메일 입력을 확인해 주세요!");
			return;
		}//end if
		if (!regPhone.test(phone)) {
			alert("연락처 입력을 확인해 주세요!");
			return;
		}//end if
		if (!regBirth.test(birth)) {
			alert("태어난 년도를 입력해주세요!");
			return;
		}//end if
		form.submit();
	}
	function checkId() {
		if (!document.Member.id.value) {
			alert("아이디를 입력하세요.");
			return false;
		}
		window.name = "IDCheckForm";
		window
				.open("./idcheck.jsp?id=" + document.Member.id.value,
						"IDCheck",
						"width=300, height=160, left=810, top=200, resizable =no, scrollbars=no");
	}
</script>
<script type="text/javascript">
   function checkMember() {
      var regId = /^[a-zA-Z0-9]{8,15}$/;
      var regName = /^[가-힣]{2,}$/;
      var regPasswd = /^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$/;
      var regPasswd_check = /^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$/;
      var regPhone = /^\d{3}-\d{3,4}-\d{4}$/;
      var regEmail = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
      var regBirth = /^[0-9]{4}$/;
      var form = document.Member;
      var id = form.id.value;
      var name = form.name.value;
      var password = form.password.value;
      var password_check = form.password_check.value;
      var phone = form.phone1.value + "-" + form.phone2.value + "-"
            + form.phone3.value;
      var email = form.email.value;
      var birth = form.birth1.value;
      if (!regId.test(id)) {
         alert("아이디는 영문,숫자 조합으로 8~15자로 입력해주세요!");
         form.id.select();
         return;
      }//end if
      if (!regPasswd.test(password)) {
         alert("비밀번호는 영문,숫자 조합으로 최소8자이상으로 입력해주세요!");
         form.password.select();
         return;
      }//end if
      if (password != password_check) {
         alert("비밀번호가 동일하지 않습니다!");
         form.password_check.select();
         return;
      }//end if
      if (!regName.test(name)) {
         alert("이름은 두자 이상 한글만으로 입력해 주세요!");
         form.name.select();
         return;
      }//end if
      if (!regEmail.test(email)) {
         alert("이메일 입력을 확인해 주세요!");
         return;
      }//end if
      if (!regPhone.test(콜)) {
         alert("연락처 입력을 확인해 주세요!");
         return;
      }//end if
      if (!regBirth.test(birth)) {
         alert("태어난 년도를 입력해주세요!");
         return;
      }//end if
      form.submit();
   }
   function checkId() {
      var regId = /^[a-zA-Z0-9]{8,15}$/;
      var form = document.Member;
      var id = form.id.value;
      if (!regId.test(id)) {
         alert("아이디는 영문,숫자 조합으로 8~15자로 입력해주세요!");
         form.id.select();
         return;
      }//end if
      if (!document.Member.id.value) {
         alert("아이디를 입력하세요.");
         return false;
      }
      window.name = "IDCheckForm";
      window
            .open("./idcheck.jsp?id=" + document.Member.id.value,
                  "IDCheck",
                  "width=300, height=160, left=810, top=200, resizable =no, scrollbars=no"); 
   }
</script>
<body>
   <div id="wrap">
      <form action="signup_process.jsp" name="Member" method="post">
         <table style="margin: auto; text-align: center" width="450"
            height="600">
            <tr>
               <td colspan="2" align=center><b><font size="6"
                     color="gray">회원가입 페이지</font></b></td>
            </tr>
            <tr>
               <td id="title">아 이 디</td>
               <td><input type="text" name="id" placeholder="영문,숫자 조합 6~10자">
                  <input type="button" value="중복확인" onclick="checkId()"></td>
            </tr>
            <tr>
               <td id="title">비밀번호</td>
               <td><input type="password" name="password"
                  placeholder="영문,숫자 조합 최소8자"></td>
            </tr>
            <tr>
               <td id="title">비밀번호확인</td>
               <td><input type="password" name="password_check"></td>
            </tr>
            <tr>
               <td id="title">이 름</td>
               <td><input type="text" name="name"></td>
            </tr>
            <tr>
               <td id="title">성별</td>
               <td>남<input type="radio" name="gender" value="남"> 여<input
                  type="radio" name="gender" value="여"></td>
            </tr>
            <tr>
               <td id="title">이메일</td>
               <td><input type="text" name="email"></td>
            </tr>
            <tr>
               <td id="title">전화번호</td>
               <td><input type="text" maxlength="3" size="3" name="phone1">
                  - <input type="text" maxlength="4" size="4" name="phone2">
                  - <input type="text" maxlength="4" size="4" name="phone3"></td>
            </tr>
            <tr>
               <td id="title">생년월일</td>
               <td><input type="text" maxlength="4" size="4" name="birth1">년
                  <select name="birth2">
                     <option value="1">1</option>
                     <option value="2">2</option>
                     <option value="3">3</option>
                     <option value="4">4</option>
                     <option value="5">5</option>
                     <option value="6">6</option>
                     <option value="7">7</option>
                     <option value="8">8</option>
                     <option value="9">9</option>
                     <option value="10">10</option>
                     <option value="11">11</option>
                     <option value="12">12</option>
               </select>월 <select name="birth3">
                     <option value="1">1</option>
                     <option value="2">2</option>
                     <option value="3">3</option>
                     <option value="4">4</option>
                     <option value="5">5</option>
                     <option value="6">6</option>
                     <option value="7">7</option>
                     <option value="8">8</option>
                     <option value="9">9</option>
                     <option value="10">10</option>
                     <option value="11">11</option>
                     <option value="12">12</option>
                     <option value="13">13</option>
                     <option value="14">14</option>
                     <option value="15">15</option>
                     <option value="16">16</option>
                     <option value="17">17</option>
                     <option value="18">18</option>
                     <option value="19">19</option>
                     <option value="20">20</option>
                     <option value="21">21</option>
                     <option value="22">22</option>
                     <option value="23">23</option>
                     <option value="24">24</option>
                     <option value="25">25</option>
                     <option value="26">26</option>
                     <option value="27">27</option>
                     <option value="28">28</option>
                     <option value="29">29</option>
                     <option value="30">30</option>
                     <option value="31">31</option>
               </select>일</td>

			</tr>
			<tr>
				
				<td colspan="2" align=center>
				<input class="btn1" type="button" value="뒤로가기" onclick="location.href='login.jsp'">
				<input class="btn1" type="submit" value="가입하기" onclick="checkMember()"></td>
			</tr>
				
		</table>
	</form>
</body>
</html>