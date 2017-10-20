<%-- 
    Document   : welcome
    Created on : Oct 13, 2017, 11:38:12 AM
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
            <h1>${msg}</h1> 
            <p>
                <a href="${pageContext.request.contextPath}/register">Please Register</a>
            </p>
            
                <c:if test="${empty sessionScope.user}">


                    <p>
                        <a href="${pageContext.request.contextPath}/login">Please Login</a>
                    </p>
                </c:if>
            
        </div>
    </body>
</html>
