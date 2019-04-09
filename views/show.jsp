<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <title>Primer Servlet</title>
    </head>

    <body>
         <h1>Super app!</h1>
         <c:forEach items="${listParam}" var="entry">
            <p>Key = ${entry.key}, value = <pre>${entry.value}</pre></p>
         </c:forEach>
    </body>
</html>
