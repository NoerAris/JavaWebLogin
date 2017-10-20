<%-- 
    Document   : login
    Created on : Oct 18, 2017, 2:48:11 PM
    Author     : zulfahmi
--%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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

            <b>${errMsg}</b>
            <div class="card">
                <div class="card-header">
                    Login Form
                </div>
                <div class="card-body">
                    <form:form action="${pageContext.request.contextPath}/login/check" modelAttribute="loginBean" method="POST" >
                        <table>
                            <tr><td><form:label path="username">Username</form:label></td>
                                <td><form:input path="username"/></td></tr>
                            <tr><td><form:label path="password">Password</form:label></td>
                                <td><form:password path="password" /></td></tr>
                            <tr><td></td><td><form:button name="submitButton" value="Submit">Submit</form:button></td></tr>            
                            </table>            
                    </form:form>
                </div>
            </div>

        </div>
    </body>
</html>
