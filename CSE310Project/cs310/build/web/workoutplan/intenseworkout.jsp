<%-- 
    Document   : workoutplan
    Created on : Sep 13, 2020, 7:51:56 PM
    Author     : Asus
--%>

<%@page import="server.Intense"%>
<%@page import="server.IntenseDatabase"%>
<%@page import="server.User"%>
<%@page import="java.util.List"%>
<%@page import="server.Beginner"%>
<%@page import="server.BeginnerDatabase"%>
<%@page import="server.ConnectionPro"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    User user = (User) session.getAttribute("login");
    if (user == null) {
        response.sendRedirect("index.jsp");
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <title></title>
        <link rel="stylesheet" type="text/css" href="workout.css">
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

    </head>
    <body>

        <div class="bgimage">
            <div class="menu">

                <div class="leftmenu">
                    <h4> <img src="image/logo.png" alt="" height="50px" width="400px"> </h4>
                </div>

                <div class="rightmenu">
                    <ul>
                        
                        <li><a href="/cs310/profile/profile.jsp">Profile</a></li>
                        <li><a href="/cs310/signup/signin.jsp">Log Out</a></li>
                    </ul>
                    <%
                        IntenseDatabase addIntense = new IntenseDatabase(ConnectionPro.getConnection());

                        List<Intense> list = addIntense.fetchIntense();

                    %>
                </div>
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <table class="table table-striped table-dark">
                                <Caption class="caption text-center"><h4>Intense Level Workout Plan</h4></Caption>
                                <thead>
                                    <tr>
                                        <th scope="col">#</th>
                                        <th scope="col">Reps</th>
                                        <th scope="col">Sets</th>
                                        <th scope="col">Workout type</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <%  int i = 1;
                                        for (Intense intense : list) {
                                    %>
                                    <tr>   
                                        <th scope="row"><%=i%></th>
                                        <td><%=intense.getReps()%></td>
                                        <td><%=intense.getSets()%></td>
                                        <td><%=intense.getType()%></td>
                                    </tr>
                                    <%i++;
                                        }
                                    %>
                                </tbody>
                            </table>
                            <!-- <table class="table table-borderless table-dark">
                              <thead>
                                <tr>
                                  <th scope="col">#</th>
                                  <th scope="col">First</th>
                                  <th scope="col">Last</th>
                                  <th scope="col">Handle</th>
                                </tr>
                              </thead>
                              <tbody>
                                <tr>
                                  <th scope="row">1</th>
                                  <td>Mark</td>
                                  <td>Otto</td>
                                  <td>@mdo</td>
                                </tr>
                                <tr>
                                  <th scope="row">2</th>
                                  <td>Jacob</td>
                                  <td>Thornton</td>
                                  <td>@fat</td>
                                </tr>
                                <tr>
                                  <th scope="row">3</th>
                                  <td colspan="2">Larry the Bird</td>
                                  <td>@twitter</td>
                                </tr>
                              </tbody>
                            </table> -->
                        </div>
                    </div>
                </div>

            </div>


            <!-- Latest compiled and minified JavaScript -->
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
            <link href='http://fonts.googleapis.com/css?family=Montserrat:400,700%7CPT+Serif:400,700,400italic' rel='stylesheet'>
            <link href="https://fonts.googleapis.com/css?family=Montserrat|Open+Sans" rel="stylesheet">
            </body>
            </html>