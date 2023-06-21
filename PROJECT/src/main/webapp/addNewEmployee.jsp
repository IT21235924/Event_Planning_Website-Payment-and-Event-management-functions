<%@include file = "adminHeader.jsp" %>
<%@include file = "footer.jsp" %>
<html>
<head>
<link rel="stylesheet" href="css/addNewProduct-style.css">
<title>Add New Product</title>
</head>
<body>



<form action ="addEmployee" method = "post">

<div class="left-div">
 <h3>Enter Employee ID</h3>
 <center><input class = "T" type="text" name="id" required></center>
 </div>
 
<hr>

<div class="left-div">
 <h3>Enter Name</h3>
 <center><input class = "T" type="text" name="name" required></center>
 
<hr>
</div>

<div class="right-div">
<h3>Enter Email</h3>
<center><input class = "T" type="email" name="email" required></center>
 
<hr>
</div>

<div class="left-div">
<h3>Enter Address</h3>
<center><input class = "T" type="text" name="address" required></center>

<hr>

<h3>Enter Mobile Number</h3>
<center><input class = "T" type="text" name="phone" required></center>

<hr>
<h3>Enter Department</h3>
<center><input class = "T" type="text" name="department" required></center>
 <br>
 <br>

</div>

<button class = "button">Add </button>
   


 </form>
</body>
<br><br><br>
</body>
</html>