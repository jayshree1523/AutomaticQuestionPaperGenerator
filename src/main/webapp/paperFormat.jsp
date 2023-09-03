<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>

<%
//int ExamID = Integer.parseInt(request.getParameter("ExamID"));
    String clgName = request.getParameter("clgName");
    String ClassName = request.getParameter("ClassName");
    String SubjectName = request.getParameter("SubjectName");
    String driver = "com.mysql.cj.jdbc.Driver";
    String jdbcURL = "jdbc:mysql://localhost:3306/OnlineExamination";
    String dbUser = "root";
    String dbPassword = "Jayshree@23";
    try {
        Class.forName(driver);
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    }

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Paper Format</title>
        
    </head>
    <body>
        <%@include file="profile.jsp" %>
    <center>
        <table border="1" p=10>
            <!--<tr style="background-color: powderblue;color:black lavenderblush;font-weight: bold; text-align:center">-->
            <!--                <td>Class Name</td>
                            <td>Subject Name</td>
                            <td>Question</td>
                            <td>QuestionType</td>
                            <td>Marks</td>-->
            <!--</tr>-->
            <%                Connection con = null;
                try {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    String url = "jdbc:mysql://localhost:3306/OnlineExamination";
                    String username = "root";
                    String password = "Jayshree@23";
                    // create a connection
                    con = DriverManager.
                            getConnection(url, username, password);

            %>
            <%//                String query = "select * from AddQuestion where ClassName=? and SubjectName=? limit 5";
                String query1 = "select * from paper where InstituteName=?";
                PreparedStatement pstmt1 = con.prepareStatement(query1);
                pstmt1.setString(1, clgName);
                ResultSet s2 = pstmt1.executeQuery();
                if (s2.next()) {
            %>
            
                <h3> <%= s2.getString("InstituteName")%> </h3>
                <h3> <%= s2.getString("ExamType")%> </h3>
                <hr>
                <h3> <%= s2.getString("SubjectName")%> </h3>
                <!--<h3> <%= s2.getString("TotalTime")%> </h3>-->
                <header> <b><%=s2.getString("LongInstruction") %> </b>
                </header>
            <%
                }
                String query = "select distinct * from AddQuestion where ClassName=? and SubjectName=? order by rand() limit 10";
                //                Statement stmt = con.createStatement();

                PreparedStatement pstmt = con.prepareStatement(query);
                pstmt.setString(1, ClassName);
                pstmt.setString(2, SubjectName);
                ResultSet set = pstmt.executeQuery();

                while (set.next()) {
            %>
            <tr style="background-color: activeborder;color: azure;font-weight: bold; text-align:center">
<!--                <td> <%= set.getString("ClassName")%> </td>
                <td> <%= set.getString("SubjectName")%> </td>-->
                <td> <%= set.getString("Question")%> </td>
                <!--<td> <%= set.getString("QuestionType")%> </td>-->
                <td> <%= set.getInt("Marks")%> </td>
            </tr>
            <%
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            %>
        </table>
    </center>

</body>
</html>
