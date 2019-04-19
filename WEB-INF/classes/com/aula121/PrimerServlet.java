package com.aula121;
 
import java.io.IOException;
import java.util.Enumeration;
import java.util.HashMap;
 
import javax.servlet.http.HttpServlet;
import javax.servlet.ServletException;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
public class PrimerServlet extends HttpServlet {
 
    public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
        handleRequest(req, res);
    }
 
    public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
        handleRequest(req, res);
    }

    public void handleRequest(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
        String pattern = req.getServletPath();
        HashMap<String,String> hash1 = new HashMap<String,String>(); 
 
        Enumeration<String> parameterNames = req.getParameterNames();
        int count = 0;
        while (parameterNames.hasMoreElements()) {
 
            String paramName = parameterNames.nextElement();
            String[] paramValues = req.getParameterValues(paramName);
            String st = "";
            for (int i = 0; i < paramValues.length; i++) {
                String paramValue = paramValues[i];
                st += "\t" + paramValue;
                count += 1;
            }
            hash1.put(paramName,st);
        }
        if(pattern.equals("/greeting")) {
           req.setAttribute("pattern","greeting");
           String who = req.getParameter("name");
           if(count == 1 && (who != null)) {
              req.setAttribute("show","Hello " + who);
           }
           else {
              req.setAttribute("show","Parameter name required");
           }
        }
        if(pattern.equals("/allparameters")) {
           req.setAttribute("pattern","all");
           req.setAttribute("listParam", hash1);
        }
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("views/show.jsp");
        requestDispatcher.forward(req, res);
    }
}
