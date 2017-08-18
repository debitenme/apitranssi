<%--
  Created by IntelliJ IDEA.
  User: wangfan
  Date: 2017/6/25
  Time: 15:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html ng-app>
<head>
    <title>Simple app</title>
    <script
            src="/jQuery/angular.min.js">
    </script>
</head>
<body>
<input ng-model="name" type="text" placeholder="Your name" >
<h1 ng-init="name='World'">Hello {{ name }}</h1>
</body>
</html>