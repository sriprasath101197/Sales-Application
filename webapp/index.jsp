<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>INDEX</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <style>
        body{
            background-image: url('bg-image1.jpg');
            background-size: cover;
        }
        .jumbotron{
            margin-top: 65%;
            background-color: transparent;
        }
        .left{
            float:left;
            margin-left: 100px;
        }
        .right{
            float:right;
            margin-right: 100px;
        }
        button{
            position: relative;
            width: 30%;
            height:100px;
        }
        .button-text{
            font-family: 'Times New Roman', Times, serif;
            font-weight: bold;
            font-size: 100%;
        }
    </style>
</head>
<body>
    <div class="container text-center">
        <div class="jumbotron">
            <a href="adminLogin.jsp"><button class="left btn btn-success"">ADMIN</button></a>
            <a href="userLogin.jsp"><button class="right btn btn-warning"">USER</button></a>
        </div>
    </div>
</body>
</html>

<!-- <button class="left btn btn-success"><span class="button-text">ADMIN</span></button> -->
<!--             <button class="right btn btn-warning"><span class="button-text">USER</span></button> -->