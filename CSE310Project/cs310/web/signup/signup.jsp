<%-- 
    Document   : signup
    Created on : Sep 10, 2020, 4:04:48 PM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Registration Form</title>
	<link rel="stylesheet" href="stylesignin.css">  
</head>
<body style="background: black;">

<div class="wrapper">
    <div class="title">
      Registration Form
    </div>
    <div class="form">
        <form action="/cs310/userSignUpServlet" method="post">
       <div class="inputfield">
          <label>Name</label>
          <input type="text" class="input" name="name">
       </div>  
          
       <div class="inputfield">
          <label>Password</label>
          <input type="password" class="input"  name="password">
       </div>  
           
        <div class="inputfield">
          <label>Email Address</label>
          <input type="text" class="input"  name="email">
       </div> 
      <div class="inputfield">
          <label>Phone</label>
          <input type="text" class="input"  name="phone">
       </div> 
      <div class="inputfield">
          <label>Age</label>
          <input type="text" class="input"  name="age">
       </div> 
      <div class="inputfield">
          <label>Sex</label>
          <input type="text" class="input" name="sex">
       </div>  
      <div class="inputfield">
          <label>Weight</label>
          <input type="text" class="input" name="weight">
       </div>  
      <div class="inputfield">
          <label>Height</label>
          <input type="text" class="input" name="height">
       </div> 
      <div class="inputfield">
          <label>Current address</label>
          <input type="text" class="input"name="current_address">
       </div> 
      <div class="inputfield">
          <label>Previous experience of working out</label>
          <input type="text" class="input" name="prev_exp">
      </div> 
      <div class="inputfield">
          <label>Major injuries on body</label>
          <input type="text" class="input" name="maj_inj">
       </div>
      <div class="inputfield">
          <label>Habit of smoking</label>
          <input type="text" class="input" name="habi_smoke">
       </div>  
            <div class="inputfield">
          <label>User Type(Trainee or Trainer)</label>
          <input type="text" class="input" name="user_type">
       </div> 
      <div class="inputfield terms">
          
          <p>Already have an account? <a href="signin.jsp">Sign in</a> here</p>
      <div class="inputfield">
        <input type="submit" value="Register" class="btn">
      </div>
    </form>
    </div>
</div>	
	
</body>
</html>