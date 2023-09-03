<%@page import="java.util.*" %>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    session.setAttribute("name", "jayshree");

//    int examId = Integer.parseInt(request.getParameter("ExamID"));
    String ClassName = request.getParameter("ClassName");
    session.setAttribute("Class_Name", ClassName);
//    out.println(ClassName);
    String SubjectName = request.getParameter("SubjectName");
    session.setAttribute("Subject_Name", SubjectName);
    int longQues = Integer.parseInt(request.getParameter("longQues"));

//    out.println(longQues);
    String l1 = "Long Answer";
    String l2 = "Short Answer";
    String l3 = "One Word";
    String Iname = request.getParameter("Iname");
    session.setAttribute("IName", Iname);
    String exam = request.getParameter("exam");
    String longInstructions = request.getParameter("longInstructions");
    session.setAttribute("long_Instructions", longInstructions);
    String shortInstructions = request.getParameter("shortInstructions");
    session.setAttribute("short_Instructions", shortInstructions);
    String oneInstructions = request.getParameter("oneInstructions");
    session.setAttribute("one_Instructions", oneInstructions);
    int shortQues = Integer.parseInt(request.getParameter("shortQues"));
    int oneWordQues = Integer.parseInt(request.getParameter("oneWordQues"));
    String totalTime = request.getParameter("totalTime");
    session.setAttribute("total_Time", totalTime);
    int totalMarks = longQues * 10 + 5 * shortQues + 2 * oneWordQues;
    String classAndInst = Iname + "(" + ClassName + ")";
//    int totalMarks = Integer.parseInt(request.getParameter("totalMarks"));
//    session.setAttribute("total_Marks", totalMarks);
//    int totalQues = Integer.parseInt(request.getParameter("totalQues"));
//    session.setAttribute("total_Ques", totalQues);
//    out.println(exam);
//    out.println(longInstructions);
//    out.println(shortInstructions);
//    out.println(oneInstructions);
//    out.println(shortQues);
//    out.println(oneWordQues);
//    out.println(totalTime);
//    out.println(totalMarks);
//    out.println(totalQues);
%>
<%
    String driver = "com.mysql.jdbc.Driver";
    String url = "jdbc:mysql://localhost:3306/OnlineExamination";
    String username = "root";
    String password = "Jayshree@23";

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
        <title>JSP Page</title>
        <!--<script src="https://kit.fontawesome.com/7780cccd9d.js"></script>-->
        <!--Google Fonts Link--> 
        <!--        <link rel="preconnect" href="https://fonts.googleapis.com" />
                <link rel="preconnect" href="https://fonts.gstatic.com" />
                <link
                    href="https://fonts.googleapis.com/css2?family=Merriweather:ital,wght@1,300&display=swap"
                    rel="stylesheet" />
                
                <link type="text/css" rel="stylesheet" media="print" href="print.css" />-->
        <!--<link rel="stylesheet" href="format.css">-->
        <link type="text/css" rel="stylesheet" href="format.css" />
    </head>
    <body>
        <header>
            <h3>Online Examination System</h3>
            <ul>
                <li><a class="links" href="index.jsp">Home</a></li>
                <!--                <li><button class="classReportEditButton" name="printPaper"
                                            onClick="Print()">PrintPaper</button></li>-->
                <li><a class="links" href="LogoutServlet">Logout</a></li>
            </ul>
        </header>
        <section class="card" id="card1">
            <div class="div1">
                <div class="subDiv1">
                    <h3><%=classAndInst%>
                    </h3>

                </div>
                <div class="subDiv2">
                    <h2>
                        End Term Examination 2023</h2>
                </div>
                <div class="subDiv3">
                    <%
                        try {
                            Connection con1 = DriverManager.getConnection(url, username, password);

                            String q1 = "select * from AddQuestion where ClassName=? and SubjectName=? and QuestionType=? order by rand() limit ?";
                            String q2 = "select * from AddQuestion where ClassName=? and SubjectName=? and QuestionType=? order by rand() limit ?";
                            String q3 = "select * from AddQuestion where ClassName=? and SubjectName=? and QuestionType=? order by rand() limit ?";
                            PreparedStatement pstmt1 = con1.prepareStatement(q1);
                            pstmt1.setString(1, ClassName);
                            pstmt1.setString(2, SubjectName);
                            pstmt1.setString(3, l1);
                            pstmt1.setInt(4, longQues);
                            ResultSet rs1 = pstmt1.executeQuery();

//                            short answer
                            Connection con2 = DriverManager.getConnection(url, username, password);
//                            String q2 = "select * from AddQuestion where ClassName=? and SubjectName=? and QuestionType=? order by rand() limit ?";
                            PreparedStatement pstmt2 = con2.prepareStatement(q2);
                            pstmt2.setString(1, ClassName);
                            pstmt2.setString(2, SubjectName);
                            pstmt2.setString(3, l2);
                            pstmt2.setInt(4, shortQues);
                            ResultSet rs2 = pstmt2.executeQuery();
//                            con2.close();

//                            one word answer
                            Connection con3 = DriverManager.getConnection(url, username, password);
//                            String q3 = "select * from AddQuestion where ClassName=? and SubjectName=? and QuestionType=? order by rand() limit ?";
                            PreparedStatement pstmt3 = con3.prepareStatement(q3);
                            pstmt3.setString(1, ClassName);
                            pstmt3.setString(2, SubjectName);
                            pstmt3.setString(3, l3);
                            pstmt3.setInt(4, oneWordQues);
                            ResultSet rs3 = pstmt3.executeQuery();
//                            con3.close();

//					s = con.createStatement();
//					String sql = "select * from add_paper where paper_id=" + paper_id;
//					String sql1 = "select distinct * from add_question where paper_id=" + paper_id + " order by rand() limit "
//					+ questions;
//					resultSet = statement.executeQuery(sql);
//					rs = s.executeQuery(sql1);
//                            while (resultSet.next()) {
//                                String pname = resultSet.getString("SubjectName");
                    %>
                    <h3><%=SubjectName%></h3>
                    <%
                        //                        }
                    %>
                </div>
            </div>
            <div class="div2">
                <h3 class="totalTime">
                    Time:
                    <%=totalTime%>
                </h3>
                <h3 class="maximumMarks">
                    MM:
                    <%=totalMarks%>
                    marks
                </h3>
            </div>

            <div class="div3">
                <div class="Note">
                    <h4 class="instruction">
                        <span>Long Questions: </span><%=longInstructions%>
                    </h4>
                </div>
                <table class="table-content">
                    <%
                        int i = 1;
                        int[] longQuesId = new int[longQues];

                        ArrayList<Integer> list1 = new ArrayList<>();
                        while (rs1.next()) {
                            longQuesId[i - 1] = rs1.getInt(1);
                            list1.add(rs1.getInt(1));
                    %>
                    <tbody>
                        <tr>
                            <td>Q.<%=i%></td>
                            <td><%=rs1.getString("Question")%></td>
                        </tr>
                        <tr>
                            <td>Ans.<%=i%></td>
                            <td><textarea id="id" name="name" rows="3" cols="15" class="form-control" style="border: none;outline: none;background-color: rgba(209, 216, 223, 0.9);border-bottom: solid"></textarea></td>
                        </tr> 
                    </tbody>
                    <%
                            i++;
                        }
//                        session.setAttribute("longId", longQuesId);
                        session.setAttribute("longQues1", list1);
                    %>
                </table>
                <!--short questions--> 
                <!--<div class="">-->
                <div class="Note">
                    <h4 class="instruction">
                        <span>Short Questions: </span><%=shortInstructions%>
                    </h4>
                </div>
                <table class="table-content">
                    <%
                        int j = 1;
                        ArrayList<Integer> list2 = new ArrayList<>();

                        int[] shortQuesId = new int[shortQues];
                        while (rs2.next()) {
                            list2.add(rs2.getInt(1));

//                            shortQuesId[j - 1] = rs2.getInt(1);
%>
                    <tbody>
                        <tr>
                            <td>Q.<%=j%></td>
                            <td><%=rs2.getString("Question")%></td>
                        </tr>
                        <tr>
                            <td>Ans.<%=j%></td>
                            <td><textarea id="id" name="name" rows="2" cols="20" style="border: none;outline: none;background-color: rgba(209, 216, 223, 0.9);border-bottom: groove"></textarea></td>
                        </tr>
                    </tbody>
                    <%
                            j++;
                        }
                        session.setAttribute("shortQues1", list2);
                    %>
                </table>
                <!--</div>-->

                <!--one word questions-->   
                <!--<div class="">-->
                <div class="Note">
                    <h4 class="instruction">
                        <span>One Word Questions: </span><%=oneInstructions%>
                    </h4>
                </div>
                <table class="table-content">
                    <%
                        int k = 1;
                        ArrayList<Integer> list3 = new ArrayList<>();

                        int[] oneWordQuesId = new int[oneWordQues];
                        while (rs3.next()) {
                            list3.add(rs3.getInt(1));
//                            oneWordQuesId[k - 1] = rs3.getInt(1);
%>
                    <tbody>
                        <tr>

                            <td>Q.<%=k%></td>
                            <td><%=rs3.getString("Question")%></td>


                        </tr>
                        <tr>
                            <td>Ans.<%=k%></td>
                            <td><textarea id="id" name="name" rows="1" cols="10" class="form-control" style="border: none;outline: none;background-color: rgba(209, 216, 223, 0.9);border-bottom: solid"></textarea></td>
                        </tr>
                    </tbody>
                    <%
                            k++;
                        }
                        session.setAttribute("onewordQues1", list3);
                    %>
                </table>
                <!--</div>-->
                <form action="temp.jsp">
                    <button type="submit" class="btn btn-success">Done</button>
                </form>

            </div>

        </section>
        <%
            } catch (Exception e) {
//                con1.close();
//                con2.close();
//                con3.close();
                System.out.println(e.getMessage());
            }
        %>


    </body>
</html>
