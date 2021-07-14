<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>나의 관심 영화</title>
</head>
<body>
<%@ include file = "menu.jsp" %>
	<%@ include file="dbconn.jsp"%>
	<div class="rDiv">
	<strong><h1>나의 관심 영화</h1></strong>
   <table class="rTable">
      <tr class="rTableTr">
         <th>포스터</th>
         <th>영화이름</th>
         <th>상세보기</th>
         <th>삭제하기</th>
      </tr>
		<%
		String m_id = (String)session.getAttribute("id");
			ResultSet rs = null;			
			PreparedStatement pstmt = null;

			try {
				String sql = "select * from interest where id=?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, m_id);
				rs = pstmt.executeQuery();

				while (rs.next()) {
					String name = rs.getString("name");
					String image = rs.getString("image");
		%>
		<tr>
			<td class="rTableTd" style="text-align:center"><img src="images/<%=image%>" width="200" height="200"></td>
			<td class="rTableTd" style="text-align:center"><%=name%></td>
			<td class="rTableTd" style="text-align:center"><a href="movieinfo.jsp?image=<%=image%>">상세보기</a></td>
			<td class="rTableTd" style="text-align:center"><a href="movielist_delete.jsp?image=<%= image%>">삭제</a></td>
		</tr>
		</div>
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
	</table>
	
<footer>
		<%@ include file="footer.jsp"%>
</footer>
</body>
</html>