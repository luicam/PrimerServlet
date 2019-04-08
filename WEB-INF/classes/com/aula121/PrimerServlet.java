package com.aula121;
 
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;
 
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
public class PrimerServlet extends HttpServlet {
 
    public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException {
        handleRequest(req, res);
    }
 
    public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException {
        handleRequest(req, res);
    }
 
    public void handleRequest(HttpServletRequest req, HttpServletResponse res) throws IOException {
 
        PrintWriter out = res.getWriter();
        res.setContentType("text/plain");
 
        Enumeration<String> parameterNames = req.getParameterNames();
 
        while (parameterNames.hasMoreElements()) {
 
            String paramName = parameterNames.nextElement();
            out.write(paramName);
            out.write("\n");
 
            String[] paramValues = req.getParameterValues(paramName);
            for (int i = 0; i < paramValues.length; i++) {
                String paramValue = paramValues[i];
                out.write("\t" + paramValue);
                out.write("\n");
            }
        }
        out.close();
    }
}
