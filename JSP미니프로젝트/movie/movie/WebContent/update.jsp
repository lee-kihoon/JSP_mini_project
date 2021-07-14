<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
		var regExpName = /^[가-힣]{2,}$/;
		var regExpPasswd = /^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$/;
		var regExpPasswd_check = /^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$/;
		var regExpPhone = /^\d{3}-\d{3,4}-\d{4}$/;
		var regEmail = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
		var form = document.Member;
		var name = form.name.value;
		var password = form.password.value;
		var password_check = form.password_check.value;
		var phone = form.phone1.value + "-" + form.phone2.value + "-"
				+ form.phone3.value;
		var email = form.email.value;
		if (!regExpPasswd.test(password)) {
			alert("비밀번호는 영문,숫자 조합으로 최소8자이상으로 입력해주세요!");
			form.password.select();
			return;
		}//end if
		if (password != password_check) {
			alert("비밀번호가 동일하지 않습니다!");
			form.password_check.select();
			return;
		}//end if
		if (!regExpName.test(name)) {
			alert("이름은 두자 이상 한글만으로 입력해 주세요!");
			form.name.select();
			return;
		}//end if
		if (!regEmail.test(email)) {
			alert("이메일 입력을 확인해 주세요!");
			return;
		}//end if
		if (!regExpPhone.test(phone)) {
			alert("연락처 입력을 확인해 주세요!");
			return;
		}//end if
		form.submit();
	}
</script>
<body>
	<form action="update_process.jsp" name="Member" method="post">
		<table style="margin: auto; text-align:center" width="450" height="600">
			<tr>
				<td colspan="2" align=center><b><font size=5>회원수정
							페이지</font></b></td>
			</tr>
			<tr>
				<td>아 이 디</td>
				<td><%=session.getAttribute("id")%></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" name="password"
					placeholder="영문,숫자 조합 최소8자"></td>
			</tr>
			<tr>
				<td>비밀번호확인</td>
				<td><input type="password" name="password_check"></td>
			</tr>
			<tr>
				<td>이 름</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td>성별</td>
				<td>남<input type="radio" name="gender" value="남"> 여<input
					type="radio" name="gender" value="여"></td>
			</tr>
			<tr>
				<td>이메일</td>
				<td><input type="text" name="email"></td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td><input type="text" maxlength="3" size="3" name="phone1">
					- <input type="text" maxlength="4" size="4" name="phone2">
					- <input type="text" maxlength="4" size="4" name="phone3"></td>
			</tr>
			<tr>
				<td colspan="2" align=center>
				<input class="btn1" type="button" value="수정하기"
					onclick="checkMember()"></td>
			</tr>
		</table>
	</form>


</body>
</html>