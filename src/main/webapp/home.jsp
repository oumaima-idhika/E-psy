<%@page import="beans.LoginBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.6.0/font/bootstrap-icons.css" integrity="sha384-7ynz3n3tAGNUYFZD3cWe5PDcE36xj85vyFkawcF6tIwxvIecqKvfwLiaFdizhPpN" crossorigin="anonymous">
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
       
 </div>      
<div class="container" style="margin-top:140px">

<div class="msg">
${msg}
</div>

<div class="login">
<div style="text-align:center">
<img src="images/E-psy_.png" width="90px" height="90px">
</div>
<form action="login" method="post">
<pre>

   <label for="user" style="color: #00c4cc"><i class="bi bi-person-fill" style="color: #00c4cc"></i> Username </label>
   <input id="user" name="user" type="text" placeholder="username" required="true"/>
 
   <label for="pass" style="color: #00c4cc"><i class="bi bi-shield-lock-fill" style="color: #00c4cc"></i> Password</label>
   <input id="pass" name="pass" type="password" placeholder="password" required="true"/>
     
  	   <label for="select" style="color: #00c4cc;margin-left:-58px">Select</label>
  	   <select name="type" id="select" data-iconpos="right" style="margin-left:-58px">
     <option value="Medecin">Psychiatre</option>
     <option value="Patient">Patient</option>
 	   </select>
     
  
        <button type="submit" class="form_butt" style="width:120px;margin-left:-38px;">Se connecter</button>
</pre>
</form>
</div>











<br>
</div>



<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

</body>
</html>

<style>
.card-header
{
	font-size: 24px;
	font-family: fantasy;
	color: red;
}


body
{
	background-color: #f5f6f7;
}

.card
{
	text-align: center;
}


.login
{
	width: 420px;
	height: 500px;
	color: #000; 
	box-sizing: border-box;
	margin: 5px 530px;
	padding: 20px;
	border: solid 1px rgb(240, 240, 240);
	border-radius: 10px;
	box-shadow: 5px 5px 10px 5px #e4e9ea;
	
}

.loginbox label
{
	margin: 0;
	padding: 0;
	font-weight: bold;
}

.login input
{
	width: 80%;
	margin-bottom: 10px;
	height:35px;
	border: none;
    outline: none;
    border-bottom:solid 1px grey;
}
.msg
{
	text-align: center;
	margin: 3px 220px;
}
</style>