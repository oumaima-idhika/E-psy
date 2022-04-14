<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>

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
        <div class="container" id ="formulaire">
       



<form method="get" action="${pageContext.request.contextPath}/questionnaire">
<div class="card" style="padding: 30px;border-radius: 10px;margin-bottom: 30px;">

<div class="form-group row">
    <label  class="col-sm-4 col-form-label">QCM title : </label>
    <div class="col-sm-8">
      <input type="text" class="form-control"  name="title" required></input>
    </div>
  </div>
  <div class="form-group row">
    <label  class="col-sm-4 col-form-label">durée de suivi : </label>
    <div class="col-sm-8">
      <input type="number" class="form-control"  name="nbsuivi" required></input>
    </div>
  </div>
  </div>
  <div>
<div id ='div1'>

  </div>
  </div>
  
  
<div id="selection" style="display:none;">
<sql:setDataSource var="db" driver="com.mysql.cj.jdbc.Driver"  
     url="jdbc:mysql://localhost:3306/add_epsy?serverTimezone=UTC"  
     user="root"  password="oumaIdhik2001"/>  
  
<sql:query dataSource="${db}" var="rs">  
SELECT * from add_patient;  
</sql:query>  

   

 
<c:forEach var="table" items="${rs.rows}">  
<div class="input-group sm-3" style="margin:10px;">
  <div class="input-group-prepend">
    <div class="input-group-text">
      <input type="checkbox"  name="names" value="${table.id }">
    </div>
  </div>
    <div class="input-group-prepend">
  
<span class="input-group-text " style="width:300px"><c:out value="${table.nom}"/> <c:out value="${table.prenom}"/></span>
<span class="input-group-text" style="width:300px;border-bottom-right-radius: 5px;border-top-right-radius: 5px;"><c:out value="${table.diagnostic}"/></span>
</div> 
</div> 
</c:forEach>  
</div>
<br>
  <button type = "submit" class="form_butt" style="display:none;" id="submit">Submit</button>

</form>
<br>



<div id="form_butts">
<button type="button" class="form_butt" data-toggle="modal" data-target="#exampleModalCenter" style="display:block;" id="add">
  Add qst
</button>
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Options</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      <div class="form-group row">
    <label  class="col-sm-5 col-form-label">Number of options : </label>
    <div class="col-sm-7">
      <input type="number" class="form-control" id="nbOp" />
    </div>     
      </div>
          <button  onclick="handleClick();" class="form_butt" data-dismiss="modal">Save</button>    
      
      </div>
    </div>
  </div>
</div>

<button type = "button" class="form_butt" onclick="showSelect()" style="display:block;" id="finish">Finish</button>
<button type = "submit" class="form_butt" style="display:none;" id="submit">Submit</button>
<a href="espacePsy.jsp" ><button class="form_butt" style="display:block;">Retour</button></a>
</div>
</div>
</body>
</html>
<script type="text/javascript">
var i = 0;
function clear(){
	  document.getElementById("nbOp").value = ''
}
  function handleClick()
  {
	  ++i;
	  var x = document.getElementById("nbOp").value;
	  var n = parseInt(x);
	  var original = document.getElementById('div1');
	  var options =
	    	'<div class="card" style="padding: 30px;border-radius: 10px;margin-bottom: 30px;">' +
	    	 
	    	'<div class="form-group row">'+
	    	    '<label  class="col-sm-3 col-form-label">Question '+ i +': </label>'+
	    	   ' <div class="col-sm-9">'+
	    	      '<textarea type="text" class="form-control"  name="question'+ i +'" required></textarea>'+
	    	   ' </div>'+
	    	  '</div>'+
	    	  '<div class="form-group">';
	    	
	  
	  for(var j=0;j< n;j++){
		  
		  options +='<div class="form-group row">'+
		    '<label  class="col-sm-3 col-form-label">Option No.'+(j+1)+' </label>'+
		    '<div class="col-sm-9">'+
		      '<textarea type="number" class="form-control" rows="1" name="option'+i+j+'" required></textarea>'+
		    '</div></div>'
		
	  };
	 
	 original.parentNode.innerHTML+=options+ '</div> </div><br>';
 	 clear();
	    	
	    	
	    	
  }

</script>
<script type="text/javascript">
function showSelect() {
	   document.getElementById('selection').style.display = "block";
	   document.getElementById('finish').style.display = "none";
	   document.getElementById('submit').style.display = "block";
	   document.getElementById('add').style.display = "none";
	}
</script>
