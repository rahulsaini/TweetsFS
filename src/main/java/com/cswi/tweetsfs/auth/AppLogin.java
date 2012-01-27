package com.cswi.tweetsfs.auth;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * User: rsain2
 * Date: 12/12/11
 */
public class AppLogin extends HttpServlet {

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();
        String userName = req.getParameter("userName");
        String password = req.getParameter("password");
        out.write("<html><head></head><body><h1>Result</h1></body></html>");

    }
}
