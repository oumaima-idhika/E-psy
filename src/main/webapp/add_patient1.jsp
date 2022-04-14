<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <style><%@include file="/WEB-INF/espacePsy.css"%></style>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <title>e-psy</title>
</head>
<body>
    <%@ include file="header.jsp" %>

        <div class="container" id ="formulaire">
            
            <form action="${pageContext.request.contextPath}/Test" method="post">
                <div class="card" style="padding: 30px;border-radius: 10px;margin-bottom: 30px;">
                    <h5 class="card-title" style="color: #00c4cc;margin-bottom: 50px;">Informations Personnelles</h5>
                    <div class="form-row">
                  <div class="col-md-6 mb-3">
                    <label>Nom</label>
                    <input type="text" class="form-control" placeholder="nom" name= "nom" required>
                  </div>
                  <div class="col-md-6 mb-3">
                    <label>Prenom</label>
                    <input type="text" class="form-control"  placeholder="prenom" name= "prenom" required>
                  </div>
                  
                </div>
                <fieldset class="form-group" style="margin-top: 25px;margin-bottom: 30px;">
                    <div class="row">
                      <legend class="col-form-label col-sm-2 pt-0"> Sexe :</legend>
                      <div class="col-sm-10">
                        <div class="form-check form-check-inline">
                          <input class="form-check-input" type="radio" name="sexe" id="gridRadios1" value="femme">
                          <label class="form-check-label" for="gridRadios1">
                            Femme
                          </label>
                        </div>
                        <div class="form-check form-check-inline">
                          <input class="form-check-input" type="radio" name="sexe" id="gridRadios2" value="homme">
                          <label class="form-check-label" for="gridRadios2">
                            Homme
                          </label>
                        </div>
                      </div>
                    </div>
                  </fieldset> 
                <div class="form-row">
                  <div class="col-md-6 mb-3">
                    <label>Age</label>
                    <input type="number" class="form-control"  placeholder="age" name="age" required>
                  </div>
                  <div class="col-md-6 mb-3">
                    <label>nom d'utilisateur </label>
                    <input type="text" class="form-control" placeholder="username" name ="username"/>
                    
                  </div>
                  </div>
                  
                
                
                  
                  
                  <div class="form-row">
                    <div class="col-md-6 mb-3">
                      <label>Email</label>
                      <input type="email" class="form-control" placeholder="email" name="email" required>
                    </div>
                    <div class="col-md-6 mb-3">
                      <label>Ville</label>
                      <input type="text" class="form-control"  placeholder="ville" name="ville" required>
                    </div>
                    
                  </div>
                  <fieldset class="form-group" style="margin-top: 25px;margin-bottom: 30px;">
                    <div class="row">
                      <legend class="col-form-label col-sm-3 pt-0"> Etat civil :</legend>
                      <div class="col-sm-9">
                        <div class="form-check form-check-inline">
                          <input class="form-check-input" type="radio" name="etatCivil" id="gridRadios1" value="célibataire">
                          <label class="form-check-label" for="gridRadios1">
                            Célibataire
                          </label>
                        </div>
                        <div class="form-check form-check-inline">
                          <input class="form-check-input" type="radio" name="etatCivil" id="gridRadios2" value="marié(e)">
                          <label class="form-check-label" for="gridRadios2">
                            Marié(e)
                          </label>
                        </div>
                      </div>
                    </div>
                  </fieldset> 
                  <div class="form-row">
                    <div class="col-md-6 mb-3">
                      <label>contact</label>
                      <input type="number" class="form-control" placeholder="" name="contact" required>
                    </div>
                    <div class="col-md-6 mb-3">
                      <label>Contact d'urgence</label>
                      <input type="text" class="form-control"  placeholder=" " name="contactUrg" required>
                    </div>
                    
                  </div>
                  
                </div>
                <div class="card" style="padding: 30px;border-radius: 10px;margin-bottom: 30px;">
                    <h5 class="card-title" style="color: #00c4cc;margin-bottom: 50px;">Informations Médicales</h5>

                    <div class="form-row">
                    <div class="col-md-6 mb-3">
                      <label>Diagnostic</label>
                      <input type="text" class="form-control" placeholder="diagnostic" name="diagnostic" required>
                    </div>
                    <div class="col-md-6 mb-3">
                      <label>Date de dernière consultation </label>
                      <input type="date" class="form-control"  placeholder="" name="dateCons" required>
                    </div>
                    
                  </div>
                  <div class="form-group">
                    <label for="exampleFormControlTextarea1">Prescription de médicaments</label>
                    <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" name= "prescription"></textarea>
                  </div>
                  <div class="form-row">
                    <div class="col-md-6 mb-3">
                    <label for="exampleFormControlSelect1">Type de suivi suggéré</label>
                    <select class="form-control" id="exampleFormControlSelect1" name="suivi">
                      <option value = "1">Quotidien</option>
                      <option value = "7">Hebdomadaire</option>
                      <option value = "30">Mensuelle</option>
                      <option value = "0">Autre</option>
                    </select>
                </div>
                <div class="col-md-6 mb-3">
                    <label>Autre </label>
                    <input type="number" class="form-control"  placeholder="nombre de jours" name="suivi1">
                  </div>
                  </div>
                  <div class="form-group">
                    <label for="exampleFormControlTextarea1">Notes</label>
                    <textarea class="form-control" id="exampleFormControlTextarea1" rows="4" name="notes"></textarea>
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
</body>
</html>