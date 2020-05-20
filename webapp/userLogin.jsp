
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Login</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link href='https://fonts.googleapis.com/css?family=Sofia' rel='stylesheet'>
    <style>
        .bgImage{
    		height: -webkit-fill-available;
    		background-image: url('bg-image1.jpg');
			background-size: cover;
			filter: blur(20px);
    	}
        .jumbotron{
            margin:0;
            padding:0;
            padding: 30px;
        }
        .top-title{
            padding: 6px;
            border-radius: 5px;
            border-bottom: 1px solid black;
		    background-color: #e9ecef;
        }
        .content{
    		position: fixed;
    		top:20%;
    		left:37%;
    		border-radius: 5px;
    		border: 1px solid black;
    	}
        .width{
            width:60%;
            border: 0.5px solid black;
            border-radius: 3px;
        }
        .title{
            font-size: 30px;
            font-weight: bold;
            font-family: Sofia;
            color: black;
        }
        label{
            font-family: Sofia;
        }
        a{
            color: white;
            text-decoration: none;
        }
    </style>
</head>
<body>
    <div class="bgImage"></div>
    <div class="content">
        <div class="top-title container-fluid text-center">
            <span class="title">User Login</span>
        </div>
        <div class="container jumbotron text-center">
            <div class="panel">
       
                <br />
                 <form >
                 
                <label><b>Username:</b></label>
                <input class="width"  type="text"  name="username" placeholder="Enter the username">
                <br /><br />
                <label><b>Password:</b></label>
                <input class="width" type="password" name="password" placeholder="Enter the password">
                <br /><hr /><br />
                <div class="container text-center">
                    <input type="submit" value="Login" name="login" class="btn btn-primary" formaction="userLogin">
                    &nbsp;
                   <input type="submit" value="Signup" name="Signup" class="btn btn-primary" formaction="userSignup.jsp"><br>
                   ${msg}
                   
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>
</html>


<!-- <html> -->
<!-- <head> -->
<!-- <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"> -->
<!-- <title>Insert title here</title> -->
<!-- </head> -->
<!-- <body> -->

<!-- <form action="adminLogin"> -->
<!-- <label>username</label> -->
<!-- <input type="text" name="username" placeholder="enter the username"><br> -->
<!-- <label>password</label> -->
<!-- <input type="password" name="password" placeholder="enter the password"><br> -->
<!-- <input type="submit" value="Login" name="login"> -->
<!-- </form> -->


<!-- </body> -->
<!-- </html> -->



