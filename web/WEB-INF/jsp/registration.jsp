<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Form Registration</title>
        <link href="<c:url value="/resources/css/bootstrap.css" />" rel="stylesheet">
    </head>
    <body>
        <jsp:include page="head.jsp"/> 
        <div class="container">
            <div class="card">
                <div class="card-header">
                    Registration Form
                </div>
                <div class="card-body">
                    <form:form action="register/save" modelAttribute="registerBean" method="POST" >
                        <table>
                            <tr><td><form:label path="firstname">First Name</form:label></td>
                                <td><form:input path="firstname"/></td></tr>
                            <tr><td><form:label path="lastname">Last Name</form:label></td>
                                <td><form:input path="lastname"/></td></tr>
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
