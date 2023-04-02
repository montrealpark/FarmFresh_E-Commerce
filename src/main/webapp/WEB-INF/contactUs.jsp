<%@ page import="models.entities.Customer" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Contact us</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css">
    <link rel="Shortcut Icon" href="${pageContext.request.contextPath}/img/miniapple.png" type="image/x-icon">

</head>
<body>
<jsp:include page="./layouts/header.jsp"/>
<div id="page-container">
    <div class="background">

        <div class="myForm">
            <div class="regi_form" >
                <div>
                    <h2><b>Send us a message</b></h2>
                    <%if(session.getAttribute("messageSent")!=null){ %>
                    <h1 class="error">Your message is sent!</h1>
                    <%session.removeAttribute("messageSent");}%>
                </div>
                <div>
                    <p>We're listening! If you have any questions, comments or suggestions about our service, please complete the form below. We'll be delighted to answer!</p>
                </div>
                <form action="${pageContext.request.contextPath}/contactUs" method="post">
                    <div class="txtb">
                        <p> <label>Your Name    :</label>
                            <b><input type="text"  name="fName"></b></p>
                        <p><label>Your message    :</label>
                            <b><textarea rows ="15" cols="63" name="message"></textarea></b></p>
                    </div>
                    <input type='submit' class='signup_btn' value='Send' name="Send">

                    <div class="bottom-text"><p>Come back to <a href='${pageContext.request.contextPath}/home'> <b> Home page</b></a>
                    </div>
                </form>

            </div>

        </div>

    </div>
</div>
<jsp:include page="./layouts/footer.jsp"/>
</body>
</html>


