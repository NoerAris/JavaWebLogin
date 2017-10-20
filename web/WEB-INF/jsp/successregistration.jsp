<%-- 
    Document   : successregistration
    Created on : Oct 16, 2017, 10:01:45 AM
    Author     : zulfahmi
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="<c:url value="/resources/css/bootstrap.css" />" rel="stylesheet">
    </head>
    <body>
        <jsp:include page="head.jsp"/> 
        <div class="container">
            <h1>Registrasi berhasil</h1>
            ${data.firstname} ${data.lastname}
            <p>
                <a href="${pageContext.request.contextPath}/login">Please Login</a>
            </p>
        </div>
    </body>
</html>
