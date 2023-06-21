<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>EventGeeks - payment</title>
	<!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

  <!--custom css-->
    <link rel="stylesheet" href="css/payment.css">

    <!--font-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap" rel="stylesheet">

    <!--js-->
    <script defer src="js/payment.js"></script>
</head>
<body>
	<%@include file = "normalHeader.jsp" %>

	<!--Payment form start-->
	    <div class="container">
	
	    <form action="insertPaymentServlet" method = "POST">
	
	        <div class="row">
	
	            <div class="col">
	
	                <h3 class="title">billing address</h3>
	
	                <div class="inputBox">
	                    <span>full name :</span>
	                    <input type="text" placeholder="john deo">
	                </div>
	                <div class="inputBox">
	                    <span>email :</span>
	                    <input type="email" placeholder="example@example.com" name = "email">
	                </div>
	                <div class="inputBox">
	                    <span>address :</span>
	                    <input type="text" placeholder="room - street - locality">
	                </div>
	                <div class="inputBox">
	                    <span>city :</span>
	                    <input type="text" placeholder="mumbai">
	                </div>
	
	                <div class="flex">
	                    <div class="inputBox">
	                        <span>state :</span>
	                        <input type="text" placeholder="india">
	                    </div>
	                    <div class="inputBox">
	                        <span>zip code :</span>
	                        <input type="text" placeholder="123 456" name = "zip">
	                    </div>
	                </div>
	
	            </div>
	
	            <div class="col">
	
	                <h3 class="title">payment</h3>
	
	                <div class="inputBox">
	                    <span>cards accepted :</span>
	                    <img src="images/card_img.png" alt="">
	                </div>
	                <div class="inputBox">
	                    <span>name on card :</span>
	                    <input type="text" placeholder="mr. john deo" name = "name">
	                </div>
	                <div class="inputBox">
	                    <span>credit card number :</span>
	                    <input type="number" placeholder="1111-2222-3333-4444" name = "cardNum">
	                </div>
	                <div class="inputBox">
	                    <span>exp month :</span>
	                    <input type="text" placeholder="january" name = "exMonth">
	                </div>
	
	                <div class="flex">
	                    <div class="inputBox">
	                        <span>exp year :</span>
	                        <input type="number" placeholder="2022" name = "exYear">
	                    </div>
	                    <div class="inputBox">
	                        <span>CVV :</span>
	                        <input type="text" placeholder="1234">
	                    </div>
	                </div>
	
	            </div>
	    
	        </div>
	
	        <input type="submit" value="proceed to checkout" class="submit-btn">
	
	    </form>
	
	</div>    
	    <!--Payment form end-->
	
	<%@include file = "./footer.jsp" %>
</body>
</html>