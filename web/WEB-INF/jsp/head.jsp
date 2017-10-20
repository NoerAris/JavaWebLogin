<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="container">
    <div class="jumbotron">
        <h1>Spring Online Shop</h1> 
        <p>Super Shop You Cannot Deny</p> 
        <div><a href="${pageContext.request.contextPath}">Home</a></div>
        <c:if test="${not empty sessionScope.user}">
            <div><a href="${pageContext.request.contextPath}/logout">Logout</a></div>
        </c:if>

    </div>

</div>