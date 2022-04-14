
    <%@ page import="java.io.*,java.util.*,java.sql.*"%>  
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script><script src="js/bootstrap.min.js"></script>
<style><%@include file="/WEB-INF/espacePsy.css"%></style>
<title>e-psy</title>
</head>
<body>
<sql:setDataSource var="db" driver="com.mysql.cj.jdbc.Driver"  
     url="jdbc:mysql://localhost:3306/add_epsy?serverTimezone=UTC"  
     user="root"  password="oumaIdhik2001"/>
<div class="list1">
        <div><a href="#logo"><img src="images/E-psy_.png" width="110px" height="110px" style="margin-left: 30px;margin-top: -15px;margin-bottom: 50px;"></a></div>
       
       
 <a href="messages.jsp"><div class="notification-box">
       
 <sql:query dataSource="${db}" var="rs1">  
SELECT * FROM message where username_doctor="Kadri Achraf" and seen=0 ;
</sql:query>
<c:if test="${ rs1.rowCount > 0 }" var="variable">
    <span class="notification-count">${rs1.rowCount}</span>
</c:if> 
    <div class="notification-bell">
    <i class="fa fa-bell"  id="bell"></i>
    </div>
  </div></a>
        
        
        <div class="dropdown">
        <div class="droite">
        <span style="color: #00c4cc; text-transform: uppercase;margin-right:10px">${nom} ${prenom}</span>
  <img src="images/admin_logo.png" width="50px" height="50px" id="admin"  onclick="myFunction()" class="dropbtn">
  <div id="myDropdown" class="dropdown-content">
    <a href="display.jsp"><i class="fa fa-sign-out" style="font-size:20px;color:#ffbd1f"></i> Profil</a>
    <a href="deconnect"><i class="fa fa-user" style="font-size:20px;color:#ffbd1f"></i> Se déconnecter</a>
    
  </div>
</div>
    
  </div>
  </div>
</body>
</html>
<script type="text/javascript">
function myFunction() {
  document.getElementById("myDropdown").classList.toggle("show");
}

// Close the dropdown menu if the user clicks outside of it
window.onclick = function(event) {
  if (!event.target.matches('.dropbtn')) {
    var dropdowns = document.getElementsByClassName("dropdown-content");
    var i;
    for (i = 0; i < dropdowns.length; i++) {
      var openDropdown = dropdowns[i];
      if (openDropdown.classList.contains('show')) {
        openDropdown.classList.remove('show');
      }
    }
  }
}
</script>