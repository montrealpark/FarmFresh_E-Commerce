
<%@ page contentType="text/html;charset=UTF-8" %>

<html>
<head>
    <title>Login</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css">
    <link rel="Shortcut Icon" href="${pageContext.request.contextPath}/img/miniapple.png" type="image/x-icon">
</head>
<body>
<jsp:include page="./layouts/header.jsp"/>
<div id="page-container">
    <div class="Login_bg">
        <div class="login-form">
            <div class="log_form" >
                <div>
                    <h2><b>Login</b></h2>
                    <%if(session.getAttribute("loginError")!=null){ %>
                    <h3 class="error">Wrong email or password!</h3>
                    <%session.removeAttribute("loginError");}%>
                </div>
                <form action="${pageContext.request.contextPath}/login" method="post">
                    <div class="txtb">
                        <label>Email : </label><span class="error"></span>
                        <input type="email" placeholder='Please enter your e-mail. ' name="email" required>
                        <label>Password : </label><span class="error"></span>
                        <input type="password" placeholder='Please enter your password.' name="password" required>
                    </div>
                    <input type='submit' class='login_btn' value='LOG IN'>
                    <div class="bottomtext">
                        <p>Don't have an account? <a href='${pageContext.request.contextPath}/register'><b> Register here!</b></a></p>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<jsp:include page="./layouts/footer.jsp"/>
</body>
</html>
