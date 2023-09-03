
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Page</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
            body{
                background-image: url('img/edu-5.jpg');
                background-size: 100%,100%;
                height: 720px;
                background-position: center;
                background-repeat: repeat;
            }
        </style>
    </head>
    <body>
        <%@include file="normal_navbar.jsp" %>
        <main>
            <div class="container p-5">
                <div class="col-md-6 offset-md-3">
                    <div class="card">
                        <div class="card-header text-center">
                            <span class="fa fa-user-circle fa-3x"></span>
                            <br>
                            Register here
                        </div>
                        <div class="card-body col-15">
                            <form action="RegisterServlet" method="post">
                                <div class="form-group">
                                    <label for="exampleInputName">Name</label>
                                    <input type="text" name="username" class="form-control" id="exampleInputName" placeholder="Enter name" required>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Email address</label>
                                    <input type="email" name="useremail" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email" required>
                                    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputPassword1">Password</label>
                                    <input type="password" name="userpassword" class="form-control" id="exampleInputPassword1" placeholder="Password" required>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputCity">City</label>
                                    <input type="text" name="usercity" class="form-control" id="exampleInputCity" placeholder="Enter your city" required>
                                </div>
                                <div class="form-group">
                                    <label for="address">Address</label>
                                    <textarea style="height:100px;" name="useraddress" class="form-control" placeholder="Enter your address" required>
                                    </textarea>
                                </div>
                                <div class="form-group">
                                    <label for="gender">Select Gender</label>
                                    <select name="gender" class="form-control">
                                        <option >Male</option>
                                        <option >Female</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label>Profile Type</label>

                                    <select name="profileType" class="form-control">
                                        <option >Teacher</option>
                                        <option >Student</option>
                                    </select>
                                </div>

                                <div class="container text-center">
                                    <button type="submit" class="btn btn-success">Submit</button>
                                </div>
                            </form>
                        </div>




                    </div>
                </div>
            </div>
        </main>

        <script src="first.jsp"></script>
    </body>
</html>
