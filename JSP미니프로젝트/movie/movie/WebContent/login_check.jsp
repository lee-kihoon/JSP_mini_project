<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <h1> 로그인 체크 페이지 </h1>
    <%@ include file="dbconn.jsp" %>
    <%
    String user_id= request.getParameter("input_id");
    String user_pw = request.getParameter("input_pw");
    ResultSet rs = null;
    PreparedStatement pstmt = null;
    try {
        String sql = "select id,password from movie_member where id=? and password=?";
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, user_id);
        pstmt.setString(2, user_pw);
        rs = pstmt.executeQuery();
        
        if(rs.next()) {
            session.setAttribute("id", user_id); 
            response.sendRedirect("main.jsp");
        } else {
            %> <script> alert("아이디,비밀번호를 확인하세요."); history.go(-1); </script> <%            
        }
    } catch (Exception e) {       
        out.println("DB 연동 실패");
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