<%@page import="com.online_examination.entities.User" %>
<%@page errorPage="error_page.jsp" %>
<%
    User user = (User) session.getAttribute("currentUser");
    if (user == null) {
        session.setAttribute("msg","Login First");
        response.sendRedirect("login_page.jsp");
        return;
    }
    else{
        if(user.getProfileType().equals("Student")){
            session.setAttribute("msg","You are not teacher,do not access this page");
            response.sendRedirect("login_page.jsp");
            return;
        }
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
        <title>Teacher Page</title>
        <style>
            body{
                background-image: url('img/teacher.jpg');
                background-size: 100%,100%;
                height: 720px;
                background-position: center;
                background-repeat: repeat-y;
            }
        </style>
    </head>
    <body>
        <!--navbar-->

        <a class="navbar-brand" href="#"> <span class="fa fa-user-circle"></span>Hello <%=user.getName() %> </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item">
                    <a class="nav-link text-dark" href="LogoutServlet">Logout</a>
                </li>
            </ul>
            <ul class="navbar-nav ml-auto">
                <form class="form-inline">
                    <li class="nav-item">
                        <a class="btn btn-outline-primary text-dark my-2 my-sm-0 mr-2" type="button" href="add_question.jsp"><span class="fa-solid fa-square-plus"></span>Add Question</a>
                    </li>
                    <br>
                    <li class="nav-item">
                        <a class="btn btn-outline-primary text-dark my-2 my-sm-0 mr-2" type="button" href="view_question.jsp">View Question</a>
                    </li>
                    <li class="nav-item">
                        <a class="btn btn-outline-primary text-dark my-2 my-sm-0" type="button" href="generate_paper.jsp">Generate Paper</a>
                    </li>
<!--                    <li class="nav-item">
                        <a class="btn btn-outline-primary text-white" type="button" href="print.jsp">Print</a>
                    </li>-->
                </form>

            </ul>
        </div>
</nav>


<!--navbar end-->




<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
</body>
</html>
