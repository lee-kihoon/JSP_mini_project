<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>영화 세부내용</title>
</head>
<body>
<%@ include file = "menu.jsp" %>
   <%@ include file="dbconn.jsp" %>
      
      <% ResultSet rs = null;
      PreparedStatement pstmt = null;
      String image = request.getParameter("image");
      try {String sql = "select * from movie where image=?";
      pstmt = conn.prepareStatement(sql);
      pstmt.setString(1, image);
      rs = pstmt.executeQuery();
      
      
      if (rs.next()) {
         String name = rs.getString("NAME");
         String summary = rs.getString("SUMMARY");
         String actor = rs.getString("ACTOR");
         String score = rs.getString("SCORE");
         String audience = rs.getString("AUDIENCE");
         String site = rs.getString("URL");
         String genre = rs.getString("genre");
         String age = rs.getString("age");
         String opendate = rs.getString("opendate");
         
         %>
  <div class="allDiv">
  <div class="info_name">
   <h1><%=name%></h1>
   <br>
    </div><br><br>
      <div class="movieDiv">
          <span class="img">
            <!-- 이미지 -->
            <img src="images/<%=image%>" width="300" height="300">
          </sapn>
          <span class = "video">
            <!-- 동영상 -->
            <iframe width="500" height="315" src=<%=site %>> 
            </iframe>
          </span>
          <br>
          <br>
      </div>
<tr>
	<div class="context">
	<br>
   <% if(summary!=null){ %>
   <td>줄거리 :<br> <%=summary%><br></td>
   <%}%>
   <td>영화배우 : <%=actor%><br></td>
   <td>장르 : <%=genre%><br></td>
   <td>등급 : <%=age%><br></td>
   <td>개봉일 : <%=opendate%><br></td>
   <% if(score!=null){ %>
   <td>평점 : <%=score%><br></td>
   <%}%>
   <% if(audience!=null){ %>
   <td>누적관객수 :<%=audience%><br></td>
   <%}%>
   <br>
	</div>
	<br>
   <td><button class="jjimbtn" onclick="location.href='jjim.jsp?image=<%=image%>'"> 찜하기 </button></td>
</tr>

</div>

  <%
      }//end while
   } finally {
      if (rs != null)
         rs.close();
      if (pstmt != null)
         pstmt.close();
      if (conn != null)
         conn.close();
   }//end try
      %>


</body>
</html>