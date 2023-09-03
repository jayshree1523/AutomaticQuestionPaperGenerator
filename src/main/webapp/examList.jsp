
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!--    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous"><nav class="navbar navbar-expand-lg navbar-dark primary-background">

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="style.css">-->
        <title>View ExamList</title>
        <style>
            body{
                background-image: url('img/edu-3.jpg');
                background-size: 100%,100%;
                height: 720px;
                background-position: center;
                background-repeat: no-repeat;
            }
        </style>
    </head>
    <body>

    <center>
        <table border="1" p=10>
            <tr style="background-color: powderblue;color:black lavenderblush;font-weight: bold; text-align:center">
                <td>Institute Name</td>
                <td>Class Name</td>
                <td>Subject Name</td>
                <td>Action</td>

            </tr>
            <%
                Connection con = null;
                Statement st = null;
                ResultSet rs = null;
                try {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    String url = "jdbc:mysql://localhost:3306/OnlineExamination";
                    String username = "root";
                    String password = "Jayshree@23";
                    // create a connection
                    con = DriverManager.
                            getConnection(url, username, password);
                    st = con.createStatement();
                    String query = "select * from exam";
                    rs = st.executeQuery(query);
                    while (rs.next()) {
            %>
            <tr style="background-color: appworkspace;color:black lavenderblush;font-weight: bold; text-align:center">
                <td> <%= rs.getString(2)%> </td>
                <td> <%= rs.getString(13)%> </td>
                <td> <%= rs.getString(3)%> </td>
                <td><a href="examination.jsp?id=<%=rs.getInt(1)%>" class="btn btn-primary">Give Exam</a> </td>
            </tr>
            <%
                    }
                } catch (Exception e) {
                }
            %>
        </table>
    </center>
</body>
</html>
