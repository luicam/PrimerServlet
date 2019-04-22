<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <title>Primer Servlet</title>
        <head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
.dropbtn {
  background-color: #3498DB;
  color: white;
  padding: 16px;
  font-size: 16px;
  border: none;
}

.dropup {
  position: relative;
  display: inline-block;
}

.dropup-content {
  display: none;
  position: absolute;
  background-color: #f1f1f1;
  min-width: 160px;
  bottom: 50px;
  z-index: 1;
}

.dropup-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}

.dropup-content a:hover {background-color: #ccc}

.dropup:hover .dropup-content {
  display: block;
}

.dropup:hover .dropbtn {
  background-color: #2980B9;
}
</style>
</head>
<body>

         <h1>Super app!</h1>
         <br><br>
         <c:if test="${pattern eq 'news'}">
           <h3>La Vanguardia - Política -</h3>
           <c:forEach items="${lista}" var="obj">
             <p>
             <div class="dropup">
              <button class="dropbtn">${obj.title}</button>
              <div class="dropup-content">
               <a href="#">${obj.descri}<bLink 1></a>
              </div>
             </div>
             </p>
           </c:forEach>
         </c:if>
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
