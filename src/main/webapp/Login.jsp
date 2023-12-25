<%--
  Created by IntelliJ IDEA.
  User: Hirusha
  Date: 12/22/2023
  Time: 12:52 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        .container {
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            width: 400px;
            max-width: 100%;
            box-sizing: border-box;
        }

        .header {
            background-color: #3498db;
            color: #fff;
            padding: 20px;
            text-align: center;
        }

        .form {
            padding: 20px;
            box-sizing: border-box;
        }

        .input-group {
            margin-bottom: 20px;
        }

        .input-group label {
            display: block;
            font-size: 14px;
            margin-bottom: 5px;
        }

        .input-group input {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        .error-message {
            color: #e74c3c;
            margin-bottom: 10px;
        }

        .form-btn {
            background-color: #2ecc71;
            color: #fff;
            border: none;
            padding: 10px;
            border-radius: 4px;
            cursor: pointer;
            width: 100%;
            font-size: 16px;
        }

        .form-btn:hover {
            background-color: #27ae60;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="header">
        <h2>Login</h2>
    </div>
    <div class="form">
       <form action="Login" method="post" >
           <div class="error-message">${errorMessage}</div>
           <div class="input-group">
               <label for="email">Email:</label>
               <input type="text" id="email" name="email" required>
           </div>
           <div class="input-group">
               <label for="password">Password:</label>
               <input type="password" id="password" name="password" required>
           </div>
           <button class="form-btn" type="submit" >Login</button>
       </form>
        <p>not have an accout? <a href="Register.jsp">Register</a></p>
    </div>
</div>


</body>
</html>
