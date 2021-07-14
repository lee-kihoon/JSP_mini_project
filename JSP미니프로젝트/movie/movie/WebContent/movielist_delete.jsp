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

	String image = request.getParameter("image");
	PreparedStatement pstmt = null;
	ResultSet rs = null;

	try {
		String sql = "select id from interest where image=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, image);
		rs = pstmt.executeQuery();

		if (rs.next()) {
			sql = "delete from interest where image=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, image);
			pstmt.executeUpdate();
			response.sendRedirect("movielist.jsp");
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