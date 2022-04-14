<%@ page import="java.io.*,java.util.*,java.sql.*"%>  
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>  
  
<html>  
<head>  
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script><script src="js/bootstrap.min.js"></script>
<style><%@include file="/WEB-INF/espacePsy.css"%></style>
<title>e-psy</title>  
</head>  
<body>  

  <%@ include file="header.jsp" %>
   
<sql:setDataSource var="db" driver="com.mysql.cj.jdbc.Driver"  
     url="jdbc:mysql://localhost:3306/add_epsy?serverTimezone=UTC"  
     user="root"  password="oumaIdhik2001"/>  
  
<sql:query dataSource="${db}" var="rs">  
SELECT * from add_psychiatre;  
</sql:query>  

   
<c:forEach var="table" items="${rs.rows}">  
<div class="container" id ="formulaire">
            
            <form action="${pageContext.request.contextPath}/Home" method="post">
   <div class="card" style="padding: 30px;border-radius: 10px;margin-bottom: 30px;">
                 <div style="text-align:center;">
   					<img src="images/admin_logo.png" width="100px" height="100px"></div>
                    <br><br><br>
                    <div class="form-row">
                    
                  <div class="col-md-6 mb-3">
                    <label>Nom :</label>
                    <input type="text" class="form-control" placeholder="nom" name= "nom" value="${table.nom}" required>
                  </div>
                  <div class="col-md-6 mb-3">
                    <label>Prenom :</label>
                    <input type="text" class="form-control"  placeholder="prenom" name= "prenom" value="${table.prenom}" required>
                  </div>
                  
                </div>
                <br><br>
                <div class="form-row">
                  
                    <label>Username :</label>
                    <input type="text" class="form-control" placeholder="username" name= "username" value="${table.username}" required>
                  </div>
                 <br><br>
                <div class="form-row">
                  
                    <label>password:</label>
                    <input type="password" class="form-control" placeholder="password" name= "password" value="${table.password}" required>
                  
                
                </div>
            </div>
             <div id="form_butts">
                    <button class="form_butt" type= "submit">Enregister</button>
                  </div>
                  </form>
                  <div id="form_butts">
             <a href="espacePsy.jsp" ><button class="form_butt">Retour</button></a>
              </div>
              </div>
 </c:forEach>

  
  
</body>  
</html>  