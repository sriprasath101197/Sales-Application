<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Sign-up</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link href='https://fonts.googleapis.com/css?family=Sofia' rel='stylesheet'>
<style>
    .bgImage{
    	height: -webkit-fill-available;
    	background-image: url('bg-image1.jpg');
		background-size: cover;
		filter: blur(20px);
    }
    .content{
    	position: fixed;
    	top:20%;
		left:37%;
    	border-radius: 5px;
    	border: 1px solid black;
	}
    .jumbotron{
        margin: 0;
        padding: 30px;
    }
    .width{
        width:100%;
        border: 0.5px solid black;
        border-radius: 3px;
    }
    .top-title{
        padding: 6px;
        border-radius: 5px;
        border-bottom: 1px solid black;
		background-color: #e9ecef;
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
</style>
</head>
<body>
    <div class="bgImage"></div>
    <div class="content">
        <div class="top-title container-fluid text-center">
            <span class="title">Sign Up</span>
        </div>
        <div class="jumbotron text-center">
        <form>
            <table>
                <tbody>
                    <tr>
                        <td><label><b>Username:</b></label></td>
                        <td><input class="width"  type="text"  name="userName" placeholder="Enter the username"></td>
                    </tr>
                    <tr>
                        <td><label><b>Password:</b></label></td>
                        <td><input class="width" type="password" name="userPassword" placeholder="Enter the username"></td>
                    </tr>
                    <tr>
                        <td><label><b>Phone Number:</b></label></td>
                        <td><input class="width"  type="text"  name="userPhone" placeholder="Phone number"></td>
                    </tr>
                    <tr>
                        <td><label><b>Emailid:</b></label></td>
                        <td><input class="width"  type="text"  name="userEmailid" placeholder="Enter the username"></td>
                    </tr>
                </tbody>
            </table>
            <br /><hr /><br />
            <div class="container text-center">
                <input type="submit" value="Signup" name="signup" class="btn btn-primary" formaction="userSignup">
            </div>
        </form>
        </div>
    </div>
</body>
</html>
