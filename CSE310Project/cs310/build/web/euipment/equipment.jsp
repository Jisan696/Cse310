<%-- 
    Document   : equipment
    Created on : Sep 13, 2020, 7:52:39 PM
    Author     : Asus
--%>

<%@page import="server.User"%>
<%@page import="java.util.List"%>
<%@page import="server.Equipment"%>
<%@page import="server.EquipmentDatabase"%>
<%@page import="server.ConnectionPro"%>
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
	<link rel="stylesheet" type="text/css" href="equipment.css">
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
                             EquipmentDatabase addeq = new EquipmentDatabase(ConnectionPro.getConnection());
                             List<Equipment> list = addeq.fetchEquipment();
                            
                            %>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <table class="table table-striped table-dark">
                            <thead>
                              <tr>
                                <th scope="col">#</th>
                                <th scope="col">Equipment Name</th>
                                <th scope="col">Amount</th>
                              </tr>
                            </thead>
                            <tbody>
                                
                                <%  int i=1;
                                    for(Equipment equipment:list){
                                %>
                              <tr>
                                <th scope="row"><%=i%></th>
                                <td><%=equipment.getName()%></td>
                                <td><%=equipment.getAmount()%></td>
                              </tr>
                              <%i++;}%>
                              
                            </tbody>
                          </table>

        </div>
        </div>

        <!-- listgroup -->

        

		
<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
		 <link href='http://fonts.googleapis.com/css?family=Montserrat:400,700%7CPT+Serif:400,700,400italic' rel='stylesheet'>
		  <link href="https://fonts.googleapis.com/css?family=Montserrat|Open+Sans" rel="stylesheet">
</body>
</html>