<%@ page import="models.entities.Customer" %>
<%@ page import="models.entities.Order" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%
    Customer user = (Customer) session.getAttribute("userLogin");
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Check Out</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css">
    <link rel="Shortcut Icon" href="${pageContext.request.contextPath}/img/miniapple.png" type="image/x-icon">
</head>
<body>
<jsp:include page="./layouts/header.jsp"/>


<%
    if(session.getAttribute("userLogin")==null){
%>
<br><br><br>
<h1 id="plzlogin">Please log in to continue</h1><br>
<center><a style="text-decoration: none" href="${pageContext.request.contextPath}/login" id="gologin"><b>Go to Login</b></a></center><br><br>
<center><a style="text-decoration: none" href="${pageContext.request.contextPath}/cart" id="gocart"><b>Come back to shopping cart</b></a></center><br>
<%} else{%>

        <br>
        <center><h1 id="cyo">Complete your order</h1></center>

            <div class="deli_form">
                <div class="txtb">
                <h2>Billing Address</h2>
                <label for="fname"> Full Name : </label>
                <input type="text" id="fname" name="fullname" placeholder=<%=user.getFirstName()+" "+user.getLastName()%>>
            <br>
                <label for="address"> Address : </label>
                <input type="text" id="address" name="address" placeholder="123 Lasalle Street" required>
            <br>
            <label for="city"> City : </label>
                <input type="text" id="city" name="city" placeholder="Montreal" required>
                <div class="col-50">
                    <label for="postcode" >Post code : </label>
                    <input type="text" id="postcode" name="postcode" placeholder="A1B2CD" required>
                </div>
                </div>


        <div class="payment-method">
            <h2>Payment method</h2>
            <label for="card" class="method card">
                    <img src="${pageContext.request.contextPath}/img/pay.jpg"/>
                    <!--<img src="${pageContext.request.contextPath}/img/mastercard_logo.png"/>-->

                <div class="radio-input">
                    <input id="card" type="radio" name="payment" checked>
                    Pay with credit card
                </div>
            </label>

            <label for="paypal" class="method paypal">
                <img style="width: 25%" src="${pageContext.request.contextPath}/img/Paypallogopng.png"/>
                <div class="radio-input">
                    <input id="paypal" type="radio" name="payment">
                    Pay with PayPal
                </div>
            </label>
        </div>
            </div>



    <div class="panel-footer">
        <a style="text-decoration: none" href="${pageContext.request.contextPath}/finish" id="gofin"><b>Pay Now</b></a><br><br><br>
        <a style="text-decoration: none" href="${pageContext.request.contextPath}/cart" id="gocart"><b>Come back to shopping cart</b></a>

    </div>

<% }%>
<br><br>
<jsp:include page="./layouts/footer.jsp"/>
</body>

</html>
