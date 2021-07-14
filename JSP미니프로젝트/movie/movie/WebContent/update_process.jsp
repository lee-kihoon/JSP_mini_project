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

	String id = (String) session.getAttribute("id");
	String passwd = request.getParameter("password");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String pnum1 = request.getParameter("phone1");
	String pnum2 = request.getParameter("phone2");
	String pnum3 = request.getParameter("phone3");
	String phone = pnum1 + "-" + pnum2 + "-" + pnum3;
	PreparedStatement pstmt = null;
	ResultSet rs = null;

	try {
		String sql = "select id from movie_member where id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		rs = pstmt.executeQuery();

		if (rs.next()) {
			sql = "update movie_member set password=?,name=?,email=?,phone=? where id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, passwd);
			pstmt.setString(2, name);
			pstmt.setString(3, email);
			pstmt.setString(4, phone);
			pstmt.setString(5, id);
			pstmt.executeUpdate();
			response.sendRedirect("main.jsp");

		}
	} catch (SQLException ex) {
		out.println(ex.getMessage());
	} finally {
		if (rs != null)
			rs.close();
		if (pstmt != null)
			pstmt.close();
		if (conn != null)
			conn.close();
	}
	%>
</body>
</html>