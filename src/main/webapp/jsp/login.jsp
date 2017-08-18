<%--
  Created by IntelliJ IDEA.
  User: wangfan
  Date: 2017/7/27
  Time: 11:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>login-page</title>
    <link rel="stylesheet" href="/css/bootstrap.min.css">
    <script src="/jQuery/jquery-3.2.1.js"></script>
    <script src="/jQuery/bootstrap.min.js"></script>
<style type="text/css">
    body{
        background-color: #f9f9f9;
    }
    #login-block{
        width:400px;
        padding:20px;
        font-size: 14px;
        background-color: #fff;
        border: 1px solid #d8dee2;
        border-radius: 5px;
        margin:100px auto;
    }
    #login-block label{
        display: block;
    }
    .label-link{
        float: right;
    }

    /*错误提示框*/
    #attention-model{
        width:300px;
        height: 100px;
    }

</style>


</head>
<body>
    <div id="header"></div>
    <div id="container">
        <div id="login-block">
            <div id="incorrect-attention" class="alert alert-danger alert-dismissible" role="alert" >
                <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <strong>Warning!</strong> Incorrect username or password.
            </div>
            <form action="/verify" method="post">
                <div class="form-group">
                    <label for="user-name">UserName</label>
                    <input type="text" class="form-control" id="user-name" name="userName" placeholder="Pick a username">
                </div>
                <div class="form-group">
                    <label for="user-password">Password<a id="forget-password" class="label-link" data-toggle="modal" data-target="#forget-password-model">Forgot password?</a></label>
                    <input type="password" class="form-control" id="user-password" name="userPassword" placeholder="Password">
                </div>
                <button type="submit" class="btn btn-primary">Submit</button>
            </form>
        </div>
    </div>
    <div class="modal fade" id="forget-password-model" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-body">
                    请联系管理员！
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                </div>
            </div>
        </div>
    </div>
    <div id="footer"></div>
    <canvas id="canvas-test" style="position: fixed;top: 0px;left: 0px;z-index: -1;opacity: 0.5;width: 100%;height: 100%;"></canvas>
</body>
<script type="text/javascript">

    message = ${message};

    console.info(message);
    (function showErrorBox() {if(message==false){$("#incorrect-attention").css("display","")}else{$("#incorrect-attention").css("display","none")}}());

    $(document).ready(
        function () {
            $("#footer").load("/html/footer.jsp");
        }
    );
</script>
<script type="text/javascript" src="/jQuery/canvas-nest.min.js"></script>
</html>
