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
<body>
   <%@ include file="dbconn.jsp"%>
	<%@ include file = "menu.jsp" %>
   <%
      String m_id = (String)session.getAttribute("id");
         ResultSet rs = null;         
         PreparedStatement pstmt = null;

         try {
            String sql = "select * from movie_member where id=?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, m_id);
            rs = pstmt.executeQuery();

            if (rs.next()) {
               String name = rs.getString("name");
               String gender = rs.getString("gender");
               String email = rs.getString("email");
               String phone = rs.getString("phone");
               %>
               <table style="margin: auto; text-align:center" width="450" height="600">
               <tr>
                  <td colspan="2" align=center><b><font size=5>회원정보 페이지</font></b></td>
               </tr>
               <tr>
                  <td>아 이 디</td>
                  <td><%= session.getAttribute("id") %></td>
               </tr>
               <tr>
                  <td>이 름</td>
                  <td><%= name %></td>
               </tr>
               <tr>
                  <td>성별</td>
                  <td><%= gender %></td>
               </tr>
               <tr>
                  <td>이메일</td>
                  <td><%= email %></td>
               </tr>
               <tr>
                  <td>전화번호</td>
                  <td><%= phone %></td>
               </tr>
               <tr>
                  <td colspan="2" align=center><input class="btn1" type="button"
                     onclick="location.href='update.jsp'" value="수정하기">
                      <input class="btn1"
                     type="button" onclick="location.href='delete.jsp'" value="회원탈퇴"></td>
               </tr>
            </table>
            <%
            }//end while
         } catch (SQLException ex) {
            out.println("SQLException: " + ex.getMessage());
         } finally {
            if (rs != null)
               rs.close();
            if (pstmt != null)
               pstmt.close();
            if (conn != null)
               conn.close();
         }//end try
      %>
      
   <footer>
      <%@ include file="footer.jsp"%>
   </footer>
</body>
</html>