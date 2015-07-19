<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="author" content="苏州凯安投资管理有限公司">
    <link rel="shortcut icon" href="http://www.yucezhe.com/img/favicon-32.png">

    <title>大数据选股｜预测者网</title>

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
    <div class="non-func-wrapper" style="padding-bottom: 50px; background: #f0e0cf;">
        <div class="container">
            <div class="text-center login-logo" style="background: none">
                <h1><a href="http://www.yucezhe.com/dashboard"><img src="/web/static/img/icon-72x72.png" alt="预测者"></a></h1>
            </div>
            <div class="card register-card" style="max-width: 480px; margin: 5px auto">
                <div class="p0 text-center">
                    <h3 class="register-card-head">注册预测者网</h3>
                </div>
                <div class="p2">
                    <form class="form-horizontal" action="/web/account/reg" method="post" autocomplete="off">
					     <div class="text-center">
                            <p class="text-danger">${msg}</p>
                        </div>
					     <div class="form-group">
                            <label class="control-label col-sm-2" for="inputEmail">邮箱</label>
                            <div class=" col-sm-8">
                                <input class="form-control require-validate" type="email" id="inputEmail" name="email" placeholder="您的电子邮箱" required="" autocomplete="off" data-url="/web/account/isEmailExsit">
                                <small class="text-info">此邮箱将用作登陆邮箱，并用来接收下载数据邮件</small>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-xs-12 col-sm-2" for="inputPassword">密码</label><div class="col-xs-12 col-sm-8">
                                <input class="form-control require-validate" type="password" id="inputPassword" placeholder="不少于6位" name="pwd" required="" autocomplete="off">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-push-2 col-sm-10">
                                <button type="submit" class="btn btn-primary disabled" id="register_submit">立即注册</button>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="p4 text-center">
                    <a href="/web/account/login" class="btn btn-info" style="margin-bottom: 3px;">已经注册？点此登陆！</a>
                </div>
            </div>
            <div></div>
        </div>
    </div>
    <div class="container footer">
        <div class="col-sm-12">
            <p class="text-center">
                <a href="http://www.yucezhe.com/about#about-us">
                    <i class="fa fa-info-circle"></i> 关于我们
                </a>&nbsp;|&nbsp;
                <a id="contact-us" title="contact@yucezhe.com" href="http://www.yucezhe.com/about#contact-us">
                    <i class="fa fa-phone-square"></i> 联系我们
                </a>&nbsp;|&nbsp;
                <a href="http://www.yucezhe.com/about#help"><i class="fa fa-question-circle"></i> 常见问题</a>&nbsp;|&nbsp;
                <a>苏ICP备11025592号-2</a>
                <br>
                <em>Copyright © 2011-2015 yucezhe.com, All rights reserved.</em>
            </p>
        </div> 
     </div> 
    <script type="text/javascript" src="/web/static/js/jquery-1.11.1.min.js"></script>
    <script type="text/javascript" src="/web/static/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/web/static/js/responsiveslides.min.js"></script>
    <script type="text/javascript" src="/web/static/js/base.js"></script>
</body>
</html>