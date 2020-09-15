<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Registration Form</title>
        <link rel="stylesheet" href="stylesignin.css">
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">

    </head>
    <body style="background: black">
        <div class="container">
            <div class="row mt-5">
                <div class="col-lg-12">
                    <div class="wrapper">
                        <div class="title mt-5">
                                Sign in
                            </div>
                            <div class="form mt-5">
                                <form action="/cs310/signinServlet" method="post">
                                    <div class="inputfield">
                                        <label>Email</label>
                                        <input type="text" class="input" name="email">
                                    </div>  

                                    <div class="inputfield">
                                        <label>Password</label>
                                        <input type="password" class="input" name="password">
                                    </div>  
                                    <p>Don't have an account? <a href="/cs310/signup/signup.jsp">Sign up</a> here</p>

                                    <div class="inputfield">

                                        <input type="submit" class="btn btn-dark" value="Log in">
                                    </div>
                                </form>
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