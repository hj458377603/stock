<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <link rel="shortcut icon" href="http://www.yucezhe.com/img/favicon-32.png">
    <title></title>
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
    <div id="god-blur-layer">
        <div class="container" style="position: absolute; top: 0; left: 0; right: 0;">
            <div class="navbar navbar-default" role="navigation" style="z-index: 1; margin-top: 10px; background: rgba(255, 255, 255, .9);">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">信息聚合</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="javascript:void(0)" style="padding: 8px;"><img style="max-width: 32px; max-height: 32px;" src="/web/static/img/icon-72x72.png" alt="预测者"></a>
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li>
                            <a class="nav-animate" href="javascript:void(0)">
                                <i class="fa fa-th-large"></i> 首页
                            </a>
                        </li>
                    </ul>
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
				                    <li><a href="/web/resetPwd"><i class="fa fa-bell"></i>修改密码</a></li>
				                    <li class="divider"></li>
				                    <li><a href="/web/logout"><i class="fa fa-sign-out"></i> 登出</a></li>
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
                </div>
            </div>
        </div>
    </div>
    <div class="container-fluid" style="background: indianred; margin-bottom: 5px; padding-top: 80px; min-height: 380px; position: relative">
        <div class="row">
            <div class="container" style="color: #f5f5f5;">
                <h3>
                    大数据选股
                    <span class="pull-right">
                        <a href="http://www.yucezhe.com/beta/public/strategy-1#purchaseCard" class="btn btn-xs wp-btn transparent">订购</a>
                    </span>
                </h3>

                <p style="color: #5b0000">每周选出三只股票</p>
            </div>
            <div class="container text-center" style="position: absolute; bottom: 0; left: 0; right: 0; min-height: 80px; color: white">
                <p class="text-left" style="margin: 0;">2015年至今收益</p>

                <p class="text-left" style="margin-bottom: 0;">
                    <span style="font-size: 72px; display: inline;" id="latest">306.42</span><span style="font-size: 30px;">%</span>
                </p>

                <div class="col-xs-12" style="padding: 10px 0; border-top: 1px solid rgba(255, 255, 255, 0.76)">
                    <div class="row">
                        <div class="col-xs-3 strategy-revenue">
                            <p class="title">
                                <small>今日</small>
                            </p>
                            <span id="day" style="display: inline;">1.78</span>%
                        </div>
                        <div class="col-xs-3 strategy-revenue" style="border-left: 1px solid rgba(255, 255, 255, 0.76)">
                            <p class="title">
                                <small>本月</small>
                            </p>
                            <span id="month" style="display: inline;">28.69</span>%
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <p class="text-center">
        <small style="color: #710000;">数据更新时间: <span class="update-time" style="display: inline;">2015-06-15 15:00</span></small>
    </p>
    <div class="container">

        <div class="row">
            <div class="card2">
                <legend style="margin: 0;"><h4 class="text-center text-muted">选股理念</h4></legend>
                <div class="p" style="padding-bottom: 0;">
                    <ol class="list-unstyled intro-detail">
                        <li>1. 每周最后一个交易日的14:45，选出三只股票，持有接来下的一周。建议在周五收盘前买入。</li>
                        <li>2. 三只股票均由大数据选股模型选出。不靠内幕，科学投资。</li>
                        <li>3. 选股模型综合考虑交易、财务数据，并从社交媒体、机构研报、财经新闻等海量舆情数据中抓取关键投资热点，在保证安全边际的情况下选择具有爆发潜力的中小盘股票。</li>
                        <li>4. 该选股模型已从2015年1月实盘测试至今，表现良好。</li>
                        <li>5. 选股类型为高收益高波动，适合有一定风险承担能力的小资金。</li>
                        <li>6. 不保证每周选股都跑赢沪深300指数，持久跟踪才能保证较高收益。详细历史选股记录及收益请见下方。</li>
                    </ol>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="card2">
                <div id="subject-statistics" style="min-width: 300px; width: 100%; margin: 0; position:relative;display: block" data-highcharts-chart="0"><div class="highcharts-container" id="highcharts-0" style="position: relative; overflow: hidden; width: 100%; height: 400px; text-align: left; line-height: normal; z-index: 0; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></div></div>
            </div>
        </div>

        <div class="row" id="purchaseCard">
            <div class="card2">
                <legend style="margin: 0;">
                    <h4 class="text-center text-muted">
                        订购最新选股
                    </h4>
                </legend>
                <div class="p">
                    <ol style="margin-bottom: 0;" class="list-unstyled">
                        <li>1. 订购后，每周五的14:45，会收到邮件、短信提醒最新选股。在本页面登录，也可查看最新选股。</li>
                        <li>2. 低价试用期，30元/月，之后待定。</li>
                        <li>3. 限时限量开放订购。</li>
                        <li>4. 没有股票类产品可以保障每周正收益。</li>
                        <li>5. 订购前请务必参考下方历史选股及收益，了解策略特性。</li>
                    </ol>
                </div>
                <p class="text-center color-gray" style="margin: 5px;">
                    最近选股时间: <span class="update-time2" style="display: inline;">6月12日</span>，
                    本周收益:
                    <span class="latest-week-change text-danger" style="font-size: 18px; font-weight: bold; display: inline;">1.78</span><span>%</span>
                </p>

                <div class="p" style="border-top: 1px solid #EEEEEE; line-height: 28px;">
                    30.0元/月<a data-target="#download-modal" data-toggle="modal" class="btn btn-sm btn-primary pull-right" data-product="206041440">立即订购</a>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="card2">
                <div class="p text-center">
                    <a href="#" data-target="#login-modal" data-toggle="modal">已订购用户点此登陆查看最新选股</a>
                </div>
            </div>
        </div>

        <h4 class="text-center text-muted" id="stickTitle">历史每周选股纪录</h4>

        <div class="row">
            <div class="col-xs-12 horizontal-scroll">
                <div class="row scroll-body">
                    <table class="table table-bordered strategy-table">
                        <thead>
                            <tr>
                                <th>选股时间</th>
                                <th>平均涨幅(%)</th>
                                <th>沪深300(%)</th>
                                <th>大盘预警</th>
                                <th>股票</th>
                            </tr>
                        </thead>
                        <tbody id="contentTable">
                        	<#if (recommendations??&&recommendations?size>0)>
                        		<#list recommendations as recommendation>
                        			<tr>
                        				<td>${recommendation.createTime?string("yyyy-MM-dd")}</td>
                        				<#if (recommendation.upsDowns<0)>
	                        				<td class="text-success">${recommendation.upsDowns}</td>
	                        			<#elseif (recommendation.upsDowns<10)>
	                        				<td class="text-danger">${recommendation.upsDowns}</td>
	                        			<#else>
	                        				<td><span class="label label-danger">${recommendation.upsDowns}</span></td>
	                        			</#if>
	                        			
	                        			<#if (recommendation.szUpsDowns<0)>
	                        				<td class="text-success">${recommendation.szUpsDowns}</td>
	                        			<#elseif (recommendation.szUpsDowns<10)>
	                        				<td class="text-danger">${recommendation.szUpsDowns}</td>
	                        			<#else>
	                        				<td><span class="label label-danger">${recommendation.szUpsDowns}</span></td>
	                        			</#if>
	                        			<td><#if recommendation.ps??><span class="label label-danger">${recommendation.ps}</span></#if></td>
	                        			<td>${recommendation.stocks}</td>
	                        		</tr>	                        		
                        		</#list>
                        	</#if>	                            
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>

    <h4 class="text-center text-muted" id="stickTitle2" style="position: fixed;top: 0;left: 0; right: 0; display: none; margin: 0; padding: 10px 0 9px 0; background: #f8f8f8; border-bottom: 1px solid #ddd;">
        历史每周选股纪录
    </h4>
    <!-- /.modal -->
    <!-- Login Modal -->
    <div class="modal fade" id="login-modal" tabindex="-1" role="dialog" aria-labelledby="login" aria-hidden="true">
        <div class="modal-dialog" style="width: 98%; max-width: 350px; margin: 3% auto;">
            <div class="clearfix card login-card drop_shadow">
                <div class="p1 text-center">
                    <h3 style="margin: 5px;">登录</h3>
                </div>
                <div class="p2">
                    <form class="form-horizontal" action="/web/home" method="post" id="login_form">
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
        </div>
        <!-- /.modal-dialog -->
    </div>
    <script type="text/javascript" src="/web/static/js/jquery-1.11.1.min.js"></script>
    <script type="text/javascript" src="/web/static/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/web/static/js/responsiveslides.min.js"></script>
    <script type="text/javascript" src="/web/static/js/base.js"></script>
    <script type="text/javascript" src="/web/static/js/zepto.min.js"></script>
    <script type="text/javascript" src="/web/static/js/highcharts.js"></script>
    <script type="text/javascript">
        $(function () {
            $('#highcharts-0').highcharts({
                chart: {
                    type: 'line'
                },
                title: {
                    text: '收益对比'
                },
                xAxis: {
                    tickInterval: 60,
                    categories: [
	                    <#if (recommendations??&&recommendations?size>0)>
	                    	<#assign i=0>
		            		<#list recommendations as recommendation>
		            			<#assign i=i+1>
		            			<#if i == recommendation?size>
		            				'${recommendation.createTime?string("yyyy-MM-dd")}'
		            			<#else>
		            				'${recommendation.createTime?string("yyyy-MM-dd")}',
		            			</#if>
		            		</#list>
	            		</#if>
                    ]
                },
                yAxis: {
                    title: {
                        text: '收益指数'
                    },
                    min: 0
                },
                tooltip: {
                    formatter: function () {
                        return '<b>' + this.series.name + '</b><br>' +
                        this.x + ': ' + this.y;
                    }
                },
                plotOptions: {
                    series: {
                        marker: {
                            enabled: false, /*数据点是否显示*/
                        }
                    }
                },
                series: [{
                    name: '上证指数',
                    data: [<#if (recommendations??&&recommendations?size>0)>
	                    	<#assign i=0>
		            		<#list recommendations as recommendation>
		            			<#assign i=i+1>
		            			<#if i == recommendation?size>
		            				${recommendation.szZs}
		            			<#else>
		            				${recommendation.szZs},
		            			</#if>
		            		</#list>
	            		</#if>
                    ]
                }, {
				    name: 'MJ指数',
				    data: [<#if (recommendations??&&recommendations?size>0)>
	                    	<#assign i=0>
		            		<#list recommendations as recommendation>
		            			<#assign i=i+1>
		            			<#if i == recommendation?size>
		            				${recommendation.zs}
		            			<#else>
		            				${recommendation.zs},
		            			</#if>
		            		</#list>
	            		</#if>
				    ]
				}]
            });
        });
    </script>
    <script type="text/javascript" src="/web/static/js/home.js"></script>
</body>
</html>