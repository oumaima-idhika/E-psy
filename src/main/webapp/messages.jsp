<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.io.*,java.util.*,java.sql.*"%>  
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>  
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>    <title>e-psy</title>
<style><%@include file="/WEB-INF/espacePsy.css"%></style>
</head>
<body>
<%@ include file="header.jsp" %>
<sql:setDataSource var="db" driver="com.mysql.cj.jdbc.Driver"  
     url="jdbc:mysql://localhost:3306/add_epsy?serverTimezone=UTC"  
     user="root"  password="oumaIdhik2001"/> 
    

   
  
<sql:query dataSource="${db}" var="rs"> 
SELECT * from message where username_doctor="Kadri Achraf" ORDER BY id DESC;  
</sql:query>  
               
<div id="chatbox">
	<div id="friendslist">
    	<div id="topmenu">
        	<span class="friends"></span>
            
        </div>
        
        <div id="friends">
        <c:forEach var="table" items="${rs.rows}"> 
        <c:choose>
        <c:when test="${table.seen==1}">
<div class="friend" style="background:#f1f4f6;">
    </c:when> 
        <c:otherwise>
          
<div class="friend" >
        
    </c:otherwise>	
    </c:choose>
        	<c:choose>
 
     <c:when test="${table.id % 2 ==0}">
<img src="images/avatar2.png" /> 
    </c:when> 
     <c:when test="${table.id % 3 ==0}">
<img src="images/avatarM1.png" />  
    </c:when> 
     <c:when test="${table.id % 7 ==0}">
<img src="images/avatar5.png" /> 
    </c:when>    
    <c:otherwise>
         <img src="images/avatar4.png" />  

        
    </c:otherwise>
</c:choose>
        	
                <p>
                	<strong><c:out value="${table.username_patient}"/></strong><br>
	                <span><c:out value="${table.message}"/></span>
                </p>
                <div class="status available">
                <c:choose>
        <c:when test="${table.seen==0}">
        <form action="${pageContext.request.contextPath}/See" method="post">
        <input name="idee" value="${table.id }" style="display:none"  />
        
<button type="submit" class="eye"><i class="fa fa-eye" style="font-size:24px;color:gray;"></i></button> </form> </c:when> 
        <c:otherwise>
          
<i class="fa fa-eye" style="font-size:24px;color:gray;display:none"></i>        
    </c:otherwise>	
    </c:choose>
    
              </div>  
                <div class="temps"><c:out value="${table.temps}"/> . <c:out value="${table.heure}"/></div>
                
            </div>
            
            </c:forEach>
            
        
           
           </div>
           
           <a href="espacePsy.jsp" ><button class="form_butt" >Retour</button></a></div>
           
       
          
 
    
</body>
</html>


