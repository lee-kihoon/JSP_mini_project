<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="dbconn.jsp"%>
	<%
	request.setCharacterEncoding("utf-8");

	String id = request.getParameter("id");
	String passwd = request.getParameter("password");
	String name = request.getParameter("name");
	String gender = request.getParameter("gender");
	String email = request.getParameter("email");
	String pnum1 = request.getParameter("phone1");
	String pnum2 = request.getParameter("phone2");
	String pnum3 = request.getParameter("phone3");
	String birth1 = request.getParameter("birth1");
	String birth2 = request.getParameter("birth2");
	String birth3 = request.getParameter("birth3");
	PreparedStatement pstmt = null;

	try {
		String sql = "insert into movie_member(id, password, name, gender, email, phone, birth) values(?,?,?,?,?,?,?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setString(2, passwd);
		pstmt.setString(3, name);
		pstmt.setString(4, gender);
		pstmt.setString(5, email);
		pstmt.setString(6, pnum1 + "-" + pnum2 + "-" + pnum3);
		pstmt.setString(7, birth1 + "년" + birth2 + "월" + birth3 + "일");
		pstmt.executeUpdate();
		out.println("회원가입이 완료되었습니다.");
	} catch (SQLException ex) {
		out.println("회원가입에 실패하였습니다.<br>");
		out.println("SQLException: " + ex.getMessage());
	} finally {
		if (pstmt != null)
			pstmt.close();
		if (conn != null)
			conn.close();
	}
	%>
	<a href="login.jsp">로그인창으로</a>
</body>
</html>