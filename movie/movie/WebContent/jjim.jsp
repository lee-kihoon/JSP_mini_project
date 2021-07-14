<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="dbconn.jsp" %>
<%
request.setCharacterEncoding("utf-8");
String id = (String)session.getAttribute("id");
String image = request.getParameter("image");
PreparedStatement pstmt = null;
PreparedStatement pstm =null;
PreparedStatement pst = null;
ResultSet rs = null;
ResultSet r = null;

try {
   String sql = "select * from movie where image=?";
   pstmt = conn.prepareStatement(sql);
   pstmt.setString(1, image);
   rs = pstmt.executeQuery();
   

   if (rs.next()) {
      String m_name = rs.getString("name");
      String m_image = rs.getString("image");
      
      String s = "select * from interest";
      pst = conn.prepareStatement(s);
      r = pst.executeQuery();
      if(r.next()){
         String id1 = r.getString("id");
         if(id1.equals(id) && m_image.equals(image) ){
            %> <script> alert("이미 찜한 영화입니다."); history.go(-2);</script><%
         }
      }
      
      String sq = "insert into interest (name, image, id) values(?,?,?)";
      pstm = conn.prepareStatement(sq);
      pstm.setString(1, m_name);
      pstm.setString(2, m_image);
      pstm.setString(3, id);
      pstm.executeUpdate();
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