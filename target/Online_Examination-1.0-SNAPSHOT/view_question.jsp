
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Question</title>
    </head>
    <body>
        <%@include file="profile.jsp" %>
    <center>
        <table border="1" p=10>
            <tr style="background-color: powderblue;color:black lavenderblush;font-weight: bold; text-align:center">
                <td>Class Name</td>
                <td>Subject Name</td>
                <td>Question</td>
                <td>QuestionType</td>
                <td>Marks</td>
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
                    String query = "select * from AddQuestion";
                    rs = st.executeQuery(query);
                    while (rs.next()) {
            %>
           <tr style="background-color: appworkspace;color:black lavenderblush;font-weight: bold; text-align:center">
                <td> <%= rs.getString(2)%> </td>
                <td> <%= rs.getString(3)%> </td>
                <td> <%= rs.getString(4)%> </td>
                <td> <%= rs.getString(5)%> </td>
                <td> <%= rs.getInt(6)%> </td>
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
