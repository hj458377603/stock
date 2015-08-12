<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <link rel="shortcut icon" href="http://www.yucezhe.com/img/favicon-32.png">
    <link rel="stylesheet" type="text/css" href="/web/static/css/datetimepicker.css">
    <!-- Bootstrap core CSS -->
    <link href="/web/static/css/bootstrap.css" type="text/css" rel="stylesheet">
    <!-- Custom styles for this template -->

    <link href="/web/static/css/wp.css" type="text/css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="/web/static/css/base.css">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
    <!--[if lte IE 8]>
        <script src="/js/excanvas.compiled.js"></script>
    <![endif]-->
</head>
<body>
    <div id="login-body">
        <div class="text-center login-logo">
            <h1><a href="http://www.yucezhe.com/dashboard"><img src="/web/static/img/icon-72x72.png" alt="预测者"></a></h1>
        </div>
        <div class="container">
            <div class="clearfix card login-card">
                <div class="p1 text-center">
                    <h3 style="margin: 5px;">登录</h3>
                </div>
                <div class="p2">
                    <form class="form-horizontal" action="/web/home" method="post" id="login_form">
                        <div class="text-center">
                            <p class="text-danger">${msg}</p>
                        </div>
                        <div class="form-group">
                            <div class="col-md-12">
                                <label for="input-email" class="hidden"></label>
                                <input type="email" class="form-control" id="input-email" name="email" placeholder="邮箱" required="">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-12">
                                <label for="input-password" class="hidden"></label>
                                <input type="password" class="form-control" id="input-password" name="pwd" placeholder="密码" min="6" required="">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-12">
                                <button type="submit" class="btn btn-primary btn-block">登陆</button>
                            </div>
                        </div>
                        <div class="form-group" style="margin-bottom: 0;">
                            <div class="col-md-12">
                                <p class="help-block text-center" style="margin-bottom: 0;"><a href="http://www.yucezhe.com/forget-password">忘记密码?</a></p>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="p4 text-center">
                    <a href="/web/reg"><i class="fa fa-plus-square"></i> 没有账号？注册一个</a>
                </div>
            </div>
</body>
</html>