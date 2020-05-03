<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.Doctor"  %>  

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Doctor Service</title>

<link rel="stylesheet" href="Views/bootstrap.min.css">
<script src="Components/jquery-3.5.0.min.js"></script>
<script src="Components/Doctor.js"></script>

</head>
<body>



	<div class="container">
		<div class="row">
		 <div class="col-6">     
			<form id="formDoctor" name="formDoctor" method="post" action="doctor.jsp">
			<h1>Doctor Service</h1><br>
			
				    NIC: 
				    <input id="docNic" name="docNic" type="text" class="form-control form-control-sm" placeholder="123456789V"> 
					<br> 
					First Name: 
				    <input id="fname" name="fname" type="text" class="form-control form-control-sm"> 
					<br> 
					Last Name: 
				    <input id="lname" name="lname" type="text" class="form-control form-control-sm"> 
					<br> 
					Email: 
				    <input id="docEmail" name="docEmail" type="email" class="form-control form-control-sm" placeholder="example@gmail.com"> 
				    <br>
				    
				    Gender:<br>
				    	&nbsp;&nbsp;Male  
				    	<input type="radio" id="rdoGenderMale" name="rdoGender" value="Male">  
				    	&nbsp;&nbsp;Female  
				    	<input type="radio" id="rdoGenderFemale" name="rdoGender" value="Female">   
				  
					<br> <br>
					Doctor Licen Number: 
					<input id="licen" name="licen" type="text" class="form-control form-control-sm"> 
					<br> 
					
					Specialization:    
					<select id="special" name="special" class="form-control form-control-sm">     
						<option value="0">--Select Specialization--</option>     
						<option value="Allergy And Immunology">Allergy And Immunology</option>     
						<option value="Cardiac Surgeon">Cardiac Surgeon</option>     
						<option value="Cardiologist">Cardiologist</option>     
						<option value="Dental Surgeon">Dental Surgeon</option>
						<option value="Dietician">Dietician</option>
						<option value="Endocnnologist">Endocnnologist</option>
						<option value="General Surgeon">General Surgeon</option>
						<option value="Urologist">Urologist</option>
						<option value="Vascular Surgeon">Vascular Surgeon</option>    
						
					</select>   
					
 
 
					<br>				  
					Phone Number: 
					<input id="docPhone" name="docPhone" type="text" class="form-control form-control-sm" placeholder="000 000 0000">
				    <br>
				    Doctor Charge: 
				    <input id="docCharge" name="docCharge" type="text" class="form-control form-control-sm"> 
				    <br> 
				    
				    <input id="btnSave" name="btnSave" type="button" value="Save" class="btn btn-primary"> 
				    <input type="hidden" id="hidDocIDSave" name="hidDocIDSave" value="">
			</form><br>
		
			<div id="alertSuccess" class="alert alert-success"></div>

			<div id="alertError" class="alert alert-danger"></div>
			
			<br>
   			<div id="divDoctorGrid"> 
				<%
					Doctor docObj = new Doctor();
					out.print(docObj.readDoctors());
				%>
			</div>
		</div>
	</div>
</div>
</body>
</html>