<%-- 
    Document   : profile
    Created on : Sep 11, 2020, 8:41:14 PM
    Author     : Asus
--%>

<%@page import="server.UserDatabase"%>
<%@page import="server.ConnectionPro"%>
<%@page import="server.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<% User user = (User)session.getAttribute("login");
if(user==null){
    response.sendRedirect("index.jsp");
}
 %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <link rel="stylesheet" href="styleprofile.css">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
</head>
<body>
    <div class="bgimage">
    		<div class="menu">
			
			<div class="leftmenu">
                            <h4><a href="/cs310/homepage/trainerhomepage.jsp"><img src="/cs310/homepage/image/logo.png" alt="" height="50px" width="400px"></a> </h4>
			</div>

			<div class="rightmenu">
                            <ul><li><a href="/cs310/homepage/trainerhomepage.jsp">HOME</a> </li>
					<li><a href="/cs310/profile/trainerprofile.jsp">Profile</a></li>
					<li> Take Help From a Trainer</li>
					<li> About us</li>
					<li>contact</li>
                                        <li><a href="/cs310/index.jsp">Log Out</a></li>
				</ul>
			</div>

		</div>

    <div class="container">
        <div class="row">
            <div class="col-md-12" align="center">
                <img src="image/person.png" alt="" height="200px" width="200px">
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-lg-12" align="center">
                <form action="">
                    <div class="id">
                        <h3>User Id</h3>
                        <br>
                        <form>
                            <input type="text" name="id" value="<%= user.getId()%>">
                        </form>
                    </div>
                    <div class="name">
                        <label for="">Name</label>
                        <br>
                        <input type="text" name="name" value="<%=user.getName()%>"> 
                    </div>
                    
                    <div class="email">
                        <label for="">email</label>
                        <br>
                        <input type="text" name="email" value="<%=user.getEmail()%>">
                    </div>
                    <div class="password">
                        <label for="">password</label>
                        <br>
                        <input type="text" name="password"value="<%=user.getPassword()%>">
                    </div>
                    <div class="age">
                        <label for="">age</label>
                        <br>
                        <input type="text" name="age"value="<%=user.getAge()%>">
                    </div>
                    <div class="sex">
                        <label for="">sex</label>
                        <br>
                        <input type="text" name="sex"value="<%=user.getSex()%>">
                    </div>
                    <div class="weight">
                        <label for="">weight</label>
                        <br>
                        <input type="text" name="weight"value="<%=user.getWeight()%>">
                    </div>
                    <div class="height">
                        <label for="">height</label>
                        <br>
                        <input type="text" name="height"value="<%=user.getHeight()%>">
                    </div>
                    <div class="current_address">
                        <label for="">current address</label>
                        <br>
                        <input type="text" name="current_address"value="<%=user.getCurrent_address()%>">
                    </div>
                    <div class="prev_exp">
                        <label for="">previous experince of working out</label>
                        <br>
                        <input type="text" name="prev_exp"value="<%=user.getPrev_exp()%>">
                    </div>        
                    <div class="maj_inj">
                        <label for="">major injuries on body</label>
                        <br>
                        <input type="text" name="maj_inj"value="<%=user.getMaj_inj()%>">
                    </div>
                    <div class="habi_smoke">
                        <label for="">habit of smoking</label>
                        <br>
                        <input type="text" name="habi_smoke"value="<%=user.getHabi_smoke()%>">
                    </div>
                    

                </form>
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