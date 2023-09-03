<%-- 
    Document   : print
    Created on : Mar 26, 2023, 12:33:41 AM
    Author     : Home
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Print Page</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>
    <body>
         <%@include file="profile.jsp" %>
        <main>
            <div class="container p-5">
                <div class="col-md-6 offset-md-3">
                    <div class="card">
                        <div class="card-body col-15">
                            <form action="paperFormat.jsp">
                                <div class="form-group">
                                    <label for="exampleInputName">ClassName</label>
                                    <input type="text" name="ClassName" class="form-control" id="exampleInputName" placeholder="Enter classname">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">SubjectName</label>
                                    <input type="text" name="SubjectName" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Subject Name">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputPassword1">CollegeName</label>
                                    <input type="text" name="clgName" class="form-control" id="exampleInputPassword1" placeholder="College Name">
                                </div>
                                <div class="container text-center">
                                    <button type="submit" class="btn btn-success">Submit</button>
                                </div>
                        </div>
                    </div>
                </div>
        </main>
    </body>
</html>
