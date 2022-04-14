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
   <div class="list1">
        <div><a href="#logo"><img src="images/E-psy_.png" width="110px" height="110px" style="margin-left: 30px;margin-top: -15px;margin-bottom: 50px;"></a></div>
       
  <div class="dropdown">
        <div class="droite">
 <span style="color: #00c4cc; text-transform: uppercase;margin-right:10px">${nom} ${prenom}</span>
  <img src="images/admin_logo.png" width="50px" height="50px" id="admin"  onclick="myFunction()" class="dropbtn">
  <div id="myDropdown" class="dropdown-content">
    <a href="deconnect"><i class="fa fa-user" style="font-size:20px;color:#ffbd1f"></i> Se déconnecter</a>
    
  </div>
</div>
    
  </div>
  </div>
<sql:setDataSource var="db" driver="com.mysql.cj.jdbc.Driver"  
     url="jdbc:mysql://localhost:3306/add_epsy?serverTimezone=UTC"  
     user="root"  password="oumaIdhik2001"/>  
  
<sql:query dataSource="${db}" var="rs">  
SELECT distinct title from ${id_p };  
</sql:query>  
<div class="container" id ="formulaire">
    <form action="${pageContext.request.contextPath}/getQst" method="get">
<c:forEach var="table" items="${rs.rows}"> 
<h3 style="text-align:center;margin-bottom:40px;color:#00c4cc"><c:out value="${table.title}"/></h3>

             
           
   <div class="card" style="padding: 30px;border-radius: 10px;margin-bottom: 30px;">
                 <div>
                    <div class="form-group">
                    
                    <sql:query dataSource="${db}" var="rs1">  
					SELECT distinct question from ${id_p } where title =  "${table.title}" ;
					</sql:query> 
					<c:forEach var="table1" items="${rs1.rows}"> 
					 <label><c:out value="${table1.question}"/> </label>
                    <br><br>
                    <sql:query dataSource="${db}" var="rs2">  
					SELECT choice from ${id_p } where question =  "${table1.question}" ;
					</sql:query> 
					<c:forEach var="table2" items="${rs2.rows}"> 
                    <div class="form-check">
  <input class="form-check-input" type="radio" name="${table1.question}" id="exampleRadios1" value="${table2.choice }">
  <label class="form-check-label" for="exampleRadios1">
    <c:out value="${table2.choice }"></c:out>
  </label>
</div>
                  </c:forEach>
                  <br><br><br>
                  </c:forEach>
                  </div>
                  
                 <br>
      </div>   
      </div>
      
         
     
      
 </c:forEach>
  <div id="form_butts">
                   <a href="login" > <button class="form_butt" type= "submit">Enregister</button></a>
                  </div>
                  
              
 </form>
 
                  <div id="form_butts">
             <a href="espacePsy.jsp" ><button class="form_butt">Retour</button></a>
              </div>
 </div>

  
  
</body>  
</html>  