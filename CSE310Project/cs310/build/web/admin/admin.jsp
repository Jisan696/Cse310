<%-- 
    Document   : admin
    Created on : Sep 13, 2020, 5:15:11 PM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="styleadmin.css">

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">

        <title>Admin</title>
    </head>
    <body>
        <div class="menu">

            <div class="leftmenu">
                <h4> <img src="/cs310/image/logo.png" alt="" height="50px" width="400px"> </h4>
            </div>

            <div class="rightmenu">
                <ul>
                    <li><a href="/cs310/profile/profile.jsp">Profile</a></li>
                    <li> Take Help From a Trainer</li>
                    <li> About us</li>
                    <li>contact</li>
                    <li><a href="/cs310/signup/signin.jsp">Log Out</a></li>
                </ul>
            </div>

        </div>
        <!-- Equipment modal -->
        <!-- Modal -->
        <!-- Modal -->
        <div class="modal fade" id="workout" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Update Workout Plans</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form action="/cs310/OperationServlet" method="post">
                            <div class="form-group">
                                <input type="hidden" name="addoperation" value="addplan">
                                <label >Reps</label>
                                <input type="text" class="form-control" id="" placeholder="Enter Reps" name="reps">
                            </div>
                            <div class="form-group">
                                <label >Sets</label>
                                <input type="text" class="form-control" id="" placeholder="Enter Sets" name="sets">
                            </div>
                            <div class="form-group">
                                <label >Type</label>
                                <input type="text" class="form-control" id="" placeholder="Workout Type" name="type">
                            </div>
                            <div class="form-group">
                                <select class="form-control" name="level">
                                    <option value="Beginner">Beginner</option>
                                    <option value="Medium">Medium</option>
                                    <option value="Intense">Intense</option>
                                </select>
                            </div>
                            <div class="container text-center">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                <input type="submit" class="btn btn-dark"/>
                            </div>
                        </form>

                    </div>



                </div>
            </div>
        </div>
        <div class="container" align="center">
            <div class="row mt-3">
                <div class="col-md-6">
                    <div class="card" data-toggle="modal" data-target="#workout">
                        <div class="card-body text-center">
                            <div class="container-fluid">
                                <img style="max-width: 125px;" class="img-fluid" rounded-circle src="image/workout.png" alt="">
                            </div>
                            <h1>Update Workout Plans</h1>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="card" data-toggle="modal" data-target="#equipment">
                    <div class="card-body text-center">
                        <div class="container-fluid">
                            <img style="max-width: 125px;" class="img-fluid" rounded-circle src="image/workout.png" alt="">
                        </div>
                        <h1>Equipment List</h1>
                    </div>

                </div>                
            </div>
        </div>
        <!-- Equipment modal -->
        <!-- Modal -->
        <!-- Modal -->
        <div class="modal fade" id="equipment" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Update Workout Plans</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form action="/cs310/OperationServlet">
                            <div class="form-group">
                                <input type="hidden" value="addeq" name="addoperation">
                                <label for="exampleFormControlInput1">Equipment Name</label>
                                <input type="text" class="form-control" id="" placeholder="Equipment name" name="eqName">
                            </div>
                            <div class="form-group">
                                <label for="exampleFormControlInput1">Amount</label>
                                <input type="text" class="form-control" id="" placeholder="Amount" name="eqAmount">
                            </div>

                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                <input type="submit" class="btn btn-success">
                            </div>
                        </form>
                    </div>
                </div>
            </div>




            <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
            <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
            <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
</html>