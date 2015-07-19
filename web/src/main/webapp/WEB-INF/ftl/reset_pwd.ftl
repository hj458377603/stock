<!DOCTYPE html>
<html lang="zh-CN">
<link rel="stylesheet" type="text/css" href="/web/static/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="/web/static/css/datetimepicker.css">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="baidu-site-verification" content="82BCq1fYkY">
    <meta name="description" content="预测者网汇集专业卖方分析师、知名财经人士、民间投资高手以及更多个人投资者的金融预测，并统计准确率，是一个开放的金融预测平台。通过深度挖掘全部预测数据，致力于帮助投资者实时把握市场整体舆情动态，发现真正有洞察力的预测者。">
    <meta name="author" content="苏州凯安投资管理有限公司">
    <link rel="shortcut icon" href="http://www.yucezhe.com/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" href="http://www.yucezhe.com/img/ios/apple-touch-icon.png">
    <link rel="apple-touch-icon" sizes="57x57" href="http://www.yucezhe.com/img/ios/apple-touch-icon-57x57.png">
    <link rel="apple-touch-icon" sizes="72x72" href="http://www.yucezhe.com/img/ios/apple-touch-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="76x76" href="http://www.yucezhe.com/img/ios/apple-touch-icon-76x76.png">
    <link rel="apple-touch-icon" sizes="114x114" href="http://www.yucezhe.com/img/ios/apple-touch-icon-114x114.png">
    <link rel="apple-touch-icon" sizes="120x120" href="http://www.yucezhe.com/img/ios/apple-touch-icon-120x120.png">
    <link rel="apple-touch-icon" sizes="144x144" href="http://www.yucezhe.com/img/ios/apple-touch-icon-144x144.png">
    <link rel="apple-touch-icon" sizes="152x152" href="http://www.yucezhe.com/img/ios/apple-touch-icon-152x152.png">
    <link rel="shortcut icon" href="http://www.yucezhe.com/img/favicon-32.png">
    <title>预测者网－分析师量化排名｜见证你和世界的财经预测</title>
    <!-- Bootstrap core CSS -->
    <link href="/web/static/css/bootstrap.css" type="text/css" rel="stylesheet">
    <!-- Custom styles for this template -->

    <link href="/web/static/css/wp.css" type="text/css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
    <!--[if lte IE 8]>
        <script src="/js/excanvas.compiled.js"></script>
    <![endif]-->
</head>
<body class="">

    <style type="text/css">
        body {
            padding-top: 70px !important;
        }
    </style>
    <div id="god-blur-layer">
        <div class="navbar navbar-fixed-top" id="global-nav" role="navigation" style="top: 0px; min-height: 35px; opacity: 1;">
            <div class="container">
                <div class="row">
                    <#if account??>
                        <ul class="nav navbar-nav navbar-right user-menu">
                            <li class="dropdown">
                                <a class="nav-animate" href="#" data-toggle="dropdown" style="position: relative;" title="${account.email}">
                                    <small class="badge notification-badge corner-badge hidden">
                                    </small>
                                    <p class="short" style="max-width: 120px; margin: 0;">
                                        <small>${account.email}</small>
                                    </p>
                                </a>
                                <ul class="dropdown-menu" role="menu">
                                    <li><a href="/web/account/logout"><i class="fa fa-sign-out"></i> 登出</a></li>
                                </ul>
                            </li>
                        </ul>
                        <#else>
                            <ul class="nav navbar-nav navbar-right user-menu">
                                <li>
                                    <a class="nav-animate" data-toggle="modal" href="http://www.yucezhe.com/beta/public/strategy-1#login-modal">
                                        <small>登录&nbsp;注册</small>
                                    </a>
                                </li>
                            </ul>
                    </#if>
                    </li>
                    <li class="visible-xs">
                        <a href="http://www.yucezhe.com/reset-password#notification-widget" data-toggle="modal" class="nav-animate disabled">
                            jikc
                            <span class="badge notification-badge hidden" style="display: none;">0</span>
                        </a>
                    </li>

                    </ul>
                    <div class="navbar-header text-center">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse" style="float: left; margin-left: 6px;">
                            <span class="sr-only">信息聚合</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="/web/account/home" style="padding: 8px; margin: auto; width: 48px; display: block; float: none;"><img style="max-width: 32px; max-height: 32px;" src="/web/static/img/icon-72x72.png" alt="预测者"></a>
                    </div>
                    <div class="navbar-collapse collapse">
                        <ul class="nav navbar-nav">
                            <li><a class="nav-animate" href="/web/account/home"> 首页</a></li>
                        </ul>
                    </div>
                    <!--/.nav-collapse -->
                </div>
            </div>
        </div>
        <div id="top-frame-toggle" style="display: none;">
            <h3 style="text-align: center; color: #d8d8d8; text-shadow: -1px -1px 1px #fff;">预测者网</h3>
        </div>
        <div id="top-frame">
            <div class="panel drop_shadow" style="max-width: 500px; margin: auto; box-shadow: 0 1px 8px rgba(153, 153, 153, 0.5)">
                <div class="panel-heading">
                    更改密码 <a href="http://www.yucezhe.com/forget-password" class="pull-right">
                        <small>找回密码</small>
                    </a>
                </div>
                <div class="panel-body">
                    <form class="form-horizontal" action="/web/account/resetPwd" id="reset-password-form" method="POST">
                        <div class="form-group">
                            <div class="col-md-12">
                                <label for="password0" class="hidden"></label>
                                <input type="password" class="form-control" name="oldPwd" id="password0" placeholder="请输入原密码">
                            </div>
                        </div>
                        <#if msg?? && msg=="原密码不正确">
                        	<p class="text-center text-danger"><i class="fa fa-warning"></i> 您的原密码不正确</p>
                        </#if>
                        <div class="form-group">
                            <div class="col-md-12">
                                <label for="password" class="hidden"></label>
                                <input type="password" class="form-control" name="newPwd" id="password" placeholder="请输入新的密码">
                            </div>
                        </div>
                        <div class="form-group" style="margin-bottom: 0;">
                            <div class="col-md-12">
                                <label for="password2" class="hidden"></label>
                                <input type="password" class="form-control" name="newPwd2" id="password2" placeholder="请再次输入新的密码">
                            </div>
                        </div>
                        <#if msg?? && msg=="密码重置失败">
                        	<p class="text-center text-danger"><i class="fa fa-warning"></i> 密码重置失败</p>
                        </#if>
                    </form>
                </div>
                <div class="panel-footer text-right">
                    <button type="submit" class="btn btn-primary" id="reset-password">确定更改</button>
                </div>

            </div>
            <style>
                .footer {
                    padding: 20px 0;
                    width: 100%;
                    color: #666;
                }
                    .footer a, .footer p {
                        font-size: 12px;
                        cursor: pointer;
                        color: #999;
                    }

                    .footer a {
                        text-decoration: none;
                    }
            </style>
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

        </div>
    </div>

    <!-- Post Card Modal -->
    <div class="modal fade" id="post-card-modal" tabindex="-1" role="dialog" aria-labelledby="login" aria-hidden="true">
        <div class="modal-dialog" style="max-width: 750px;margin: 20px auto; width: 98%;">
            <div class="card post-card">
                <div class="p0 clearfix">
                    <div class="col-sm-2 hidden-xs">
                        <div class="row text-center">
                            <a class="avatar" href="http://www.yucezhe.com/u/13796/home"><img src="/web/static/img/icon-72x72.png" alt="avatar" class="img-circle"></a>
                        </div>
                    </div>
                </div>
            </div>
            <p class="text-center">
                <small class="help-block">涨跌幅会根据评级预测时间长短自动变化</small>
            </p>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>
    <!-- /.modal -->
    <div id="sys-msg" aria-hidden="true">
	    <button type="button" class="close" aria-hidden="true"><i class="fa fa-times-circle"></i></button>
	    <span id="sys-msg-body"></span>
	</div>
    <!-- Login Modal -->
    <div class="modal fade" id="login-modal" tabindex="-1" role="dialog" aria-labelledby="login" aria-hidden="true">
        <div class="modal-dialog" style="width: 98%; max-width: 350px; margin: 3% auto;">
            <div class="clearfix card login-card drop_shadow">
                <div class="p1 text-center">
                    <h3 style="margin: 5px;">登录</h3>
                </div>
                <div class="p2">
                    <form class="form-horizontal" action="http://www.yucezhe.com/login" method="post" id="login_form">
                        <div class="text-center">
                            <p class="text-danger"></p>
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
                                <input type="password" class="form-control" id="input-password" name="password" placeholder="密码" min="6" required="">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-12">
                                <button type="submit" class="btn btn-primary btn-block">登陆</button>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="p4 text-center">
                    <a href="http://www.yucezhe.com/register"><i class="fa fa-plus-square"></i> 没有账号？注册一个</a>
                </div>
            </div>
        </div>
        <!-- /.modal-dialog -->
    </div>
    <!-- /.modal -->
    <div id="sys-msg" aria-hidden="true">
        <button type="button" class="close" aria-hidden="true"><i class="fa fa-times-circle"></i></button>
        <span id="sys-msg-body"></span>
    </div>
    <!-- /container -->
    <div style="position: fixed; right: 5px; bottom: 5px; z-index: 2000">
        <a href="http://www.yucezhe.com/reset-password#feedback-modal" data-toggle="modal" class="btn btn-xs btn-primary">反馈意见</a>
    </div>
    <!-- Core JavaScript
    ================================================== -->
    <!-- Faster at end -->
    <script type="text/javascript">
        // fix the IE 8&9 init error
        if ((typeof Range !== "undefined") && !Range.prototype.createContextualFragment) {
            Range.prototype.createContextualFragment = function (html) {
                var frag = document.createDocumentFragment(),
                        div = document.createElement_x("div");
                frag.appendChild(div);
                div.outerHTML = html;
                return frag;
            };
        }

        function addEvent(obj, type, fn) {
            if (obj.attachEvent) {
                obj['e' + type + fn] = fn;
                obj[type + fn] = function () { obj['e' + type + fn](window.event); }
                obj.attachEvent('on' + type, obj[type + fn]);
            } else
                obj.addEventListener(type, fn, false);
        }

        function removeEvent(obj, type, fn) {
            if (obj.detachEvent) {
                obj.detachEvent('on' + type, obj[type + fn]);
                obj[type + fn] = null;
            } else
                obj.removeEventListener(type, fn, false);
        }

        var cb = function () {
            var l = document.createElement('link');
            l.rel = 'stylesheet';
            l.type = "text/css";
            l.href = '/web/static/css/font-awesome.min.css';
            var l2 = document.createElement('link');
            l2.rel = 'stylesheet';
            l2.type = "text/css";
            l2.href = '/web/static/css/datetimepicker.css';
            var h = document.getElementsByTagName('head')[0];
            h.parentNode.insertBefore(l, h);
            h.parentNode.insertBefore(l2, h);
        };
        var raf = window.requestAnimationFrame || window.mozRequestAnimationFrame ||
                window.webkitRequestAnimationFrame || window.msRequestAnimationFrame;
        if (raf) raf(cb);
        else addEvent(window, 'load', cb);
    </script>
    <script src="/web/static/js/jquery-1.11.1.min.js"></script>
    <script src="/web/static/js/bootstrap.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="/web/static/js/responsiveslides.min.js"></script>
    <script type="text/javascript" src="/web/static/js/base.js"></script>
    <script type="text/javascript" src="/web/static/js/alertBox.js"></script>
    <script type="text/javascript">
        $('#reset-password').on(
                'click', function () {
                    $('#reset-password-form').submit()
                }
        );
        $('#reset-password-form').on('submit', function () {
            var pwd = $('#password').val();
            var pwd2 = $('#password2').val();

            if (pwd.length < 6 || pwd2.length < 6) {
                AlertBox({
		            type:'mini',
		            msg:'密码长度至少6位'
		        });
                return false
            }
            var rtn = pwd == pwd2;
            if (!rtn) {
            	AlertBox({
		            type:'mini',
		            msg:'两个密码不一致'
		        });
            } else {
                
            }
            return rtn;
        })
    </script>
</body>
</html>