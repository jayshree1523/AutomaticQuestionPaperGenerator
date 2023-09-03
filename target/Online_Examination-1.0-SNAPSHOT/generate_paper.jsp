

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <title>Generate Paper</title>
    </head>
    <body>

        <%@include file="profile.jsp" %>
        <main>
            <div class="container p-5">
                <div class="col-md-6 offset-md-3">
                    <div class="card">
                        <div class="card-body col-15">
                            <form action="format.jsp" method="post">

                                <div class="form-group">
                                    <label for="Iname">Institute Name</label>
                                    <input type="text" name="Iname" class="form-control" id="Iname" placeholder="Enter College Name" required>
                                </div>
                                <div class="form-group">
                                    <label for="exam">Exam</label>
                                    <input type="text" name="exam" class="form-control" id="Ename" placeholder="Exam type" required>
                                </div>


                                <div class="form-group">
                                    <label for="exampleInputName">ClassName</label>
                                    <input type="text" name="ClassName" class="form-control" id="exampleInputName" placeholder="Enter classname" required>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">SubjectName</label>
                                    <input type="text" name="SubjectName" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Subject Name" required>
                                </div>
                                <div class="form-group">
                                    <label for="instructions">Long Ques Instructions</label>
                                    <textarea style="height:100px;" name="longInstructions" class="form-control" required>
                                    </textarea>
                                </div>
                                <div class="form-group">
                                    <label for="long">No. Of Long Ques.</label>
                                    <input type="number" name="longQues" class="form-control" id="exampleInputMarks" required>
                                </div>
                                <div class="form-group">
                                    <label for="instructions">Short Ques Instructions</label>
                                    <textarea style="height:100px;" name="shortInstructions" class="form-control" required>
                                    </textarea>
                                </div>
                                <div class="form-group">
                                    <label for="short">No. Of Short Ques.</label>
                                    <input type="number" name="shortQues" class="form-control" id="exampleInputMarks" required>
                                </div>
                                <div class="form-group">
                                    <label for="instructions">One Word Instructions</label>
                                    <textarea style="height:100px;" name="oneInstructions" class="form-control" required>
                                    </textarea>
                                </div>
                                <div class="form-group">
                                    <label for="oneWord">No. Of One Word Ques</label>
                                    <input type="number" name="oneWordQues" class="form-control" id="exampleInputMarks" required>
                                </div>

                                <div class="form-group">
                                    <label for="totalTime">Total time</label>
                                    <input type="text" name="totalTime" class="form-control" id="exampleInputMarks" required>
                                </div>

                                <div class="container text-center">
                                    <button type="submit" class="btn btn-success">Done</button>
                                </div>
                            </form>
                        </div>

                    </div>
                </div>
            </div>
        </main>



    </body>
</html>
