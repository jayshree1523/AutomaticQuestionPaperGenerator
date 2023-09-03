
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
//    int examId = Integer.parseInt(request.getParameter("ExamID"));
    String ClassName = request.getParameter("ClassName");
    out.println(ClassName);
    String SubjectName = request.getParameter("SubjectName");
    int longQues = Integer.parseInt(request.getParameter("longQues"));

    out.println(longQues);
    String l = "Long Answer";
    String l2 = "Short Answer";
    String l3 = "One Word";
%>
<%
    String driver = "com.mysql.jdbc.Driver";
    String url = "jdbc:mysql://localhost:3306/OnlineExamination";
    String username = "root";
    String password = "Jayshree@23";

    try {
        Class.forName(driver);
//        Connection con = DriverManager.
//            getConnection(url, username, password);
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    }

    
    ResultSet rs1 = null;

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <table border="1" p=10>
            <tr style="background-color: powderblue;color:black lavenderblush;font-weight: bold; text-align:center">
                <td>Class Name</td>
                <td>Subject Name</td>
                <td>Question</td>
                <td>QuestionType</td>
                <td>Marks</td>
            </tr>


            <%           
                Connection con = DriverManager.
            getConnection(url, username, password);
                String q1 = "select * from AddQuestion where ClassName=? and SubjectName=? and QuestionType=? order by rand() limit 2";
                PreparedStatement pstmt = con.prepareStatement(q1);
                pstmt.setString(1, ClassName);
                pstmt.setString(2, SubjectName);
                pstmt.setString(3, l);
//                    pstmt.setInt(4, longQues);
                ResultSet rs2 = pstmt.executeQuery();

                while (rs2.next()) {
            %>
            <tr>
                <td> <%= rs2.getString(2)%> </td>
                <td> <%= rs2.getString(3)%> </td>
                <td> <%= rs2.getString(4)%> </td>
                <td> <%= rs2.getString(5)%> </td>
                <td> <%= rs2.getInt(6)%> </td>
            </tr>
            <%
                }

            %>  

            <h2>Hello1</h2>
        </table>


            <table border="1" p=10>
            <tr style="background-color: powderblue;color:black lavenderblush;font-weight: bold; text-align:center">
                <td>Class Name</td>
                <td>Subject Name</td>
                <td>Question</td>
                <td>QuestionType</td>
                <td>Marks</td>
            </tr>


            <%           
//                Connection con1 = DriverManager.
//            getConnection(url, username, password);
                String q2 = "select * from AddQuestion where ClassName=? and SubjectName=? and QuestionType=? order by rand() limit 2";
                PreparedStatement pstmt1 = con.prepareStatement(q2);
                pstmt.setString(1, ClassName);
                pstmt.setString(2, SubjectName);
                pstmt.setString(3, l2);
//                    pstmt.setInt(4, longQues);
                ResultSet rs3 = pstmt.executeQuery();

                while (rs3.next()) {
            %>
            <tr>
                <td> <%= rs3.getString(2)%> </td>
                <td> <%= rs3.getString(3)%> </td>
                <td> <%= rs3.getString(4)%> </td>
                <td> <%= rs3.getString(5)%> </td>
                <td> <%= rs3.getInt(6)%> </td>
            </tr>
            <%
                }

            %>  






            <h2>Hello1</h2>
        </table>

            
            
    </body>
</html>
