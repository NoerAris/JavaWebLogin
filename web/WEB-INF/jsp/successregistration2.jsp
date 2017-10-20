<%-- 
    Document   : succesregistration
    Created on : 16-Oct-2017, 10:02:18
    Author     : Aris
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Selamat, Anda berhasil registrasi</h1>
       Last Name  :${data.firstname}<br/>
       First Name :${data.lastname}<br/>
       User Name  :${data.username}<br/>
       Password   :${data.password}<br/>
       
    </body>
</html>
