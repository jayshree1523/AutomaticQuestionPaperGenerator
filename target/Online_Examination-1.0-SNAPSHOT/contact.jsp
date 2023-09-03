<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>


        <%
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String msg = request.getParameter("message");
            try {
                String driver = "com.mysql.jdbc.Driver";
                String url = "jdbc:mysql://localhost:3306/OnlineExamination";
                String username = "root";
                String password = "Jayshree@23";
                Class.forName(driver);
                Connection conn = DriverManager.getConnection(url, username, password);
                Statement st = conn.createStatement();

                st.executeUpdate("insert into contactUs(name,email,message)values('" + name + "','" + email + "','" + msg + "')");
//                out.println("Message sent successfully!");
                response.sendRedirect("index.jsp");
            } catch (Exception e) {
                System.out.print(e);
                e.printStackTrace();
            }
        %>

    </body>
</html>
