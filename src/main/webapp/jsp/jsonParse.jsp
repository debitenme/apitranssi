<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>json parse</title>
    <script src="/jQuery/jquery-3.2.1.js"></script>
    <script src="/jQuery/bootstrap.min.js"></script>
    <script src="/jQuery/json/jquery.json.js"></script>
    <script src="/jQuery/json/jsonlint.js"></script>
    <style style="sheet/css">
        #container{
        }
        #json-src{
            height:678px;
            padding:0 10px 10px 10px;
            border:0;
            border-right:solid 1px #E5EBEE;
            border-bottom:solid 1px #eee;
            border-radius:0;
            resize: none;
            outline:none;
            font-size:10px;
            width:300px;
        }
        #json-src-div{
            float: left;
        }

        #json-target{
            border: solid 1px orange;
            height:678px;
            width:200px;
            float: left;
        }
    </style>
    <script style="text/script">
        var current_json = '';
        var current_json_str = '';
        var xml_flag = false;
        var zip_flag = false;
        var shown_flag = false;
        function init(){
            xml_flag = false;
            zip_flag = false;
            shown_flag = false;
        }
        $(document).ready(function () {
            $('#converge').click(function(){
                init();
                var content = $.trim($("#json-src").val());
                var result = '';
                if (content!='') {
                    //如果是xml,那么转换为json
                    if (content.substr(0,1) === '<' && content.substr(-1,1) === '>') {
                        try{
                            var json_obj = $.xml2json(content);
                            content = JSON.stringify(json_obj);
                        }catch(e){
                            result = '解析错误：<span style="color: #f1592a;font-weight:bold;">' + e.message + '</span>';
                            current_json_str = result;
                            $('#json-target').html(result);
                            return false;
                        }

                    }
                    try{
                        current_json = jsonlint.parse(content);
                        current_json_str = JSON.stringify(current_json);
                        //current_json = JSON.parse(content);
                        result = new JSONFormat(content,4).toString();
                    }catch(e){
                        result = '<span style="color: #f1592a;font-weight:bold;">' + e + '</span>';
                        current_json_str = result;
                    }

                    $('#json-target').html(result);
                }else{
                    $('#json-target').html('');
                }

            });
        });
    </script>
</head>
<body>
<input class="button " id="converge" type="button" value="解析"/>
<div id="container">
    <div class="col-md-5 " id="json-src-div">
    <textarea id="json-src" class="form-control">
        {
"Json解析":"支持格式化高亮折叠",
"支持XML转换":"支持XML转换Json,Json转XML",
"Json格式验证":"更详细准确的错误信息"
        }
    </textarea>
    </div>
    <div id="json-target" class="col-md-7">

    </div>
</div>
</body>
</html>
