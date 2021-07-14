<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="resource/style.css">
<title>Movie</title>

</head>
<body>
<%@ include file = "menu.jsp" %>
<div class="outerMainMovie">
   <div class="mainMovie">   
      <div class="row">
         <span class="cell col1">
            <button type="button" class="btm_image" id="img_btn" onclick="location.href='movieinfo.jsp?image=movie35.jpg'">
            <img src="images/movie35.jpg" width=300 height=400>
            </button>
         </span>
         <span class="cell col2">
            <button type="button" class="btm_image" id="img_btn" onclick="location.href='movieinfo.jsp?image=movie37.jpg'">
            <img src="images/movie37.jpg" width=300 height=400>
            </button></span>
         <span class="cell col3">
            <button type="button" class="btm_image" id="img_btn" onclick="location.href='movieinfo.jsp?image=movie36.jpg'">
            <img src="images/movie36.jpg" width=300 height=400>
            </button></span>
         <span class="cell col4">
            <button type="button" class="btm_image" id="img_btn" onclick="location.href='movieinfo.jsp?image=movie31.jpg'">
            <img src="images/movie31.jpg" width=300 height=400>
            </button>
         </span>
      </div>
      <div class="row">
         <span class="cell col1">
            <button type="button" class="btm_image" id="img_btn" onclick="location.href='movieinfo.jsp?image=movie32.jpg'">
            <img src="images/movie32.jpg" width=300 height=400>
            </button>
         </span>
         <span class="cell col2">
            <button type="button" class="btm_image" id="img_btn" onclick="location.href='movieinfo.jsp?image=movie33.jpg'">
            <img src="images/movie33.jpg" width=300 height=400>
            </button>
         </span>
         <span class="cell col3">
            <button type="button" class="btm_image" id="img_btn" onclick="location.href='movieinfo.jsp?image=movie34.jpg'">
            <img src="images/movie34.jpg" width=300 height=400>
            </button>
         </span>
         <span class="cell col4">
            <button type="button" class="btm_image" id="img_btn" onclick="location.href='movieinfo.jsp?image=movie38.jpg'">
            <img src="images/movie38.jpg" width=300 height=400>
            </button>
         </span>
      </div>
   </div>
</div>
   <footer>
      <%@ include file="footer.jsp"%>
   </footer>
</body>
</html>