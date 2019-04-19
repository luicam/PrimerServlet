<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <title>Primer Servlet</title>
    </head>

    <body>
         <h1>Super app!</h1>
         <c:if test="${pattern eq 'greeting'}">
              <h3>${show}</h3>
         </c:if>
         <c:if test="${pattern eq 'all'}">
           <c:forEach items="${listParam}" var="entry">
              <p>Key = ${entry.key}, value = <pre>${entry.value}</pre></p>
           </c:forEach>
         </c:if>
    </body>
</html>
