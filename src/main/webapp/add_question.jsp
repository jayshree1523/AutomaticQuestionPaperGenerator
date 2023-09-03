<%-- 
    Document   : add_question
    Created on : Mar 16, 2023, 5:06:15 PM
    Author     : Home
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <title> Add Question</title>
    </head>
    <body>
        <%@include file="profile.jsp" %>
        <main>
            <div class="container p-5">
                <div class="col-md-6 offset-md-3">
                    <div class="card">
                        <div class="card-body col-15">
                            <form action="AddQuestionServlet" method="post">
                                <div class="form-group">
                                    <label for="className">Class Name</label>
                                    <select name="className" class="form-control">
                                        <option >BCA</option>
                                        <option >MCA</option>
                                        <option >BTECH</option>
                                        <option >MTECH</option>
                                    </select>
                                </div>


                                <div class="form-group">
                                    <label for="subject">Subject Name</label>
                                    <select name="subjectName" class="form-control">
                                        <option >JAVA</option>
                                        <option >DBMS</option>
                                        <option >DSA</option>
                                        <option >Computer Network</option>
                                        <option >OS</option>
                                        <option >Maths</option>
                                        <option >SE</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="question">Question</label>
                                    <textarea style="height:100px;" name="qusetion" class="form-control" required>
                                    </textarea>
                                </div>
                                <div class="form-group">
                                    <label for="qtype">Question Type</label>
                                    <select name="qtype" class="form-control">
                                        <option >Long Answer</option>
                                        <option >Short Answer</option>
                                        <option >One Word</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="marks">Marks</label>
                                    <input type="text" name="marks" class="form-control" id="exampleInputMarks" placeholder="Enter marks" required>
                                </div>

                                <div class="container text-center">
                                    <button type="submit" class="btn btn-success">Add</button>
                                </div>
                            </form>
                        </div>

                    </div>
                </div>
            </div>
        </main>

    </body>
</html>
