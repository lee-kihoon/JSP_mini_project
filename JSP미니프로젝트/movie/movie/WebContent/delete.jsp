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
	PreparedStatement pstmt = null;
	PreparedStatement pstm = null;
	PreparedStatement pst = null;
	ResultSet rs = null;

	try {
		String sql = "select id from movie_member where id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		rs = pstmt.executeQuery();

		if (rs.next()) {
			String sq = "delete from movie_member where id=?";
			pstm = conn.prepareStatement(sq);
			pstm.setString(1, id);
			pstm.executeUpdate();
			String s = "delete from interest where id=?";
			pst = conn.prepareStatement(s);
			pst.setString(1, id);
			pst.executeUpdate();
			session.removeAttribute("id");
			response.sendRedirect("login.jsp");
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