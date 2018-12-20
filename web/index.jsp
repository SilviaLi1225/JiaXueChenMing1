<%--
  Created by IntelliJ IDEA.
  User: apple
  Date: 2018/10/11
  Time: 16:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
  <head>
    <link rel="stylesheet" type="text/css" href="index.css">
    <title>Login</title>
  </head>
  <body>
  <div id="header">
    <h1>JiaXueChenMing Cafe shop</h1>
  </div>
  <div id="nav">
    Stores<br>
    My Account<br>
    Menu<br>
  </div>
  <div id = "login">
    <form name="input" action="cafe.jsp"
          method="get">
      UserName:
      <input type="text"
             name="user"
             id="user">
      <br>
      Password:
      <input type="password"
             name="secret"
             id="pwd">
      <br>
      <br>
      <input type="submit" value="Login in">
    </form>
    <form name="register" action="http://127.0.0.1:5000/index?companyID=<%="001"%>"
          method="post">
      <input type="submit" value="Register"/>
    </form>
  </div>

  <div id="section">
    <h1>About JXCM Cafe Shop</h1>
    <p>
      JXCM is a chained cafe shop in China, we have many different kinds of coffee, tea and juice.
    </p>
    <p>
      If you want to sign up, please first select the permission list to protect your private data.
    </p>
    <p>
      If you want to modify the permission list, please visit this website: http://gdprServer.com
  </div>

  <div id="footer">
    Copyright JXCM
  </div>
  <script type = "text/javascript">
      function onRegister(){
          var companyID = "001";
          alert(companyID);
          $.ajax({
              type:'post',
              url:'http://127.0.0.1:5000/login',
              data: { companyID : companyID},
              success: function(data){
                  Console.log("Success!")
              },
              error: function(data){
                  Console.log("Error!")
              }
          });
      }
   </script>
  </body>
</html>
