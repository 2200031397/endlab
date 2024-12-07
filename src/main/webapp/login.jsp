<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login Page</title>
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            background-color: #f0f0f0;
            font-family: Arial, sans-serif;
        }

        .login-container {
            width: 350px;
            height: 450px;
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .login-header {
            width: 92%;
            background-color: lightgreen;
            padding: 15px;
            text-align: center;
            border-top-left-radius: 10px;
            border-top-right-radius: 10px;
            font-size: 24px;
            font-weight: bold;
            color: white;
        }

        form {
            width: 100%;
            height: 100%;
            display: flex;
            flex-direction: column;
            justify-content: center; /* Center elements vertically */
            align-items: center; /* Center elements horizontally */
        }

        input[type="text"], input[type="password"] {
            width: 80%;
            padding: 10px;
            margin: 10px 0; /* Space between input fields */
            border: 1px solid #ccc;
            border-radius: 20px;
        }

        input[type="submit"] {
            width: 85%;
            padding: 10px;
            margin-top: 20px;
            background-color: lightgreen;
            border: none;
            color: white;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            border-radius: 20px;
        }

        input[type="submit"]:hover {
            background-color: #32cd32;
        }
        a{
        text-decoration: none;
        font-size: 13px;
        margin-left: 100px;
        
        }
        p{
        margin-top: 80px;
        
        }
        .dev
        {
        margin-right: 120px;
        color: lightgreen;
        }
    </style>
</head>
<body>

<div class="login-container">
    <div class="login-header">SIGN IN</div>
    
        <input type="text" name="username" id="T1" placeholder="Username" required>
        <input type="password" name="password" id="T2" placeholder="Password" required>
        <a href="#">forgot username / password?</a>
        <button onclick="signin()">login</button>
        <label id="ack"></label>
        <p>Don't have an account?</p>
        <a href="#" class="dev">SIGN UP NOW</a>
        

    
</div>

</body>
<script type="text/javascript" src="js/main.js"></script>
<script type="text/javascript">
	function signin(){
		var data=JSON.stringify({
			username:T1.value,
			password:T2.value
		});
		var url="http://localhost:8080/user/login";
		callApi("POST",url,data,signinHandler);
	}
	function signinHandler(res){
		if(res==401){
			ack.style.color="red";
		ack.innerHTML=res;
		}
		else{
			ack.innerHTML="";
			location.replace("/home");
			//location.href="/home";
		}
		
	}
	
	
</script>
</html>