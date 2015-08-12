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
                    categories: ['2015-01-01', '2015-01-07', '2015-01-09', '2015-01-12', '2015-01-13', '2015-01-14', '2015-01-15', '2015-01-16', '2015-01-19', '2015-01-20', '2015-01-21', '2015-01-22', '2015-01-23', '2015-01-26', '2015-01-27', '2015-01-28', '2015-01-30', '2015-02-04', '2015-02-11', '2015-02-12', '2015-02-16', '2015-02-17', '2015-03-03', '2015-03-04', '2015-03-05', '2015-03-06', '2015-03-10', '2015-03-11', '2015-03-12', '2015-03-13', '2015-03-16', '2015-03-17', '2015-03-18', '2015-03-19', '2015-03-20', '2015-03-23', '2015-03-24', '2015-03-25', '2015-03-26', '2015-03-27', '2015-03-30', '2015-03-31', '2015-04-01', '2015-04-02', '2015-04-03', '2015-04-07', '2015-04-09', '2015-04-10', '2015-04-13', '2015-04-14', '2015-04-15', '2015-04-16', '2015-04-17', '2015-04-20', '2015-04-21', '2015-04-22', '2015-04-23', '2015-04-24', '2015-04-27', '2015-04-28', '2015-04-29', '2015-04-30', '2015-05-01', '2015-05-04', '2015-05-06', '2015-05-07', '2015-05-08', '2015-05-11', '2015-05-12', '2015-05-13', '2015-05-14', '2015-05-15', '2015-05-18', '2015-05-19', '2015-05-20', '2015-05-21', '2015-05-22', '2015-05-25', '2015-05-26', '2015-05-27', '2015-05-28', '2015-05-29', '2015-06-01', '2015-06-02', '2015-06-03', '2015-06-04', '2015-06-05', '2015-06-08', '2015-06-09']
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
                    data: [1, 1.04327581942, 1.01589734075, 0.998551638837, 1.00040228819, 0.996424551639, 1.03168058132, 1.0440615337, 0.963621212121, 0.981153988868, 1.02770902907, 1.03381076067, 1.03641434756, 1.0461292517, 1.03678416821, 1.02218243661, 0.99269109462, 0.981486085343, 0.976408163265, 0.981266542981, 0.996401669759, 1.00399072356, 1.00898330241, 1.01407946815, 1.00447619048, 1.00222232529, 1.01610018553, 1.01759431045, 1.03565955473, 1.0429533086, 1.06657544836, 1.0831314162, 1.10615367965, 1.10769047619, 1.1185275201, 1.14029931973, 1.14143784787, 1.13195021645, 1.13855751391, 1.14134075448, 1.17086209029, 1.15890507112, 1.17819851577, 1.18298824985, 1.19478324057, 1.22491589363, 1.22372727273, 1.24746753247, 1.27449443414, 1.27877705628, 1.26288280767, 1.29710049474, 1.32569449598, 1.30398175634, 1.32765089672, 1.36007854051, 1.36503030303, 1.35859183673, 1.39993692022, 1.38411100804, 1.38423623995, 1.37342455164, 1.37342455164, 1.38542486085, 1.30775077304, 1.27155658627, 1.30053092146, 1.34000742115, 1.36092115028, 1.35304885591, 1.35383766234, 1.33231014224, 1.32451793445, 1.36597155226, 1.37485714286, 1.40056338899, 1.44019666048, 1.48849659864, 1.51852102659, 1.52805009276, 1.42865367965, 1.42601855288, 1.49311626469, 1.51840661719, 1.51823685838, 1.529716141, 1.55321459493, 1.58685250464, 1.5811792517]
                },
				{
				    name: '沪深300',
				    data: [1, 1.03115139612, 1.00368253196, 0.994302305509, 0.994433612266, 0.991146132535, 1.01992551737, 1.0287052418, 0.949470952625, 0.961092449578, 1.00429435353, 1.0095941659, 1.01075979636, 1.02101898571, 1.01166507721, 0.997626573771, 0.97189356229, 0.96266190491, 0.971818287296, 0.974294438423, 0.990314145756, 0.996777324681, 0.992696061646, 0.999182728634, 0.989425844226, 0.984381853633, 0.996293131015, 0.997436971342, 1.0167342538, 1.02375605242, 1.04866301989, 1.0632230715, 1.08839010558, 1.08660274895, 1.10155445693, 1.12404837975, 1.12432712362, 1.11509207037, 1.11780508304, 1.12394537186, 1.15690817866, 1.14644495445, 1.16701568606, 1.16726499911, 1.18021512801, 1.20554431462, 1.20613689295, 1.22942063723, 1.25111370203, 1.25595592168, 1.23963568035, 1.27728251611, 1.30065455286, 1.2796519805, 1.30717121665, 1.34131380334, 1.34161886516, 1.33079426439, 1.36049421147, 1.34189308121, 1.35108030936, 1.34416406553, 1.34416406553, 1.35487660278, 1.28854008959, 1.26498467616, 1.28997682323, 1.32736755421, 1.34346649838, 1.33526407091, 1.33026705644, 1.3066918338, 1.29471292211, 1.33888236443, 1.34558834766, 1.36994150624, 1.40117185621, 1.44309946204, 1.47123504758, 1.46628727315, 1.36796935798, 1.3698999069, 1.4365012975, 1.46075088222, 1.45557784878, 1.46628217935, 1.48018711213, 1.51505103701, 1.50478137708]
				}, {
				    name: '中证500',
				    data: [1, 1.03109919571, 1.01622256332, 1.00178687173, 1.01547726628, 1.01071409113, 1.02373377471, 1.03708881378, 0.99233191363, 1.02814430995, 1.05429264416, 1.06903363136, 1.05834978798, 1.08196369894, 1.08475118877, 1.07838281627, 1.05824439055, 1.06778671015, 1.05994615525, 1.0673775201, 1.10276776304, 1.11054293771, 1.14953773548, 1.16677801346, 1.1665087897, 1.15223748805, 1.17918973606, 1.17663596176, 1.17611836827, 1.18916416637, 1.22433215411, 1.24336174618, 1.26403054083, 1.27424995914, 1.28710694364, 1.31834234816, 1.3237848765, 1.33857978361, 1.32910434722, 1.34441759931, 1.36124211163, 1.36267127084, 1.3951038099, 1.42045086056, 1.44268802922, 1.4773083636, 1.45530209236, 1.4940113213, 1.52608220249, 1.52553097952, 1.46593502182, 1.48647737713, 1.4993790757, 1.47291530066, 1.52416475818, 1.56375737171, 1.58015428231, 1.58173092278, 1.59937625758, 1.55305906202, 1.58345166278, 1.59123322518, 1.59123322518, 1.59889999643, 1.51858714828, 1.48485978007, 1.54081154149, 1.60786854816, 1.64308744981, 1.65797666978, 1.65580935275, 1.64256271711, 1.67275598332, 1.71432090044, 1.74297134354, 1.80720403704, 1.83706626887, 1.88627409722, 1.9489282715, 1.97217958521, 1.85402248103, 1.87251324983, 1.97048308099, 2.04527393001, 2.06285707844, 2.06011787229, 2.09376802418, 2.07242551257, 2.06919717587]
				}, {
				    name: '中证全指',
				    data: [1, 1.02912870348, 1.00902085802, 0.997720549893, 1.00419293671, 1.00039251007, 1.02030978905, 1.03096729083, 0.972291775302, 0.994778620526, 1.02920597298, 1.03935956388, 1.03546409102, 1.05140270206, 1.04896776487, 1.03892296753, 1.01631761081, 1.01705664849, 1.01935956388, 1.02478241289, 1.05157857312, 1.05909054278, 1.07548423797, 1.08791230149, 1.08456719602, 1.07500711069, 1.09614766532, 1.09640388718, 1.10495638777, 1.11658023228, 1.14757193648, 1.16346172079, 1.18796894999, 1.19162100024, 1.20643778146, 1.23462692581, 1.2399670538, 1.24236003792, 1.23554681204, 1.24587603698, 1.2681948329, 1.26463356246, 1.29134036502, 1.30580990756, 1.32518061152, 1.3537608438, 1.3416072529, 1.37170182508, 1.39884996445, 1.40221308367, 1.36641692344, 1.39493363356, 1.41221711306, 1.38728584973, 1.42768902584, 1.46670063996, 1.47536430434, 1.47076605831, 1.49346409102, 1.46192462669, 1.48319341076, 1.48343375207, 1.48343375207, 1.49503934582, 1.42882697322, 1.40143967765, 1.44458781702, 1.49895970609, 1.52653993837, 1.52896776487, 1.52967575255, 1.51323014932, 1.52525882911, 1.56998933397, 1.59177814648, 1.63635008296, 1.66544963261, 1.70724105238, 1.75632282531, 1.76613960654, 1.65764446551, 1.67037544442, 1.75455747808, 1.80706778858, 1.81156956625, 1.81446409102, 1.83654278265, 1.83828916805, 1.83254911116]
				}, {
				    name: '深证100',
				    data: [1, 1.04580615385, 1.02311776224, 1.02017958042, 1.02655636364, 1.01756755245, 1.03650013986, 1.04452839161, 0.982396363636, 1.0059586014, 1.03964559441, 1.05100111888, 1.04546433566, 1.06711020979, 1.0601627972, 1.04444783217, 1.02542517483, 1.02491748252, 1.0345365035, 1.03836195804, 1.07134657343, 1.07965874126, 1.08029594406, 1.09465818182, 1.08871692308, 1.07164335664, 1.0920979021, 1.08669706294, 1.09330153846, 1.10237594406, 1.1320593007, 1.14437090909, 1.17036755245, 1.16702461538, 1.17769006993, 1.20207776224, 1.20906265734, 1.20658965035, 1.19695888112, 1.2106165035, 1.2365586014, 1.2352827972, 1.26060867133, 1.26833958042, 1.28046993007, 1.30407440559, 1.28965538462, 1.3147213986, 1.3292248951, 1.32427048951, 1.2865765035, 1.31314909091, 1.32747440559, 1.30300559441, 1.35482377622, 1.3884441958, 1.40019888112, 1.39376587413, 1.40718433566, 1.38195888112, 1.40156671329, 1.39549594406, 1.39549594406, 1.4051627972, 1.34302853147, 1.33090153846, 1.36835916084, 1.41805370629, 1.43518993007, 1.44253846154, 1.43462993007, 1.40870657343, 1.41310181818, 1.45645118881, 1.46836727273, 1.51546517483, 1.53880335664, 1.57248923077, 1.61609958042, 1.61486685315, 1.51126825175, 1.52268307692, 1.59414545455, 1.63054685315, 1.63063188811, 1.62352783217, 1.64014965035, 1.64493706294, 1.63825818182]
				}, {
				    name: 'MJ指数',
				    data: [1, 0.971106314085, 1.02037610741, 1.08243643459, 1.05620448502, 1.05017554099, 1.17151335212, 1.26938061, 1.2936971382, 1.39350213961, 1.38475582194, 1.45479758646, 1.41491943752, 1.47591887317, 1.45936168279, 1.39930438904, 1.35868364229, 1.38063286134, 1.36289396157, 1.42759118487, 1.41860604212, 1.53180174189, 1.52655780955, 1.54096800872, 1.54076837914, 1.52742723097, 1.53229110759, 1.44239003723, 1.370417169, 1.38555951653, 1.43412468495, 1.43618429311, 1.45455849148, 1.42756231056, 1.46285375961, 1.4926266661, 1.50902345078, 1.56122225378, 1.54714985163, 1.49477759707, 1.47431632484, 1.53356319987, 1.57815536827, 1.66217389188, 1.81362187819, 1.91580037636, 1.95679142212, 2.03687338793, 2.10803356988, 2.1375255586, 2.04702534076, 2.14516367594, 2.3283228096, 2.43654777281, 2.51707953141, 2.59059127141, 2.62478170369, 2.65474350469, 2.62718226477, 2.50573389345, 2.53935718474, 2.57132550367, 2.57132550367, 2.62857068793, 2.51813758407, 2.46184584265, 2.55624619891, 2.65279091341, 2.6538817239, 2.73053297355, 2.73612224735, 2.77875559811, 2.80573252502, 2.86224564909, 2.93544527738, 3.00585802059, 2.91789688525, 2.99569046851, 3.1434211791, 3.14464668976, 2.94765320648, 2.98200924879, 3.11445711762, 3.16118159122, 3.19837728177, 3.25724846356, 3.28474792835, 3.27567550036, 3.26209343852]
				}]
            });
        });
    </script>
    <script type="text/javascript" src="/web/static/js/home.js"></script>
</body>
</html>