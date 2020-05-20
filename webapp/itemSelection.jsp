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
    <style>
        .title{
            font-size: 50px;
            font-weight: bold;
            font-family: Sofia;
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
        #logOut{
			width: 200px;
			height: 75px;
			position: fixed;
			display: inline-block;
			top: 5%;
			right: 5%;
		}
		a{
			text-decoration: none;
			color: white;
		}
		a:hover{
			text-decoration: none;
			color:black;
		}
        #calcTotal{
            text-align: right;
        }
        #calcTotal>button{
            width: 20%;
            box-shadow: 2px 2px 4px #000000;
            height: 40px;
        }
        #calcTotal>button:hover{
            box-shadow: none;
            transition: all 0.5s;
        }
        
        #display_total{
        	display: block;
        	height: 0;
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
        	<span class="title text-dark">Available Items</span>
    	</div>
            <div class="container">
                    <table class="table table-secondary table-bordered table-hover table-striped text-center">
                        <thead>
                            <tr>
                                <th class="bg-secondary text-light">ID</th>
                                <th class="bg-secondary text-light">Name</th>
                                <th class="bg-secondary text-light">Quantity</th>
                                <th class="bg-secondary text-light">Rate</th>
                                <th class="bg-secondary text-light">Final</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${items}" var="item">
                        <tr>
                            <td>${item.itemId}</td>
                            <td class="itemName">${item.itemName}</td>
                              <td><input type="number" class="inp"></td>
                            <td class="rate">${item.itemPrice}</td>
                            <td class="final"></td>
                        </tr>
                    </c:forEach>
                            
                        </tbody>
                    </table>
                </div>    

                <div id="calcTotal">
                    <button class="btn-info">Calc</button>
                </div>
                
                <h1 id="display_total">
                </h1>
    </div>    

    <script>

        var fin_arr = document.getElementsByClassName('final');
        var inp_arr = document.getElementsByClassName('inp');
        var rate_arr = document.getElementsByClassName('rate');
        var item_arr = document.getElementsByClassName('itemName');
        var total = 0;
        var i = 0;
            
        function exec()
        {
            for(let i=0;i<inp_arr.length;i++){
                fin_arr[i].innerHTML = parseInt(inp_arr[i].value) * rate_arr[i].innerHTML;
            }
        }

        function calc(){
            total =0;
            
            for(i=0; i< fin_arr.length; i++){
                if(!(isNaN(fin_arr[i].innerHTML))){
                	total += parseInt(fin_arr[i].innerHTML)
                }
            }


            document.getElementById('display_total').innerHTML = 'Total amount is '+ total ;
            document.getElementById('display_total').style.height = '100px';
        }

        window.onclick =  function(){exec()};

        window.onkeyup = function(){exec()};

        document.getElementById('calcTotal').onclick = function(){calc()};
    </script>
</body>
</html>