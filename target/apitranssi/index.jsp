<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <script src="${pageContext.request.contextPath}/jQuery/jquery-3.2.1.js"></script>
        <script src="${pageContext.request.contextPath}/jQuery/bootstrap.min.jss"></script>
        <link href="${pageContext.request.contextPath}/css/bootstrap.min.css"/>
    </head>


    <script>
        $(document).ready(function(){
            $("h3").click(function(){
                $(this).hide();
            });
        });
    </script>
<body>
    <h2>Hello World!</h2>
    <div id="header">
        <div class="page-header">
            <h1>分销系统API： <small>调用实例</small></h1>
        </div>
    </div>
    <div id="container">
        <div class="panel panel-default fenxiao-tmall">
            <div class="panel-heading">fenxiao api</div>
            <div class="panel-body">
                <ul class="parameter-group">
                    <li class="custid">
                        <span class="input-group-addon" id="basic-addon1">custid</span>
                        <input type="text" class="form-control" placeholder="Username" aria-describedby="sizing-addon1">
                    </li>
                    <li class="mobile-phone">

                    </li>
                    <li class="vcode">

                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div id="footer">

    </div>
</body>
</html>
