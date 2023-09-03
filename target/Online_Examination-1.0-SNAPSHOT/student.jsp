<%@page import="com.online_examination.entities.User" %>
<%@page errorPage="error_page.jsp" %>
<%
    User user = (User) session.getAttribute("currentUser");
    if (user == null) {
        session.setAttribute("msg", "Login First");
        response.sendRedirect("login_page.jsp");
        return;
    }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous"><nav class="navbar navbar-expand-lg navbar-dark bg-custom">

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="style.css">
        <title>Student Page</title>
        <style>
            body{
                background-image: url('img/examm.jpg');
                background-size: 100%,100%;
                height: 720px;
                background-position: center;
                background-repeat: no-repeat;
            }
        </style>
    </head>
    <body>

        <a class="navbar-brand" href="#"> Hello <%=user.getName()%></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item">
                    <a class="nav-link text-white" href="LogoutServlet">Logout</a>
                </li>
            </ul>
            <ul class="navbar-nav ml-auto">
                <form class="form-inline">
                    <li class="nav-item">
                       <!--<a href="examList.jsp" class="btn btn-primary">Exams</a>-->
                        <a class="btn btn-outline-primary text-white my-2 my-sm-0 mr-2" type="button" href="examList.jsp">Exams</a>
                    </li>
                    <li class="nav-item">
                        <button class="btn btn-outline-primary text-white my-2 my-sm-0" type="button">Results</button>
                    </li>
                </form>

            </ul>
        </div>
</nav>


<div class="row">
    <div class="col-sm-4 p-5">

        <div class="card" style="width: 18rem;">
            <img class="card-img-top" src="img/examsection.jpg" alt="Card image cap">
            <div class="card-body">
                <h3 class="card-title">Exam Section</h3>
                <p class="card-text" style="font-size: 18px">All the ExamList are given here.</p>
                <a href="examList.jsp" class="btn btn-primary">Exams</a>
            </div>
        </div>
    </div>

    <div class="col-sm-4 p-5">
        <div class="card" style="width: 18rem;">
            <img class="card-img-top" src="img/abdul-kalam-image.jpg" alt="Card image cap">
            <div class="card-body">
                <!--<h5 class="card-title">Result Board</h5>-->
                <p class="card-text" style="font-size: 25px;font-family: fantasy">Education is what remains after one has forgotten what one has learned in school.</p>
                <!--<a href="#" class="btn btn-primary">Result</a>-->
            </div>
        </div>

    </div>

<div class="col-sm-4 p-5">
        <div class="card" style="width: 18rem;">
            <img class="card-img-top" src="img/project.jpg" alt="Card image cap">
            <div class="card-body">
                <h3 class="card-title">Result Board</h3>
                <!--<p class="card-text" style="font-size: 18px">Students can view the all results.</p>-->
                <a href="#" class="btn btn-primary">Result</a>
            </div>
        </div>

    </div>
 </div>
   



</body>
</html>
