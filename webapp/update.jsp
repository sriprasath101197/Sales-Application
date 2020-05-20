<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<style>
    .bgImage{
    	height: -webkit-fill-available;
    	background-image: url('bg-image2.jpg');
		background-size: 100% 100%;
		filter: blur(10px);
    }
    .top-title{
        padding: 6px;
        padding-bottom: 16px;
        border-radius: 5px;
        /*border-bottom: 1px solid black;*/
    }
    .content{
		position: fixed;
    	top:20%;
    	left:37%;
		border-radius: 5px;
    	/*border: 1px solid black;*/
        text-align: center;
    }
    .title{
        font-size: 30px;
        font-weight: bold;
        color: black;
    }
    .container{
        padding-top: 50px;
    }
    label{
        font-weight: bold;
    }
    .width{
        width:100%;
        /*border: 0.5px solid black;*/
        border-radius: 3px;
    }
    hr{
        margin-bottom: 0;
    }
    form{
        margin: 0;
        padding: 10px;
    }
</style>
</head>
<body>
        <div class="bgImage"></div>
        
        <div class="content">
            <div class="top-title container-fluid text-center">
                <span class="title">Update Item</span>
            </div>
            <div class="container">
                <form action="update">
                <table>
                    <tbody>
                        <tr>
                            <td><label>Item name:</label></td>
                            <td><input class="width" type="text" name="itemName" placeholder="enter the name"><br></td>
                        </tr>
                        <tr>
                            <td><label>Item price:</label></td>
                            <td><input class="width" type="text" name="itemPrice" placeholder="enter the price"><br></td>
                        </tr>
                    </tbody>
                </table>
                <br /><hr /><br />
                <input type="hidden" name="ItemId" value="${param.ItemId}" >
                <input class="btn btn-primary" type="submit" value="Update" name="update">
            </form>
            </div>
        </div>

</body>
</html>