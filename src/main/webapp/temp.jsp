<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>



<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <title>JSP Page</title>
    </head>
    <body>
        <%

            String Iname = (String) session.getAttribute("IName");
            String Subjectname = (String) session.getAttribute("Subject_Name");
            String totalTime = (String) session.getAttribute("total_Time");
            String className = (String) session.getAttribute("Class_Name");
//            int totalMarks = (int) session.getAttribute("total_Marks");
//            int totalQues = (int) session.getAttribute("total_Ques");
            String long_Instructions = (String) session.getAttribute("long_Instructions");
            String short_Instructions = (String) session.getAttribute("short_Instructions");
            String one_Instructions = (String) session.getAttribute("one_Instructions");

//                Integer longQuesId = (Integer) session.getAttribute("longId");
            ArrayList<Integer> list1 = (ArrayList<Integer>) session.getAttribute("longQues1");
            ArrayList<Integer> list2 = (ArrayList<Integer>) session.getAttribute("shortQues1");
            ArrayList<Integer> list3 = (ArrayList<Integer>) session.getAttribute("onewordQues1");
            int a = list1.size();
            int b = list2.size();
            int c = list3.size();
            int totalMarks = 10 * a + 5 * b + 2 * c;
            int totalQues = a + b + c;
//            out.println(list1);
//            out.println(list2);
//            out.println(list3);
//            out.println(list1.size());

            try {
                String driver = "com.mysql.jdbc.Driver";
                String url = "jdbc:mysql://localhost:3306/OnlineExamination";
                String username = "root";
                String password = "Jayshree@23";
                Class.forName(driver);
                Connection conn = DriverManager.getConnection(url, username, password);
                Statement st = conn.createStatement();
                st.executeUpdate("insert into exam(InstituteName,SubjectName,TotalTime,TotalMarks,TotalQues,LongQuesDesc,ShortQuesDesc,OneWordQuesDesc,NoLongQues,NoShortQues,NoOneWordQues,ClassName) values('" + Iname + "','" + Subjectname + "','" + totalTime + "','" + totalMarks + "','" + totalQues + "','" + long_Instructions + "','" + short_Instructions + "','" + one_Instructions + "','" + a + "','" + b + "','" + c +  "','" + className + "' )");
                
                Connection con1 = DriverManager.getConnection(url, username, password);
                String q1 = "select * from exam order by examId desc limit 1";
                PreparedStatement pstmt1 = con1.prepareStatement(q1);
                ResultSet rs1 = pstmt1.executeQuery();
                int examId = 0;
                while (rs1.next()) {
                    examId = rs1.getInt(1);

                }
                
//                longquesid
                Connection con2 = DriverManager.getConnection(url, username, password);
                Statement st1 = con2.createStatement();
                for (int j = 0; j < list1.size(); j++) {
                    //out.println(list1.get(j));
                    st1.executeUpdate("insert into longQuesIdInExam(longQuesId,examId) values('" + list1.get(j) + "','" + examId + "')");
                }
                Connection con3 = DriverManager.getConnection(url, username, password);
                Statement st2 = con3.createStatement();
                for (int k = 0; k < list2.size(); k++) {
//                    out.println(list2.get(k));
                    st2.executeUpdate("insert into shortQuesIdInExam(shortQuesId,examId) values('" + list2.get(k) + "','" + examId + "')");
                }
                Connection con4 = DriverManager.getConnection(url, username, password);
                Statement st3 = con4.createStatement();
                for (int n = 0; n < list3.size(); n++) {
//                    out.println(list3.get(n));
                    st3.executeUpdate("insert into oneWordQuesIdInExam(oneWordQuesId,examId) values('" + list3.get(n) + "','" + examId + "')");
                }
                out.println("Data is successfully inserted!");

            } catch (Exception e) {
                System.out.print(e);
                e.printStackTrace();
            }
        %>


        <div class="col-sm-4">
            <div class="card" style="width: 18rem;">
                <img class="card-img-top" src="img/edu-7.jpg" alt="Card image cap">
                <div class="card-body">
                    <h5 class="card-title">Success</h5>
                    <p class="card-text">Exam Created Successfully!</p>
                    <a href="profile.jsp" class="btn btn-primary">Go to HomePage</a>
                </div>
            </div>

        </div>

    </body>
</html>
