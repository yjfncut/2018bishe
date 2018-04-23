<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html>
<head>
    <title>轨迹分类系统</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Ultra Modern Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
    <!-- Custom CSS -->
    <link href="css/style.css" rel='stylesheet' type='text/css' />
    <!-- font CSS -->
    <!-- font-awesome icons -->
    <link href="css/font-awesome.css" rel="stylesheet">
    <!-- //font-awesome icons -->
    <!--skycons-icons-->
    <script src="js/skycons.js"></script>
    <!--//skycons-icons-->

    <!-- js-->
    <script src="js/bootstrap.js"></script>
    <script src="js/jquery-1.11.1.min.js"></script>
    <script src="js/modernizr.custom.js"></script>
    <!--webfonts-->
    <link href='https://fonts.googleapis.com/css?family=Comfortaa:400,700,300' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Muli:400,300,300italic,400italic' rel='stylesheet' type='text/css'>
    <!--//webfonts-->
    <!-- Metis Menu -->
    <script src="js/metisMenu.min.js"></script>
    <script src="js/custom.js"></script>
    <link href="css/custom.css" rel="stylesheet">
    <!--//Metis Menu -->
    <link href="css/jquerysctipttop.css" rel="stylesheet" type="text/css">
    <script src="js/jquery.sparkline.min.js"></script>
    <script type="text/javascript">
        /* <![CDATA[ */
        $(function() {
            /** This code runs when everything has been loaded on the page */
            /* Inline sparklines take their values from the contents of the tag */
            $('.inlinesparkline').sparkline();

            /* Sparklines can also take their values from the first argument passed to the sparkline() function */
            var myvalues = [10,8,5,7,4,4,1];
            $('.dynamicsparkline').sparkline(myvalues);

            /* The second argument gives options such as specifying you want a bar chart11 */
            $('.dynamicbar').sparkline(myvalues, {type: 'bar', barColor: '#fff'} );

            /* Use 'html' instead of an array of values to pass options to a sparkline with data in the tag */
            $('.inlinebar').sparkline('html', {type: 'bar', barColor: '#fff'} );

        });
        /* ]]> */
    </script>
    <script src="js/Chart.js"></script>

    <!--pie-chart--->
    <script src="js/pie-chart.js" type="text/javascript"></script>
    <script type="text/javascript">

        $(document).ready(function () {
            $('#demo-pie-1').pieChart({
                barColor: '#68b828',
                trackColor: '#eee',
                lineCap: 'round',
                lineWidth: 10,
                onStep: function (from, to, percent) {
                    $(this.element).find('.pie-value').text(Math.round(percent) + '%');
                }
            });

            $('#demo-pie-2').pieChart({
                barColor: '#7c38bc',
                trackColor: '#eee',
                lineCap: 'butt',
                lineWidth: 10,
                onStep: function (from, to, percent) {
                    $(this.element).find('.pie-value').text(Math.round(percent) + '%');
                }
            });

            $('#demo-pie-3').pieChart({
                barColor: '#0e62c7',
                trackColor: '#eee',
                lineCap: 'square',
                lineWidth: 10,
                onStep: function (from, to, percent) {
                    $(this.element).find('.pie-value').text(Math.round(percent) + '%');
                }
            });


        });

    </script>
    <!--Calender-->
    <link rel="stylesheet" href="css/clndr.css" type="text/css" />
    <script src="js/underscore-min.js" type="text/javascript"></script>
    <script src= "js/moment-2.2.1.js" type="text/javascript"></script>
    <script src="js/clndr.js" type="text/javascript"></script>
    <script src="js/site.js" type="text/javascript"></script>
    <!--End Calender-->
</head>
<body class="cbp-spmenu-push">
<div class="main-content">
    <!--left-fixed -navigation-->
    <div class="sidebar" role="navigation">
        <div class="navbar-collapse">
            <nav class="cbp-spmenu cbp-spmenu-vertical cbp-spmenu-right dev-page-sidebar mCustomScrollbar _mCS_1 mCS-autoHide mCS_no_scrollbar" id="cbp-spmenu-s1">
                <div class="scrollbar scrollbar1">
                    <ul class="nav" id="side-menu">
                        <li>
                            <a href="index.html" class="active"><i class="fa fa-home nav_icon"></i>首页</a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-cogs nav_icon"></i>数据集介绍 <span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level collapse">
                                <li>
                                    <a href="${ctx}/gallery">数据集介绍</a>
                                </li>
                                <li>
                                    <a href="${ctx}/example">初始数据格式</a>
                                </li>
                            </ul>
                            <!-- /nav-second-level -->
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-book nav_icon"></i>轨迹数据 <span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level collapse">
                                <li>
                                    <a href="${ctx}/datatable">数据列表</a>
                                </li>
                            </ul>
                            <!-- /nav-second-level -->
                        </li>
                        <li>
                            <a href="widgets.html"><i class="fa fa-book nav_icon"></i>轨迹分类</a>
                            <ul class="nav nav-second-level collapse">
                                <li>
                                    <a href="${ctx}/dataclass">分类实验</a>
                                </li>
                                <li>
                                    <a href="${ctx}/classresult">分类结果</a>
                                </li>
                                <li>
                                    <a href="${ctx}/traffic">出行习惯分析</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
                <!-- //sidebar-collapse -->
            </nav>
        </div>
    </div>
    <!--left-fixed -navigation-->
    <!-- header-starts -->
    <div class="sticky-header header-section ">
        <div class="header-left">
            <!--logo -->
            <div class="logo">
                <a href="index.html"><h1>轨迹分类系统</h1></a>
            </div>
            <!--//logo-->
            <div class="user-right">
                <div class="profile_details_left"><!--notifications of menu start -->
                    <div class="profile_details">
                        <ul>
                            <li class="dropdown profile_details_drop">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                                    <div class="profile_img">
                                        <span class="prfil-img"><img src="images/a.png" alt=""> </span>
                                        <div class="clearfix"></div>
                                    </div>
                                </a>
                                <ul class="dropdown-menu drp-mnu">
                                    <li> <a href="#"><i class="fa fa-cog"></i> Settings</a> </li>
                                    <li> <a href="#"><i class="fa fa-user"></i> Profile</a> </li>
                                    <li> <a href="login.html"><i class="fa fa-sign-out"></i> Logout</a> </li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="clearfix"> </div>
        </div>
        <div class="profile_medile"><!--notifications of menu start -->
            <ul class="nofitications-dropdown">
                <li class="dropdown head-dpdn">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-envelope"></i><span class="badge">3</span></a>
                    <ul class="dropdown-menu anti-dropdown-menu">
                        <li>
                            <div class="notification_header">
                                <h3>You have 3 new messages</h3>
                            </div>
                        </li>
                        <li><a href="#">
                            <div class="user_img"><img src="images/1.png" alt=""></div>
                            <div class="notification_desc">
                                <p>Lorem ipsum dolor amet</p>
                                <p><span>1 hour ago</span></p>
                            </div>
                            <div class="clearfix"></div>
                        </a></li>
                        <li class="odd"><a href="#">
                            <div class="user_img"><img src="images/2.png" alt=""></div>
                            <div class="notification_desc">
                                <p>Lorem ipsum dolor amet </p>
                                <p><span>1 hour ago</span></p>
                            </div>
                            <div class="clearfix"></div>
                        </a></li>
                        <li><a href="#">
                            <div class="user_img"><img src="images/3.png" alt=""></div>
                            <div class="notification_desc">
                                <p>Lorem ipsum dolor amet </p>
                                <p><span>1 hour ago</span></p>
                            </div>
                            <div class="clearfix"></div>
                        </a></li>
                        <li>
                            <div class="notification_bottom">
                                <a href="#">See all messages</a>
                            </div>
                        </li>
                    </ul>
                </li>
                <li class="dropdown head-dpdn">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-bell"></i><span class="badge blue">3</span></a>
                    <ul class="dropdown-menu anti-dropdown-menu">
                        <li>
                            <div class="notification_header">
                                <h3>You have 3 new notification</h3>
                            </div>
                        </li>
                        <li><a href="#">
                            <div class="user_img"><img src="images/2.png" alt=""></div>
                            <div class="notification_desc">
                                <p>Lorem ipsum dolor amet</p>
                                <p><span>1 hour ago</span></p>
                            </div>
                            <div class="clearfix"></div>
                        </a></li>
                        <li class="odd"><a href="#">
                            <div class="user_img"><img src="images/1.png" alt=""></div>
                            <div class="notification_desc">
                                <p>Lorem ipsum dolor amet </p>
                                <p><span>1 hour ago</span></p>
                            </div>
                            <div class="clearfix"></div>
                        </a></li>
                        <li><a href="#">
                            <div class="user_img"><img src="images/3.png" alt=""></div>
                            <div class="notification_desc">
                                <p>Lorem ipsum dolor amet </p>
                                <p><span>1 hour ago</span></p>
                            </div>
                            <div class="clearfix"></div>
                        </a></li>
                        <li>
                            <div class="notification_bottom">
                                <a href="#">See all notifications</a>
                            </div>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
        <div class="header-right">
            <!--toggle button start-->
            <div class="search-box">
                <form class="input">
                    <input class="sb-search-input input__field--madoka" placeholder="Search..." type="search" id="input-31">
                </form>
            </div>
            <button id="showLeftPush"><i class="fa fa-bars"></i></button>
            <div class="clearfix"> </div>
            <!--toggle button end-->
        </div>
        <div class="clearfix"> </div>
    </div>
    <div class="copyrights">Collect from <a href="http://www.cssmoban.com/" >企业网站模板</a></div>
    <!-- //header-ends -->
    <div id="page-wrapper">
        <div class="main-page">
            <div class="four-grids">
                <div class="col-md-3 four-grid">
                    <div class="four-grid1">
                        <div class="icon">
                            <i class="glyphicon glyphicon-user" aria-hidden="true"></i>
                        </div>
                        <div class="four-text">
                            <h3>用户</h3>
                            <h4> 182  </h4>
                            <p> <span class="inlinebar">1,3,4,5,3,5</span> </p>
                        </div>
                        <a href="#" data-toggle="modal" data-target="#myModal1">More Info</a>
                    </div>
                </div>
                <div class="col-md-3 four-grid">
                    <div class="four-grid2">
                        <div class="icon">
                            <i class="glyphicon glyphicon-align-justify " aria-hidden="true"></i>
                        </div>
                        <div class="four-text">
                            <h3>轨迹数</h3>
                            <h4>17621</h4>
                            <p><span class="dynamicbar">Loading..</span></p>
                        </div>
                        <a href="#" data-toggle="modal" data-target="#myModal1">More Info</a>
                    </div>
                </div>
                <div class="col-md-3 four-grid">
                    <div class="four-grid3">
                        <div class="icon">
                            <i class="glyphicon glyphicon-bell" aria-hidden="true"></i>
                        </div>
                        <div class="four-text">
                            <h3>总时长(小时)</h3>
                            <h4>50176</h4>
                            <p> <span class="inlinebar">1,3,4,5,3,5</span> </p>
                        </div>
                        <a href="#" data-toggle="modal" data-target="#myModal1">More Info</a>
                    </div>
                </div>
                <div class="col-md-3 four-grid">
                    <div class="four-grid4">
                        <div class="icon">
                            <i class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></i>
                        </div>
                        <div class="four-text">
                            <h3>总长度(千米)</h3>
                            <h4>1,292,951</h4>
                            <p><span class="dynamicbar">Loading..</span></p>
                        </div>
                        <a href="#" data-toggle="modal" data-target="#myModal1">More Info</a>
                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
            <%--<div class="play-grid">--%>
                <%--<script src="js/amcharts.js" type="text/javascript"></script>--%>
                <%--<script src="js/serial.js" type="text/javascript"></script>--%>
                <%--<script src="js/amstock.js" type="text/javascript"></script>--%>

                <%--<script>--%>
                    <%--AmCharts.ready(function () {--%>
                        <%--generateChartData();--%>
                        <%--createStockChart();--%>
                    <%--});--%>

                    <%--var chart;--%>
                    <%--var chartData = [];--%>
                    <%--var newPanel;--%>
                    <%--var stockPanel;--%>

                    <%--function generateChartData() {--%>
                        <%--var firstDate = new Date();--%>
                        <%--firstDate.setHours(0, 0, 0, 0);--%>
                        <%--firstDate.setDate(firstDate.getDate() - 2000);--%>

                        <%--for (var i = 0; i < 2000; i++) {--%>
                            <%--var newDate = new Date(firstDate);--%>

                            <%--newDate.setDate(newDate.getDate() + i);--%>

                            <%--var open = Math.round(Math.random() * (30) + 100);--%>
                            <%--var close = open + Math.round(Math.random() * (15) - Math.random() * 10);--%>

                            <%--var low;--%>
                            <%--if (open < close) {--%>
                                <%--low = open - Math.round(Math.random() * 5);--%>
                            <%--} else {--%>
                                <%--low = close - Math.round(Math.random() * 5);--%>
                            <%--}--%>

                            <%--var high;--%>
                            <%--if (open < close) {--%>
                                <%--high = close + Math.round(Math.random() * 5);--%>
                            <%--} else {--%>
                                <%--high = open + Math.round(Math.random() * 5);--%>
                            <%--}--%>

                            <%--var volume = Math.round(Math.random() * (1000 + i)) + 100 + i;--%>


                            <%--chartData[i] = ({--%>
                                <%--date: newDate,--%>
                                <%--open: open,--%>
                                <%--close: close,--%>
                                <%--high: high,--%>
                                <%--low: low,--%>
                                <%--volume: volume--%>
                            <%--});--%>
                        <%--}--%>
                    <%--}--%>

                    <%--function createStockChart() {--%>
                        <%--chart = new AmCharts.AmStockChart();--%>

                        <%--chart.balloon.horizontalPadding = 13;--%>

                        <%--// DATASET //////////////////////////////////////////--%>
                        <%--var dataSet = new AmCharts.DataSet();--%>
                        <%--dataSet.fieldMappings = [{--%>
                            <%--fromField: "open",--%>
                            <%--toField: "open"--%>
                        <%--}, {--%>
                            <%--fromField: "close",--%>
                            <%--toField: "close"--%>
                        <%--}, {--%>
                            <%--fromField: "high",--%>
                            <%--toField: "high"--%>
                        <%--}, {--%>
                            <%--fromField: "low",--%>
                            <%--toField: "low"--%>
                        <%--}, {--%>
                            <%--fromField: "volume",--%>
                            <%--toField: "volume"--%>
                        <%--}, {--%>
                            <%--fromField: "value",--%>
                            <%--toField: "value"--%>
                        <%--}];--%>
                        <%--dataSet.color = "#7f8da9";--%>
                        <%--dataSet.dataProvider = chartData;--%>
                        <%--dataSet.categoryField = "date";--%>

                        <%--chart.dataSets = [dataSet];--%>

                        <%--// PANELS ///////////////////////////////////////////--%>
                        <%--stockPanel = new AmCharts.StockPanel();--%>
                        <%--stockPanel.title = "Value";--%>

                        <%--// graph of first stock panel--%>
                        <%--var graph = new AmCharts.StockGraph();--%>
                        <%--graph.type = "candlestick";--%>
                        <%--graph.openField = "open";--%>
                        <%--graph.closeField = "close";--%>
                        <%--graph.highField = "high";--%>
                        <%--graph.lowField = "low";--%>
                        <%--graph.valueField = "close";--%>
                        <%--graph.lineColor = "#f7aa47";--%>
                        <%--graph.fillColors = "#f7aa47";--%>
                        <%--graph.negativeLineColor = "#68b828";--%>
                        <%--graph.negativeFillColors = "#68b828";--%>
                        <%--graph.fillAlphas = 1;--%>
                        <%--graph.balloonText = "open:<b>[[open]]</b><br>close:<b>[[close]]</b><br>low:<b>[[low]]</b><br>high:<b>[[high]]</b>";--%>
                        <%--graph.useDataSetColors = false;--%>
                        <%--stockPanel.addStockGraph(graph);--%>

                        <%--var stockLegend = new AmCharts.StockLegend();--%>
                        <%--stockLegend.markerType = "none";--%>
                        <%--stockLegend.markerSize = 0;--%>
                        <%--stockLegend.valueTextRegular = undefined;--%>
                        <%--stockLegend.valueWidth = 250;--%>
                        <%--stockPanel.stockLegend = stockLegend;--%>

                        <%--chart.panels = [stockPanel];--%>


                        <%--// OTHER SETTINGS ////////////////////////////////////--%>
                        <%--var sbsettings = new AmCharts.ChartScrollbarSettings();--%>
                        <%--sbsettings.graph = graph;--%>
                        <%--sbsettings.graphType = "line";--%>
                        <%--sbsettings.usePeriod = "WW";--%>
                        <%--chart.chartScrollbarSettings = sbsettings;--%>

                        <%--// Enable pan events--%>
                        <%--var panelsSettings = new AmCharts.PanelsSettings();--%>
                        <%--panelsSettings.panEventsEnabled = true;--%>
                        <%--chart.panelsSettings = panelsSettings;--%>

                        <%--// CURSOR--%>
                        <%--var cursorSettings = new AmCharts.ChartCursorSettings();--%>
                        <%--cursorSettings.valueBalloonsEnabled = true;--%>
                        <%--cursorSettings.fullWidth = true;--%>
                        <%--cursorSettings.cursorAlpha = 0.1;--%>
                        <%--chart.chartCursorSettings = cursorSettings;--%>

                        <%--// PERIOD SELECTOR ///////////////////////////////////--%>
                        <%--var periodSelector = new AmCharts.PeriodSelector();--%>
                        <%--periodSelector.position = "bottom";--%>
                        <%--periodSelector.periods = [{--%>
                            <%--period: "DD",--%>
                            <%--count: 10,--%>
                            <%--label: "10 days"--%>
                        <%--}, {--%>
                            <%--period: "MM",--%>
                            <%--selected: true,--%>
                            <%--count: 1,--%>
                            <%--label: "1 month"--%>
                        <%--}, {--%>
                            <%--period: "YYYY",--%>
                            <%--count: 1,--%>
                            <%--label: "1 year"--%>
                        <%--}, {--%>
                            <%--period: "YTD",--%>
                            <%--label: "YTD"--%>
                        <%--}, {--%>
                            <%--period: "MAX",--%>
                            <%--label: "MAX"--%>
                        <%--}];--%>
                        <%--chart.periodSelector = periodSelector;--%>


                        <%--chart.write('chartdiv');--%>
                    <%--}--%>



                    <%--function addPanel() {--%>
                        <%--newPanel = new AmCharts.StockPanel();--%>
                        <%--newPanel.allowTurningOff = true;--%>
                        <%--newPanel.title = "Volume";--%>
                        <%--newPanel.showCategoryAxis = false;--%>

                        <%--var graph = new AmCharts.StockGraph();--%>
                        <%--graph.valueField = "volume";--%>
                        <%--graph.fillAlphas = 0.15;--%>
                        <%--newPanel.addStockGraph(graph);--%>

                        <%--var legend = new AmCharts.StockLegend();--%>
                        <%--legend.markerType = "none";--%>
                        <%--legend.markerSize = 0;--%>
                        <%--newPanel.stockLegend = legend;--%>

                        <%--chart.addPanelAt(newPanel, 1);--%>
                        <%--chart.validateNow();--%>

                        <%--document.getElementById("addPanelButton").disabled = true;--%>
                        <%--document.getElementById("removePanelButton").disabled = false;--%>
                    <%--}--%>

                    <%--function removePanel() {--%>
                        <%--chart.removePanel(newPanel);--%>
                        <%--chart.validateNow();--%>

                        <%--document.getElementById("addPanelButton").disabled = false;--%>
                        <%--document.getElementById("removePanelButton").disabled = true;--%>
                    <%--}--%>

                <%--</script>--%>

                <%--<input type="button" id="addPanelButton" onclick="addPanel()" value="add panel">--%>
                <%--<input type="button" disabled="true" id="removePanelButton" onclick="removePanel()"--%>
                       <%--value="remove panel">--%>
                <%--<div id="chartdiv"></div>--%>
            <%--</div>--%>
            <div class="chat-grids">
                <div class="col-md-6 chat-grid">
                    <div class="grid-1">
                        <h3>方向变化</h3>
                        <canvas id="bar1" height="250" width="700" style="width: 500px; height: 300px;"></canvas>
                        <script>
                            var barChartData = {
                                labels : ["bike","walk","bus","car","train"],
                                datasets : [
                                    {
                                        fillColor : "#7c38bc",
                                        strokeColor : "#7c38bc",
                                        data : [0.021,0.047,0.005,0.006,0.001]
                                    }
                                ]
                            };
                            new Chart(document.getElementById("bar1").getContext("2d")).Bar(barChartData);
                        </script>
                    </div>
                </div>
                <div class="col-md-6 chat-grid1">
                    <div class="grid-1">
                        <h3>速度变化</h3>
                        <canvas id="bar2" height="300" width="700" style="width: 500px; height: 300px;"></canvas>
                        <script>
                            var barChartData = {
                                labels : ["bike","walk","bus","car","train"],
                                datasets : [
                                    {
                                        fillColor : "#FFA07A",
                                        strokeColor : "#FFA07A",
                                        data : [0.023,0.049,0.006,0.008,0.001]
                                    }
                                ]
                            };
                            new Chart(document.getElementById("bar2").getContext("2d")).Bar(barChartData);
                        </script>
                    </div>
                    <div class="clearfix"></div>
            </div>

            <div class="col-md-6 chat-grid">
                <div class="grid-1">
                    <h3>速度方差</h3>
                    <canvas id="bar3" height="250" width="700" style="width: 500px; height: 300px;"></canvas>
                    <script>
                        var barChartData = {
                            labels : ["bike","walk","bus","car","train"],
                            datasets : [
                                {
                                    fillColor : "#EEAD0E",
                                    strokeColor : "#EEAD0E",
                                    data : [0.051,0.038,0.0095,0.118,0.112]
                                }
                            ]
                        };
                        new Chart(document.getElementById("bar3").getContext("2d")).Bar(barChartData);
                    </script>
                </div>
            </div>

            <div class="col-md-6 chat-grid1">
                <div class="grid-1">
                    <h3>停顿率</h3>
                    <canvas id="bar4" height="250" width="700" style="width: 500px; height: 300px;"></canvas>
                    <script>
                        var barChartData = {
                            labels : ["bike","walk","bus","car","train"],
                            datasets : [
                                {
                                    fillColor : "#B2DFEE",
                                    strokeColor : "#B2DFEE",
                                    data : [0.0025,0.0075,0.0005,0.0006,0.0001]
                                }
                            ]
                        };
                        new Chart(document.getElementById("bar4").getContext("2d")).Bar(barChartData);
                    </script>
                </div>
                <div class="clearfix"></div>
            </div>

                <div class="col-md-6 chat-grid">
                    <div class="grid-1">
                        <h3>速度大小</h3>
                        <canvas id="bar5" height="250" width="700" style="width: 500px; height: 300px;"></canvas>
                        <script>
                            var barChartData = {
                                labels : ["bike","walk","bus","car","train"],
                                datasets : [
                                    {
                                        fillColor : "#C67171",
                                        strokeColor : "#C67171",
                                        data : [0.05,0.022,0.095,0.151,0.375]
                                    }
                                ]
                            };
                            new Chart(document.getElementById("bar5").getContext("2d")).Bar(barChartData);
                        </script>
                    </div>
                </div>

                <div class="col-md-6 chat-grid1">
                    <div class="grid-1">
                        <h3>速度排列熵</h3>
                        <canvas id="bar6" height="250" width="700" style="width: 500px; height: 300px;"></canvas>
                        <script>
                            var barChartData = {
                                labels : ["bike","walk","bus","car","train"],
                                datasets : [
                                    {
                                        fillColor : "#CAFF70",
                                        strokeColor : "#CAFF70",
                                        data : [0.86,0.87,0.8,0.78,0.97]
                                    }
                                ]
                            };
                            new Chart(document.getElementById("bar6").getContext("2d")).Bar(barChartData);
                        </script>
                    </div>
                    <div class="clearfix"></div>
                </div>
            <%--<div class="weathers-grids">--%>
                <%--<div class="col-md-6 weather-grid">--%>
                    <%--<div class="main-info">--%>
                        <%--<div class="weather-top">--%>
                            <%--<div class="weather-grids">--%>
                                <%--<h3 class="fri">Friday </h3>--%>
                                <%--<h3>Weather</h3>--%>
                            <%--</div>--%>
                            <%--<div class="weather-grids weather-mdl">--%>
                                <%--<canvas id="clear-day" width="70" height="70"></canvas>--%>
                            <%--</div>--%>
                            <%--<div class="weather-grids">--%>
                                <%--<h4>Max 27°</h4>--%>
                                <%--<h2>21°C</h2>--%>
                                <%--<h4>Min 10°</h4>--%>
                            <%--</div>--%>
                            <%--<div class="clearfix"> </div>--%>
                        <%--</div>--%>
                        <%--<div class="weather-bottom">--%>
                            <%--<ul>--%>
                                <%--<li class="bg"><h4>FRI</h4>--%>
                                    <%--<figure class="icons">--%>
                                        <%--<canvas id="clear-night" width="40" height="40"></canvas>--%>
                                    <%--</figure>--%>
                                    <%--<h5>27°C</h5>--%>
                                    <%--<h6>17°C</h6>--%>
                                <%--</li>--%>
                                <%--<li><h4>SAT</h4>--%>
                                    <%--<figure class="icons">--%>
                                        <%--<canvas id="partly-cloudy-day" width="40" height="40"></canvas>--%>
                                    <%--</figure>--%>
                                    <%--<h5>20°C</h5>--%>
                                    <%--<h6>15°C</h6>--%>
                                <%--</li>--%>
                                <%--<li class="bg"><h4>SUN</h4>--%>
                                    <%--<figure class="icons">--%>
                                        <%--<canvas id="cloudy" width="40" height="40"></canvas>--%>
                                    <%--</figure>--%>
                                    <%--<h5>18°C</h5>--%>
                                    <%--<h6>12°C</h6>--%>
                                <%--</li>--%>
                                <%--<li><h4>MON</h4>--%>
                                    <%--<figure class="icons">--%>
                                        <%--<canvas id="sleet" width="40" height="40"></canvas>--%>
                                    <%--</figure>--%>
                                    <%--<h5>17°C</h5>--%>
                                    <%--<h6>12°C</h6>--%>
                                <%--</li>--%>
                                <%--<li class="bg"><h4>TUE</h4>--%>
                                    <%--<figure class="icons">--%>
                                        <%--<canvas id="rain" width="40" height="40"></canvas>--%>
                                    <%--</figure>--%>
                                    <%--<h5>17°C</h5>--%>
                                    <%--<h6>10°C</h6>--%>
                                <%--</li>--%>
                                <%--<li><h4>WED</h4>--%>
                                    <%--<figure class="icons">--%>
                                        <%--<canvas id="snow" width="40" height="40"></canvas>--%>
                                    <%--</figure>--%>
                                    <%--<h5>24°C</h5>--%>
                                    <%--<h6>10°C</h6>--%>
                                <%--</li>--%>
                                <%--<li class="bg"><h4>THR</h4>--%>
                                    <%--<figure class="icons">--%>
                                        <%--<canvas id="wind" width="40" height="40"></canvas>--%>
                                    <%--</figure>--%>
                                    <%--<h5>25°C</h5>--%>
                                    <%--<h6>15°C</h6>--%>
                                <%--</li>--%>
                            <%--</ul>--%>
                            <%--<div class="clearfix"> </div>--%>
                        <%--</div>--%>
                        <%--<script>--%>
                            <%--var icons = new Skycons({"color": "#68b828"}),--%>
                                    <%--list  = [--%>
                                        <%--"clear-day"--%>
                                    <%--],--%>
                                    <%--i;--%>

                            <%--for(i = list.length; i--; )--%>
                                <%--icons.set(list[i], list[i]);--%>

                            <%--icons.play();--%>
                        <%--</script>--%>
                        <%--<script>--%>
                            <%--var icons = new Skycons({"color": "#f7aa47"}),--%>
                                    <%--list  = [--%>
                                        <%--"clear-night", "partly-cloudy-day",--%>
                                        <%--"partly-cloudy-night", "cloudy", "rain", "sleet", "snow", "wind",--%>
                                        <%--"fog"--%>
                                    <%--],--%>
                                    <%--i;--%>

                            <%--for(i = list.length; i--; )--%>
                                <%--icons.set(list[i], list[i]);--%>

                            <%--icons.play();--%>
                        <%--</script>--%>
                    <%--</div>--%>
                <%--</div>--%>
                <%--<div class="col-md-6 graph-grid">--%>
                    <%--<div class="mani-grp">--%>
                        <%--<canvas id="bar" height="330" width="650"></canvas>--%>
                        <%--<script>--%>

                            <%--var barChartData = {--%>
                                <%--labels : ["January","February","March","April","May","June","July"],--%>
                                <%--datasets : [--%>
                                    <%--{--%>
                                        <%--fillColor : "#f7aa47",--%>
                                        <%--strokeColor : "#FFF",--%>
                                        <%--data : [65,59,90,81,56,55,40]--%>
                                    <%--},--%>
                                    <%--{--%>
                                        <%--fillColor : "#0e62c7",--%>
                                        <%--strokeColor : "#FFF",--%>
                                        <%--data : [28,48,40,19,96,27,100]--%>
                                    <%--}--%>
                                <%--]--%>

                            <%--}--%>

                            <%--var myLine = new Chart(document.getElementById("bar").getContext("2d")).Bar(barChartData);--%>

                        <%--</script>--%>
                    <%--</div>--%>
                <%--</div>--%>
                <%--<div class="clearfix"></div>--%>
            <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
            <%--<div class="piechat-section">--%>
                <%--<div class="col-md-4 pie-chat">--%>
                    <%--<div class="content-top-1">--%>
                        <%--<div class="col-md-6 top-content">--%>
                            <%--<h5>Tasks</h5>--%>
                            <%--<label>9836</label>--%>
                        <%--</div>--%>
                        <%--<div class="col-md-6 top-content1">--%>
                            <%--<div id="demo-pie-1" class="pie-title-center" data-percent="25"> <span class="pie-value"></span> </div>--%>
                        <%--</div>--%>
                        <%--<div class="clearfix"> </div>--%>
                    <%--</div>--%>
                <%--</div>--%>
                <%--<div class="col-md-4 pie-chat">--%>
                    <%--<div class="content-top-1">--%>
                        <%--<div class="col-md-6 top-content">--%>
                            <%--<h5>Points</h5>--%>
                            <%--<label>9836</label>--%>
                        <%--</div>--%>
                        <%--<div class="col-md-6 top-content1">--%>
                            <%--<div id="demo-pie-2" class="pie-title-center" data-percent="50"> <span class="pie-value"></span> </div>--%>
                        <%--</div>--%>
                        <%--<div class="clearfix"> </div>--%>
                    <%--</div>--%>
                <%--</div>--%>
                <%--<div class="col-md-4 pie-chat">--%>
                    <%--<div class="content-top-1">--%>
                        <%--<div class="col-md-6 top-content">--%>
                            <%--<h5>Cards</h5>--%>
                            <%--<label>5689</label>--%>
                        <%--</div>--%>
                        <%--<div class="col-md-6 top-content1">--%>
                            <%--<div id="demo-pie-3" class="pie-title-center" data-percent="75"> <span class="pie-value"></span> </div>--%>
                        <%--</div>--%>
                        <%--<div class="clearfix"> </div>--%>
                    <%--</div>--%>
                <%--</div>--%>
                <%--<div class="clearfix"></div>--%>
            <%--</div>--%>
            <%--<div class="photoday-section">--%>
                <%--<div class="col-md-4 photoday-grid">--%>
                    <%--<div class="photoday">--%>
                        <%--<img src="images/p.jpg" class="img-responsive" alt=""/>--%>
                        <%--<div class="photo-text">--%>
                            <%--<h4>Strawhat In The Beach</h4>--%>
                            <%--<p><i class="glyphicon glyphicon-map-marker" aria-hidden="true"></i> San Franciso, California, Uk</p>--%>
                            <%--<p>By: <a href="#">ThemePixabay</a></p>--%>
                        <%--</div>--%>
                        <%--<div class="photo1">--%>
                            <%--<div class="col-md-4 phot-grid">--%>
                                <%--<p><i class="glyphicon glyphicon-eye-open" aria-hidden="true"></i> 32,102 </p>--%>
                            <%--</div>--%>
                            <%--<div class="col-md-4 phot-grid">--%>
                                <%--<p><a href="#"><i class="glyphicon glyphicon-heart" aria-hidden="true"></i> 1005 </a></p>--%>
                            <%--</div>--%>
                            <%--<div class="col-md-4 phot-grid">--%>
                                <%--<p><a href="#"><i class="glyphicon glyphicon-comment" aria-hidden="true"></i> 70 </a></p>--%>
                            <%--</div>--%>
                            <%--<div class="clearfix"></div>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                <%--</div>--%>
                <%--<div class="col-md-4 photoday-grid">--%>
                    <%--<div class="message-top">--%>
                        <%--<div class="message-left">--%>
                            <%--<h3>Messaging</h3>--%>
                        <%--</div>--%>
                        <%--<div class="message-right">--%>
                            <%--<i class="glyphicon glyphicon-edit" aria-hidden="true"></i>--%>
                        <%--</div>--%>
                        <%--<div class="clearfix"></div>--%>
                    <%--</div>--%>
                    <%--<div class="message-bottom">--%>
                        <%--<div class="message1-left">--%>
                            <%--<h4>Holly Golightly</h4>--%>
                            <%--<p>Lorem ipsum dolor sit amet...</p>--%>
                        <%--</div>--%>
                        <%--<div class="message1-right">--%>
                            <%--<p>Feb 10</p>--%>
                        <%--</div>--%>
                        <%--<div class="clearfix"></div>--%>
                    <%--</div>--%>
                    <%--<div class="message-bottom">--%>
                        <%--<div class="message1-left">--%>
                            <%--<h4>Marsha Mellow</h4>--%>
                            <%--<p>Lorem ipsum dolor sit amet...</p>--%>
                        <%--</div>--%>
                        <%--<div class="message1-right">--%>
                            <%--<p>Aug 9</p>--%>
                        <%--</div>--%>
                        <%--<div class="clearfix"></div>--%>
                    <%--</div>--%>
                    <%--<div class="message-bottom">--%>
                        <%--<div class="message1-left">--%>
                            <%--<h4>Holly Golightly</h4>--%>
                            <%--<p>Lorem ipsum dolor sit amet...</p>--%>
                        <%--</div>--%>
                        <%--<div class="message1-right">--%>
                            <%--<p>Jan 5</p>--%>
                        <%--</div>--%>
                        <%--<div class="clearfix"></div>--%>
                    <%--</div>--%>
                    <%--<div class="message-bottom">--%>
                        <%--<div class="message1-left">--%>
                            <%--<h4>Marsha Mellow</h4>--%>
                            <%--<p>Lorem ipsum dolor sit amet...</p>--%>
                        <%--</div>--%>
                        <%--<div class="message1-right">--%>
                            <%--<p>Dec 10</p>--%>
                        <%--</div>--%>
                        <%--<div class="clearfix"></div>--%>
                    <%--</div>--%>
                    <%--<div class="message-bottom">--%>
                        <%--<div class="message1-left">--%>
                            <%--<h4>Holly Golightly</h4>--%>
                            <%--<p>Lorem ipsum dolor sit amet...</p>--%>
                        <%--</div>--%>
                        <%--<div class="message1-right">--%>
                            <%--<p>Dec 10</p>--%>
                        <%--</div>--%>
                        <%--<div class="clearfix"></div>--%>
                    <%--</div>--%>
                <%--</div>--%>
                <%--<div class="col-md-4 photoday-grid">--%>
                    <%--<div class="progress-top">--%>
                        <%--<h4>CPU Usage <span>(40.05 - 32 cpus)</span></h4>--%>
                        <%--<div class="progress">--%>
                            <%--<div class="progress-bar progress-bar-success progress-bar-striped" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">--%>
                                <%--<span class="sr-only">60% Complete (success)</span>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                        <%--<h4>Memory Usage <span>(32.2%) </span></h4>--%>
                        <%--<div class="progress">--%>
                            <%--<div class="progress-bar progress-bar-info progress-bar-striped" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">--%>
                                <%--<span class="sr-only">40% Complete</span>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                        <%--<h4>Disk Usage <span>(82.2%) </span></h4>--%>
                        <%--<div class="progress">--%>
                            <%--<div class="progress-bar progress-bar-warning progress-bar-striped" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">--%>
                                <%--<span class="sr-only">60% Complete (warning)</span>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                        <%--<h4>Databases <span>(63/100)</span> </h4>--%>
                        <%--<div class="progress">--%>
                            <%--<div class="progress-bar progress-bar-danger progress-bar-striped" role="progressbar" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%">--%>
                                <%--<span class="sr-only">20% Complete (warning)</span>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                    <%--<div class="progress-bottom">--%>
                        <%--<div class="cal-left">--%>
                            <%--<div class="cal">--%>
                                <%--<i class="glyphicon glyphicon-calendar" aria-hidden="true"></i>--%>
                            <%--</div>--%>
                            <%--<div class="cal-text">--%>
                                <%--<h4>Sat, Dec 13</h4>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                        <%--<div class="time-right">--%>
                            <%--<div class="cal">--%>
                                <%--<i class="glyphicon glyphicon-time" aria-hidden="true"></i>--%>
                            <%--</div>--%>
                            <%--<div class="cal-text">--%>
                                <%--<h4>4:50AM PST</h4>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                <%--</div>--%>
                <%--<div class="clearfix"></div>--%>
            <%--</div>--%>
            <%--<div class="row calender widget-shadow">--%>
                <%--<h4 class="title">Calender</h4>--%>
                <%--<div class="cal1">--%>

                <%--</div>--%>
            <%--</div>--%>
            <%--<div class="clearfix"> </div>--%>
        <%--</div>--%>
    </div>
    <div class="copy-section">
        <p>Copyright NCUT LAB1107-杨佳放</p>
    </div>
</div>
<!-- Classie -->
<script src="js/classie.js"></script>
<script>
    var menuLeft = document.getElementById( 'cbp-spmenu-s1' ),
            showLeftPush = document.getElementById( 'showLeftPush' ),
            body = document.body;

    showLeftPush.onclick = function() {
        classie.toggle( this, 'active' );
        classie.toggle( body, 'cbp-spmenu-push-toright' );
        classie.toggle( menuLeft, 'cbp-spmenu-open' );
        disableOther( 'showLeftPush' );
    };


    function disableOther( button ) {
        if( button !== 'showLeftPush' ) {
            classie.toggle( showLeftPush, 'disabled' );
        }
    }
</script>
<!-- Bootstrap Core JavaScript -->

<script type="text/javascript" src="js/bootstrap.min.js"></script>
<!--scrolling js-->
<script src="js/jquery.nicescroll.js"></script>
<script src="js/scripts.js"></script>
<link href="css/bootstrap.min.css" rel="stylesheet">

<!--//scrolling js-->
<div class="modal fade" id="myModal1" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content modal-info">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            </div>
            <div class="modal-body">
                <div class="more-grids">
                    <h3>New Message </h3>
                    <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae.</p>
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>

                </div>
            </div>
        </div>
    </div>
</div>

<!-- //Register -->


</body>
</html>
