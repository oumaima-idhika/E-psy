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
<div style="margin-top:120px">
<div class="msg">
${msg}
</div>


<div class="container contact-form">

            <div class="contact-image">
                <img src="images/rocket2.png" alt="rocket_contact"/>
            </div>
            <form action="contact" method="POST">
                <h4>Contacter le Docteur</h4>
               <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <input required="true" type="text" name="user" class="form-control" placeholder="Username du Docteur *" style="width: 80%;"/>
                        </div>
                        
                        <br>
                        <div class="form-group">
                            <input type="submit" name="btnSubmit" class="btnContact" value="Envoyer" />
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <textarea required="true" name="message" class="form-control" placeholder="Votre Message *" style="width: 110%; height: 170px; resize: none;"></textarea>
                        </div>
                    </div>
                </div>
            </form>
</div>
<div style="margin-left:700px;margin-top:-20px">
<a href="login" ><button class="form_butt" style="display:block;">Retour</button></a>
</div>
</div>














<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>

</html>


<style>

.contact-form{
    background: #fff;
    margin-top: 3%;
    margin-bottom: 5%;
    width: 70%;
    box-shadow: 5px 5px 10px 5px #e4e9ea;
    border-radius:5px;
}
.contact-form .form-control{
    border-radius:5px;
}
.contact-image{
    text-align: center;
}
.contact-image img{
    border-radius: 6rem;
    border : solid 1px #00c4cc;
    width: 11%;
    margin-top: -3%;
    transform: rotate(29deg);
}
.contact-form form{
    padding: 14%;
}
.contact-form form .row{
    margin-bottom: -7%;
}
.contact-form h4{
    margin-bottom: 8%;
    margin-top: -10%;
    text-align: center;
    color: #00c4cc;
}
.contact-form .btnContact {
    width: 50%;
    border: none;
    border-radius: 5px;
    padding: 1.5%;
    background: #00c4cc;
    font-weight: 600;
    color: white;
    cursor: pointer;
}


.contact-form .btnContact:hover
{
	
    background-color: grey;  
}


.msg
{
	text-align: center;
	margin: 1px 200px;
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