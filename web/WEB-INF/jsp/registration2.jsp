<%-- 
    Document   : registration
    Created on : 16-Oct-2017, 09:22:46
    Author     : Aris
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Form Registrasi</title>
    </head>
    <body>
         <h1>Form Registrasi</h1>
        <form:form action="register/save" modelAttribute="registerBean" method="POST">
            <table>
                <tr><td><form:label path="firstname">First Name</form:label></td>
                    <td><form:input path="firstname"/></td></tr>
                <tr><td><form:label path="lastname">Last Name</form:label></td>
                    <td><form:input path="lastname"/></td></tr>
                <tr><td><form:label path="username">User Name</form:label></td>
                    <td><form:input path="username"/></td></tr>
                <tr><td><form:label path="password">Password</form:label></td>
                    <td><form:password path="password"/></td></tr>
             <p>
             <tr><td><form:button name="submitButton" value="Submit">Submit</form:button></td></tr>
             </p>
            </table>
            
        </form:form>
            
    </body>
</html>
