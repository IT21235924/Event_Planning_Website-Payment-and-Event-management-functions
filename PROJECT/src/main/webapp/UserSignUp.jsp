<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@include file = "normalHeader.jsp" %>
        


<html>
  <head>
    <meta charset="utf-8">
    <title>Form</title>
    <link href="css/signup.css" type="text/css" rel="stylesheet">
   
  </head>
  <body>
    


  	<div class="container">
  	<center><h1 class = "h1" >SignUp</h1></center>
        <br>
      <form  action ="Signup" method="post" autocomplete="on">
      
        <!-- name-->
    		<div class="box">
          <label for="firstName" class="fl fontLabel">Name: </label>
    		
    			<div class="fr">
    					<input type="text" name="name" placeholder="Name"
              class="textBox"  required>
    			</div>
    			<div class="clr"></div>
    		</div>
    		<!-- name-->
    		
    		<!---Email ID---->
    		<div class="box">
          <label for="email" class="fl fontLabel"> Email ID: </label>
    			
    			<div class="fr">
    					<input type="email" required name="email" placeholder="Email Id" class="textBox">
    			</div>
    			<div class="clr"></div>
    		</div>
    		<!--Email ID----->
    		
    		<!-- Address-->
    		<div class="box">
          <label for="firstName" class="fl fontLabel"> Address : </label>
    		
    			<div class="fr">
    					<input type="text" name="address" placeholder="Address"
              class="textBox" required>
    			</div>
    			<div class="clr"></div>
    		</div>
    		<!-- address-->
    		

    		<!---Phone No.------>
    		<div class="box">
          <label for="phone" class="fl fontLabel"> Phone No.: </label>
    			
    			<div class="fr">
    					<input type="text" required name="mobileNumber" maxlength="10" placeholder="Phone No." class="textBox">
    			</div>
    			<div class="clr"></div>
    		</div>
    		<!---Phone No.---->


    		<!---Password------>
    		<div class="box">
          <label for="password" class="fl fontLabel"> Password </label>
    			
    			<div class="fr">
    					<input type="Password" id="pass" name="password" placeholder="Password" class="textBox" required>
    			</div>
    			<div class="clr"></div>
    		</div>
    		<!---Password---->
           
           
    		<!--Terms and Conditions------>
    		<div class="box terms">
    				<input type="checkbox" name="Terms" required> &nbsp; I accept the terms and conditions
    		</div>
    		<!--Terms and Conditions------>
				



    		<!---Submit Button------>
    		<div class="box" style="background: #2d3e3f">
    				<input type="Submit" name="Submit" class="submit" value="SUBMIT">
    		</div>
    		<!---Submit Button----->
      </form>
  </div>
	
 
  <!--Body of Form ends--->
  
  </body>
</html>
    