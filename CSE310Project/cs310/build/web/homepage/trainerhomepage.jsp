<%-- 
    Document   : homepage
    Created on : Sep 11, 2020, 7:50:27 PM
    Author     : Asus
--%>

<%@page import="server.ChatTrainer"%>
<%@page import="server.TrainerMessageDatabase"%>
<%@page import="server.Chat"%>
<%@page import="java.util.List"%>
<%@page import="server.TraineeChatDatabase"%>
<%@page import="server.ConnectionPro"%>
<%@page import="server.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title></title>
        <link rel="stylesheet" type="text/css" href="stylehomepage.css">
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    </head>
    <body>

        <div class="bgimage">
            <div class="menu">

                <div class="leftmenu">
                    <h4><a href="/cs310/homepage/trainerhomepage.jsp"> <img src="/cs310/homepage/image/logo.png" alt="" height="50px" width="400px"></a> </h4>
                </div>
                <%
                    TraineeChatDatabase addmessage = new TraineeChatDatabase(ConnectionPro.getConnection());
                    TrainerMessageDatabase addtrainer = new TrainerMessageDatabase(ConnectionPro.getConnection());
                    List<Chat> list = addmessage.fetchtraineechat();
                    List<ChatTrainer> list1 = addtrainer.fetchtrainerchat();
                %>
                <div class="rightmenu">
                    <ul>
                        <a href="/cs310/homepage/homepage.jsp"><li id="fisrtlist"> HOME </li></a>
                        <li><a href="/cs310/profile/trainerprofile.jsp">Profile</a></li>
                        <li data-toggle="modal" data-target="#traineemessage"style = "cursor: pointer;"> Message From Trainee (<%=list.size()%>)</li>
                        <li><a href="/cs310/signup/signin.jsp">Log Out</a></li>
                    </ul>
                </div>

            </div>
                       

            <div class="text">
                <h4> WAKE UP • SHOW UP • TRAIN THEM UP </h4>
                 <h2> Welcome Trainer </h2>
                <h1> IN TEACHING WE CAN LEARN </h1>

            </div>
            <div class="container">
                <div class="row" id="">
                    <div class="col-lg-4">

                    </div>
                    <div class="col-lg-6">
                        <button class="btn btn-dark" data-toggle="modal" data-target="#plan">See Workout Plans</button>
                        <a href="/cs310/euipment/equipment.jsp"><button class="btn btn-dark">Equipment Lists</button></a>
                    </div>
                </div>
            </div>
                        
                        <!--reply chat-->
                          <!--chat modal-->
                <div class="modal fade" id="chat" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-lg">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Send a Message to Trainer</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <div class="container-fluid">
                                    <form action="/cs310/ChatServletTrainer" method="post">
                                        <div class="form-group">
                                            <label >Trainee's Name</label>
                                            <input type="text" name="name" class="form-control" id="exampleFormControlInput1" placeholder="Enter Trainee's Name">
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleFormControlTextarea1">Enter Your Query</label>
                                            <textarea class="form-control" name="message" id="exampleFormControlTextarea1" rows="3"></textarea>
                                        </div>

                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                        <input type="Submit" class="btn btn-success"/>
                                    </form>
                                </div>
                            </div>


                        </div>
                    </div>
                </div>


                <!--modal to see trainee's message-->
                <!-- Modal -->
                <div class="modal fade" id="traineemessage" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLongTitle">Modal title</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <table class="table table-striped table-dark">
                            <thead>
                              <tr>
                                <th scope="col">#</th>
                                <th scope="col">Name</th>
                                <th scope="col">Message</th>
                              </tr>
                            </thead>
                            <tbody>
                                 <% int i=1;
                                    for(Chat chat:list){
                                %>
                              
                              <tr>
                                <th scope="row"><%=i%></th>
                                <td><%=chat.getName()%></td>
                                <td><%=chat.getMessage()%></td>
                              </tr>
                              <%i++;}%>
                              
                            </tbody>
                          </table>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#chat"data-dismiss="modal">Reply</button>
                               
                            </div>
                        </div>
                    </div>
                </div>
                        </div>
                    </div>
                </div>
        </div>
                              

                <!--modal of option-->
                <!-- Modal -->
                <div class="modal fade" id="plan" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Choose One Option</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body text-center">
                                <a href="/cs310/workoutplan/workoutplan.jsp"><button type="button" class="btn btn-primary">Beginner</button></a>
                                <a href="/cs310/workoutplan/mediumworkout.jsp"><button type="button" class="btn btn-primary">Medium</button></a>
                                <a href="/cs310/workoutplan/intenseworkout.jsp"><button type="button" class="btn btn-primary">Intense</button></a>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>

                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Latest compiled and minified JavaScript -->
            <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
            <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
            <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
    </body>
</html>
