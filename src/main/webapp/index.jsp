<%-- 
    Document   : index
    Created on : Mar 12, 2023, 10:24:37 PM
    Author     : Home
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="style.css">
        <title>Index Page</title>
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
        <%@include file="normal_navbar.jsp" %>
        <!--banner-->

        <div class="container-fluid" p=0 m=0>
            <div class="jumbotorn primary">
                <!--<img src="img/edu-4.jpg" class="img-fluid">-->
                <h2 class="h1 text-center p-5" style="font-family: fantasy">Online Question Paper Generator</h2>
                <i><p style="font-size: 40px;font-weight:500;font-family: initial;text-align: center">One child, one teacher, one book, one pen can change the world !</p></i>

                <br>
                <form class="home text-center">
                <a href="register_page.jsp" class="btn btn-outline-primary btn-lg">Sign Up</a>
                <a href="login_page.jsp" class="btn btn-outline-primary btn-lg">Login</a>
                </form>
            </div>
        </div>







        <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
    </body>
</html>
