<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>TodoList</title>

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 shim 和 Respond.js 是为了让 IE8 支持 HTML5 元素和媒体查询（media queries）功能 -->
    <!-- 警告：通过 file:// 协议（就是直接将 html 页面拖拽到浏览器中）访问页面时 Respond.js 不起作用 -->
    <!--[if lt IE 9]>
    <script src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/respond.js@1.4.2/dest/respond.min.js"></script>
    <![endif]-->
    <style>
        .todo-completed {
            text-decoration: line-through;
        }
    </style>
</head>
<body>
<div class="container">
<div class="row">
    <div class="panel panel-default">
        <div class="panel-heading">
            <h5 class="text-center">Todo List</h5>
        </div>
        <div class="panel-body">
            <div class="col-md-3">
                <span class="glyphicon glyphicon-unchecked" aria-hidden="true"></span> 完成
                <h6>点击文字编辑</h6>
                <span class="glyphicon glyphicon-remove" aria-hidden="true"></span> 删除
            </div>
            <div class="col-md-6">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <form class="form-inline" action="#">
                            <input id="id-input-todo" class="form-control" placeholder="请输入todo">
                            <button id="id-button-add" type="button" class="btn btn-default">Add</button>
                        </form>
                    </div>
                    <div class="panel-body">
                        <ul class="list-group" id="id-todo-list">
                            <!--<div class="todo">-->
                            <!--    <li class="list-group-item">-->
                            <!--        <span class="complete glyphicon glyphicon-unchecked" aria-hidden="true"></span>-->
                            <!--        <span class="content">吃饭</span>-->
                            <!--        <span class="delete glyphicon glyphicon-remove pull-right" aria-hidden="true"></span>-->
                            <!--    </li>-->
                            <!--</div>-->
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-md-3"></div>
        </div>
    </div>

</div>
</div>

<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
<script src="/utilies.js"></script>
<script src="/ajax_todo.js"></script></body>
</html>