<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
 
        <section style="margin-top:250px;" >
    
    <div class="row">
  <div class="col-sm-4">
  <a href="add_question1.jsp">
    <div class="card card1" style="text-align: center;padding: 10px;margin: 40px;border: rgb(230, 224, 224) solid 1px">
      <div class="card-body">
        <img class="card-img-top" src="images/E-psy-form.png"  style="height: 80px;width: 80px;margin-bottom: 50px;" alt="formulaire">

                <h5 class="card-title">Créer un formulaire</h5>
      </div>
    </div>
    </a>
  </div>

  <div class="col-sm-4">
   <a href="ListePatients.xhtml">
    <div class="card card1" style="text-align: center;padding: 10px;margin: 40px;border: rgb(230, 224, 224) solid 1px">
      <div class="card-body">
        
                <img class="card-img-top" src="images/E-psy-list.png" style="height: 80px;width: 80px;margin-bottom: 50px;" alt="liste des patients">

                <h5 class="card-title">Afficher la liste des patients</h5>
      </div>
    </div>
    </a>
  </div>
 
  <div class="col-sm-4">
  <a href="add_patient1.jsp">
    <div class="card card1" style="text-align: center;padding: 10px;margin: 40px;border: rgb(230, 224, 224) solid 1px;">
      <div class="card-body">
        <img class="card-img-top" src="images/E-psy-ajout.png"  style="height: 80px;width: 80px;margin-bottom: 50px;" alt="ajout de patients">

                <h5 class="card-title">Ajouter un patient </h5>
      </div>
    </div>
    </a>
  </div>
</div>
      </section>
  

   


       
   
    
</body>
</html>
