<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.6.0/font/bootstrap-icons.css" integrity="sha384-7ynz3n3tAGNUYFZD3cWe5PDcE36xj85vyFkawcF6tIwxvIecqKvfwLiaFdizhPpN" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="https://pixinvent.com/stack-responsive-bootstrap-4-admin-template/app-assets/css/bootstrap-extended.min.css">
<link rel="stylesheet" type="text/css" href="https://pixinvent.com/stack-responsive-bootstrap-4-admin-template/app-assets/fonts/simple-line-icons/style.min.css">
<link rel="stylesheet" type="text/css" href="https://pixinvent.com/stack-responsive-bootstrap-4-admin-template/app-assets/css/colors.min.css">
<link rel="stylesheet" type="text/css" href="https://pixinvent.com/stack-responsive-bootstrap-4-admin-template/app-assets/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Montserrat&display=swap" rel="stylesheet">
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












<div  style="margin-top:120px">
<div class="grey-bg container-fluid">
  <section id="minimal-statistics">
    <div class="row">
      <div class="col-12 mt-3 mb-1">
        <h3 class="text-uppercase" style="font-weight: bold;">Vos Informations Personnelles</h3>
        <p>Inscrites chez le Docteur.</p>
      </div>
    </div>
    <div class="row">
      <div class="col-xl-3 col-sm-6 col-12"> 
        <div class="card">
          <div class="card-content">
            <div class="card-body">
              <div class="media d-flex">
                <div class="align-self-center">
                  <i class="bi bi-person primary font-large-2 float-left"></i>
                </div>
                <div class="media-body text-right">
                  <h3>Nom Complet</h3>
                  <span style="text-transform: uppercase;">${nom} ${prenom }</span>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="col-xl-3 col-sm-6 col-12">
        <div class="card">
          <div class="card-content">
            <div class="card-body">
              <div class="media d-flex">
                <div class="align-self-center">
                  <i class="bi bi-gender-ambiguous warning font-large-2 float-left"></i>
                </div>
                <div class="media-body text-right">
                  <h3>Sexe</h3>
                  <span>${sexe}</span>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="col-xl-3 col-sm-6 col-12">
        <div class="card">
          <div class="card-content">
            <div class="card-body">
              <div class="media d-flex">
                <div class="align-self-center">
                  <i class="bi bi-house success font-large-2 float-left"></i>
                </div>
                <div class="media-body text-right">
                  <h3>Ville</h3>
                  <span>${ville}</span>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="col-xl-3 col-sm-6 col-12">
        <div class="card">
          <div class="card-content">
            <div class="card-body">
              <div class="media d-flex">
                <div class="align-self-center">
                  <i class="bi bi-envelope danger font-large-2 float-left"></i>
                </div>
                <div class="media-body text-right">
                  <h3>Email</h3>
                  <span>${email}</span>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  
    <div class="row">
      <div class="col-xl-3 col-sm-6 col-12">
        <div class="card">
          <div class="card-content">
            <div class="card-body">
              <div class="media d-flex">
                <div class="media-body text-left">
                  <h3 class="danger">Etat Civil</h3>
                  <span>${etat}</span>
                </div>
                <div class="align-self-center">
                  <i class="bi bi-heart danger font-large-2 float-right"></i>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="col-xl-3 col-sm-6 col-12">
        <div class="card">
          <div class="card-content">
            <div class="card-body">
              <div class="media d-flex">
                <div class="media-body text-left">
                  <h3 class="success">Notes</h3>
                  <span>${notes}</span>
                </div>
                <div class="align-self-center">
                  <i class="bi bi-file-text success font-large-2 float-right"></i>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
  
      <div class="col-xl-3 col-sm-6 col-12">
        <div class="card">
          <div class="card-content">
            <div class="card-body">
              <div class="media d-flex">
                <div class="media-body text-left">
                  <h3 class="warning">Prescription</h3>
                  <span>${presc}</span>
                </div>
                <div class="align-self-center">
                  <i class="bi bi-file-earmark-medical warning font-large-2 float-right"></i>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="col-xl-3 col-sm-6 col-12">
        <div class="card">
          <div class="card-content">
            <div class="card-body">
              <div class="media d-flex">
                <div class="media-body text-left">
                  <h3 class="primary">Age</h3>
                  <span>${age}</span>
                </div>
                <div class="align-self-center">
                  <i class="bi bi-credit-card-2-front primary font-large-2 float-right"></i>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  
    <div class="row">
      <div class="col-xl-3 col-sm-6 col-12">
        <div class="card">
          <div class="card-content">
            <div class="card-body">
              <div class="media d-flex">
                <div class="media-body text-left">
                  <h3 class="primary">Contact</h3>
                  <span>${c}</span>
                </div>
                <div class="align-self-center">
                  <i class="bi bi-telephone primary font-large-2 float-right"></i>
                </div>
              </div>
              
            </div>
          </div>
        </div>
      </div>
      <div class="col-xl-3 col-sm-6 col-12">
        <div class="card">
          <div class="card-content">
            <div class="card-body">
              <div class="media d-flex">
                <div class="media-body text-left">
                  <h3 class="warning">Contact Urgent</h3>
                  <span>${cu}</span>
                </div>
                <div class="align-self-center">
                  <i class="bi bi-phone-vibrate warning font-large-2 float-right"></i>
                </div>
              </div>
              
            </div>
          </div>
        </div>
      </div>
  
      <div class="col-xl-3 col-sm-6 col-12">
        <div class="card">
          <div class="card-content">
            <div class="card-body">
              <div class="media d-flex">
                <div class="media-body text-left">
                  <h3 class="success">Date de Cons</h3>
                  <span>${date}</span>
                </div>
                <div class="align-self-center">
                  <i class="bi bi-calendar-check success font-large-2 float-right"></i>
                </div>
              </div>
              
            </div>
          </div>
        </div>
      </div>
      <div class="col-xl-3 col-sm-6 col-12">
        <div class="card">
          <div class="card-content">
            <div class="card-body">
              <div class="media d-flex">
                <div class="media-body text-left">
                  <h3 class="danger">Mot De Passe</h3>
                  <span>${password}</span>
                </div>
                <div class="align-self-center">
                  <i class="bi bi-file-lock danger font-large-2 float-right"></i>
                </div>
              </div>
              
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  
  <section id="stats-subtitle">
  <div class="row">
    <div class="col-12 mt-3 mb-1">
      <h4 class="text-uppercase">Diagnostic & Suivi</h4>
    </div>
  </div>

  <div class="row">
    <div class="col-xl-6 col-md-12">
      <div class="card overflow-hidden">
        <div class="card-content">
          <div class="card-body cleartfix">
            <div class="media align-items-stretch">
              <div class="align-self-center">
                <i class="bi bi-pencil-square primary font-large-2 mr-2"></i>
              </div>
              <div class="media-body">
                <h4>Diagnostic</h4>
                <span>${diagno}</span>
              </div>
              <div class="align-self-center">
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="col-xl-6 col-md-12">
      <div class="card">
        <div class="card-content">
          <div class="card-body cleartfix">
            <div class="media align-items-stretch">
              <div class="align-self-center">
                <i class="bi bi-chat-left-text warning font-large-2 mr-2"></i>
              </div>
              <div class="media-body">
                <h4>Suivi</h4>
                <span>${suivi}</span>
              </div>
              <div class="align-self-center"> 
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  
</section>
</div>
</div>

<div style="margin-left:700px;">
<a href="login" ><button class="form_butt" style="display:block;">Retour</button></a>
</div>
















<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>


</body>
</html>

<style>


.grey-bg {  
    background-color: #fff;
}

</style>

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