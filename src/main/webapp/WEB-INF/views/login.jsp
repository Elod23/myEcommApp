<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: varga
  Date: 11/13/2018
  Time: 1:07 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/template/header.jsp"%>
<html>
<head>
    <title>Login Page</title>
</head>
<body>
    <div class="container">
        <div class="form-group form">
            <form:form action="login" method="post">
                <div class="form-group">
                    <label for="userName">Username:</label>
                    <form:input path="userName" id="userName" placeholder="User name here" cssClass="form-control" />
                </div>
                <div class="form-group">
                    <label for="password">Username:</label>
                    <form:input path="password" id="password" placeholder="password here" cssClass="form-control" />
                </div>
                <div class="form-group">
                    <label for="email">Username:</label>
                    <form:input path="email" id="email" placeholder="email address here" cssClass="form-control" />
                </div>
                <div class="col-lg-8 col-lg-offset-2 text-center">
                    <a href="<c:url value="/admin" /> " ><input type="submit" value="submit" class="btn btn-success" /> </a>
                </div>
            </form:form>
        </div>
    </div>

</body>
</html>
<%@ include file="/WEB-INF/views/template/footer.jsp"%>
