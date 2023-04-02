<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>

<html>
<head>
    <title>Register</title>
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
                    <h2><b>Sign Up</b></h2>
                    <%if(session.getAttribute("regisErrorEmailExist")!=null){ %>
                    <h3 class="error">This email already registered!</h3>
                    <%session.removeAttribute("regisErrorEmailExist");}%>
                </div>
                <form action="${pageContext.request.contextPath}/register" method="post">
                    <div class="txtb">
                        <label>First name* : </label>
                        <input type="text" placeholder='Please enter your first name.' name="fName" required pattern="[a-zA-Z]+$" title="Contain only alphabet characters">

                        <label>Last name* : </label>
                        <input type="text" placeholder='Please enter your last name.' name="lName" required pattern="[a-zA-Z]+$" title="Contain only alphabet characters">

<%--                        <label>Enter your date of birth* : </label>--%>
<%--                        <input type="text" placeholder="yyyy-mm-dd" name="dob" pattern="(?:19|20)(?:[0-9]{2}-(?:(?:0[1-9]|1[0-2])-(?:0[1-9]|1[0-9]|2[0-8])|(?:(?!02)(?:0[1-9]|1[0-2])-(?:29|30))|(?:(?:0[13578]|1[02])-31))|(?:[13579][26]|[02468][048])-02-29)" required title="Format yyyy-mm-dd">--%>

                        <label>Enter your phone number* : </label>
                        <input type="tel" placeholder='Please enter your phone number. ' name="phone" required>

                        <label>Enter your email* : </label>
                        <input type="email" placeholder='Please enter your e-mail. ' name="email" required>

                        <label>Enter your password* : </label>
                        <input type="password" placeholder='Enter your password. ' name="password" minlength="6" required pattern="^.{6,}$" title="Must contain at least 6 or more characters">
                    </div>
                    <input type='submit' class='signup_btn' value='Register' name="register">
                    <div class="bottom-text"><p>Come back to <a href='${pageContext.request.contextPath}/login'> <b> Log-in</b></a>
                    </div>
                </form>

            </div>

        </div>

    </div>
</div>
<jsp:include page="./layouts/footer.jsp"/>
</body>
</html>
