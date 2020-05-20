<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">




<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Table</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link href='https://fonts.googleapis.com/css?family=Sofia' rel='stylesheet'>
    <link href='https://fonts.googleapis.com/css?family=Allan' rel='stylesheet'>
    <style>
    .title{
            font-size: 50px;
            font-weight: bold;
            font-family: Sofia;
        }
        
        
        
     .chumma{
     font-color: hotpink;
      text-align: center;
	   font-size: 40px;
            font-weight: bold;
            font-family: Allan;
	   } 
	   
	    #logOut{
			width: 200px;
			height: 75px;
			position: fixed;
			display: inline-block;
			top: 5%;
			right: 5%;
		}
	   
	   .bgImage{
    		height: -webkit-fill-available;
    		background-image: url('bg-image1.jpg');
			background-size: cover;
			filter: blur(65px);
    	}

		.content{
			position: fixed;
			top:20%;
			left:15%;
    		width: 70%;
		}
		
    </style>
</head>
<body>
 
	<div class="bgImage"></div>
    <div class="content">
    <div id="logOut">
			<button class="btn btn-warning"><a class="text-primary" href="index.jsp">logout</a></button>
		</div>
    	<div class="top-title container-fluid text-center">
        <span class="title text-dark">All Items Details</span>
    </div>
    
    <div class="chumma">
	   <a href="insert.jsp" style="color:blue"> Insert Item</a>
    </div>
    
    <div class="container">
        <table class="table table-secondary table-bordered table-hover table-striped text-center">
            <thead>
                <tr>
			<th class="bg-secondary text-light">Name</th>
			<th class="bg-secondary text-light">Price</th>
			<th class="bg-secondary text-light">Actions</th>
		</tr>
            </thead>
            <tbody>
            <c:forEach items="${items}" var="item">
			<tr>
				<td>${item.itemName}</td>
				<td>${item.itemPrice}</td>
				<td>
					<form>
					<input class=" btn-success" type="submit" formmethod="post" formaction="update.jsp" value="Update"> <input type="hidden" name="ItemId" value="${item.itemId}">
					<input class="btn-danger" type="submit" formmethod="post" formaction="delete" value="Delete"> <input type="hidden" name="ItemId" value="${item.itemId}" ><br> 
				 
				</form>
				</td>
			</tr>
		</c:forEach>
               
                
            </tbody>
        </table>
    </div>
    	
    </div>
   
</body>
</html>




<%-- <html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<div>
	<a href="insert.jsp"> Insert Item</a>
</div>
 All Items Details
 
 	<div>

		<table border="1" style="padding: 4px;">
		<tr>
			<th>Name</th>
			<th>Price</th>
			<th>Actions</th>
		</tr>
		<c:forEach items="${items}" var="item">
			<tr>
				<td>${item.itemName}</td>
				<td>${item.itemPrice}</td>
				<td>
					<form>
					<input type="submit" formmethod="post" formaction="update.jsp" value="Update"> <input type="hidden" name="ItemId" value="${item.itemId}" ><br>
					<input type="submit" formmethod="post" formaction="delete" value="Delete"> <input type="hidden" name="ItemId" value="${item.itemId}" ><br> 
				</form>
				</td>
			</tr>
		</c:forEach>
	</table>
	</div>

</body>
</html> --%>