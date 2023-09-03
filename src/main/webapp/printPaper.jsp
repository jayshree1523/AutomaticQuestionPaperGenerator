
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Print Paper</title>
    </head>
    <body>
        <%@include file="profile.jsp" %>
    <center>
        <table border="1" p=10>
            <tr style="background-color: powderblue;color:black lavenderblush;font-weight: bold; text-align:center">
                <td>College</td>
                <td>Exam</td>
                <td>ClassName</td>
                <td>SubjectName</td>
                <td>LongInstruction</td>
                <td>ShortInstruction</td>
                <td>OneWordInstruction</td>
                <td>Long Ques</td>
                <td>Short Ques</td>
                <td>OneWord Ques</td>
                <td>Total time</td>
                <td>Total Marks</td>
                <td>Total Ques</td>
                <td>Action</td>
            </tr>
            <%//                HttpSession sess = request.getSession();
//                sess.setAttribute("clgId",);
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
                    String query = "select *from paper";
                    rs = st.executeQuery(query);
                    while (rs.next()) {
            %>
            <tr style="text-align: center">
                <td name="college" value="rs.getString(2)"> <%= rs.getString(2)%> </td>
                <td> <%= rs.getString(3)%> </td>
                <td> <%= rs.getString(4)%> </td>
                <td> <%= rs.getString(5)%> </td>
                <td> <%= rs.getString(6)%> </td>
                <td> <%= rs.getString(7)%> </td>
                <td> <%= rs.getString(8)%> </td>
                <td> <%= rs.getInt(9)%> </td>
                <td> <%= rs.getInt(10)%> </td>
                <td> <%= rs.getInt(11)%> </td>
                <td> <%= rs.getString(12)%> </td>
                <td> <%= rs.getInt(13)%> </td>
                <!--<td><button class="btn btn-outline-primary text-dark" href="ShowPaper.jsp" value="Print"></button> </td>-->
                <td> <%= rs.getInt(14)%> </td>
                <td>
                    <!--                    <form action="paperFormat.jsp">
                                            <button type="submit" class="btn btn-success">Print</button>
                                        </form>-->
                    <form action="paperFormat.jsp">
                        <input type ="submit" value="print">
                    </form>
                </td>
            </tr>
            <%
                    }
                } catch (Exception e) {
                }
            %>
        </table>
    </center>


    <form action="paperFormat.jsp">
        <div class="form-group">
            <label for="exampleInputEmail1">ClassName</label>
            <input type="text" name="ClassName" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter">
        </div>
        <div class="form-group">
            <label for="exampleInputPassword1">SubjectName</label>
            <input type="text" name="SubjectName" id="exampleInputPassword1" placeholder="">
        </div>

        <div class="form-group">
            <label for="exampleInputPassword1">CollegeName</label>
            <input type="text" name="clgName" id="exampleInputPassword1" placeholder="">
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>

</body>
</html>
