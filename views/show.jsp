<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.HashMap" %>
<html>
    <head>
        <title>Add new user</title>
    </head>

    <body>
        <div>
            <h1>Super app!</h1>
        </div>

        <div>
            <%
                HashMap<String,String> h = (HashMap<String,String>) request.getAttribute("listParam");
                for(String st : h.keySet()) {
                    out.println("<p>" + st  + "</p><pre>" + h.get(st) + "</pre>");
                }
            %>
        </div>
    </body>
</html>
