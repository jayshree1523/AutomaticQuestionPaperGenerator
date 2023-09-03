
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
//    String quesType = request.getParameter("");
//            String Iname = request.getParameter("college");
//            String exam = request.getParameter("exam");
//            String className = request.getParameter("className");
//            String subjectName = request.getParameter("subjectName");
//            String longInstructions = request.getParameter("longInstructions");
//            String shortInstructions = request.getParameter("shortInstructions");
//            String oneInstructions = request.getParameter("oneInstructions");
//            int longQues = Integer.parseInt(request.getParameter("longQues"));
//            int shortQues = Integer.parseInt(request.getParameter("shortQues"));
//            int oneWordQues = Integer.parseInt(request.getParameter("oneWordQues"));
//            String totalTime = request.getParameter("totalTime");
//            int totalMarks = Integer.parseInt(request.getParameter("totalMarks"));
//            int totalQues = Integer.parseInt(request.getParameter("totalQues"));
%>

<%
    String driver = "com.mysql.jdbc.Driver";
    String jdbcURL = "jdbc:mysql://localhost:3306/OnlineExamination";
    String dbUser = "root";
    String dbPassword = "Jayshree@23";
    try {
        Class.forName(driver);
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    }
    Connection con = null;
//    Statement st1 = null;
    ResultSet rs1 = null;
//    PreparedStatement st2 = null;
//    ResultSet rs2 = null;
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
<!--        <table border="1" p=10>
            <tr style="background-color: powderblue;color:black lavenderblush;font-weight: bold; text-align:center">
                <td>Class Name</td>
                <td>Subject Name</td>
                <td>Question</td>
                <td>QuestionType</td>
                <td>Marks</td>
            </tr>


            <%
//                try {
//                    Class.forName("com.mysql.cj.jdbc.Driver");
//                    String url = "jdbc:mysql://localhost:3306/OnlineExamination";
//                    String username = "root";
//                    String password = "Jayshree@23";
//                    // create a connection
//                    con = DriverManager.
//                            getConnection(url, username, password);
//                    st1 = con.createStatement();
//    
//                    String query = "select * from paper where ExamID = " + examId;
//                    rs1 = st1.executeQuery(query);
//                    String Iname = rs1.getString(2);
//                    String exam = rs1.getString(3);
//                    String className = rs1.getString(4);
//                    String subjectName = rs1.getString(5);
//                    String longInstructions = rs1.getString(6);
//                    String shortInstructions = rs1.getString(7);
//                    String oneInstructions = rs1.getString(8);
//                    int longQues = rs1.getInt(9);
//                    int shortQues = rs1.getInt(10);
//                    int oneWordQues = rs1.getInt(11);
//                    String totalTime = rs1.getString(12);
//                    int totalMarks = rs1.getInt(13);
//                    int totalQues = rs1.getInt(14);

//                    String q1 = "select * from AddQuestion where ClassName=? and SubjectName=? and QuestionType=? order by rand() limit 2";
//                    PreparedStatement pstmt = con.prepareStatement(q1);
//                    pstmt.setString(1, ClassName);
//                    pstmt.setString(2, SubjectName);
//                    pstmt.setString(3, l);
//                    pstmt.setInt(4, longQues);
//                    ResultSet rs2 = pstmt.executeQuery();

//                    String q1 = "select * from AddQuestion";
//                    PreparedStatement st2 = con.prepareStatement(q1);
//                    
//                    rs2 = st2.executeQuery();
//                    while (rs2.next()) {
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
//                } catch (Exception e) {
//                }
            %>  

            <%
                String q2 = "select * from AddQuestion where ClassName=? and SubjectName=? and QuestionType=? order by rand() limit 2";
                PreparedStatement pstmt = con.prepareStatement(q2);
//                pstmt.setString(1, ClassName);
//                pstmt.setString(2, SubjectName);
//                pstmt.setString(3, l2);
//                    pstmt.setInt(4, longQues);
//                ResultSet rs3 = pstmt.executeQuery();
//
//                while (rs3.next()) {
            %>
            <tr>
-->                <td> <%= rs3.getString(2)%> </td>
                <td> <%= rs3.getString(3)%> </td>
                <td> <%= rs3.getString(4)%> </td>
                <td> <%= rs3.getString(5)%> </td>
                <td> <%= rs3.getInt(6)%> </td><!--
            </tr>
                   



            <h2>Hello1</h2>
        </table>-->
            
            <table border="1" p=10>
            <tr style="background-color: powderblue;color:black lavenderblush;font-weight: bold; text-align:center">
                <td>Class Name</td>
                <td>Subject Name</td>
                <td>Question</td>
                <td>QuestionType</td>
                <td>Marks</td>
            </tr>


            <%
                
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
            
    </body>
</html>
