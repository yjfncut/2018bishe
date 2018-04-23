<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 1107
  Date: 2018-04-21
  Time: 10:15
  To change this template use File | Settings | File Templates.
--%>
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
    <link rel="icon" href="favicon.ico" type="image/x-icon" >
    <!-- font-awesome icons -->
    <link href="css/font-awesome.css" rel="stylesheet">
    <!-- //font-awesome icons -->
    <!-- js-->
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
                                    <li> <a href="#"><i class="fa fa-sign-out"></i> Logout</a> </li>
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
    <!-- //header-ends -->
    <!-- //header-ends -->
    <div id="page-wrapper">
        <div class="main-page">
            <form name="Form2" action="/traffic" method="post"  enctype="multipart/form-data">

                <div class="col-md-12 grid-form1 " style="float:left;margin-left:30%">
                    <%--<h5>File input</h5>--%>
                    <input type="file" name="trainFile" style="width:230px;height:40px;float:left;padding-top:5px;" >
                    <button type="submit" class="btn btn-primary" style="width: 70px;height:40px;margin-right:30px"> submit</button>
                    <%-- <button type="reset" class="btn btn-warning" style="margin-left:2%"> Reset</button>--%>

                </div>
            </form>
            <div id="container2" style="height: 450px;width:550px;float:left;margin-left:25%"></div>
            <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/echarts.min.js"></script>
            <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts-gl/echarts-gl.min.js"></script>
            <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts-stat/ecStat.min.js"></script>
            <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/extension/dataTool.min.js"></script>
            <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/map/js/china.js"></script>
            <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/map/js/world.js"></script>
            <%--<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=ZUONbpqGBsYGXNIYHicvbAbM"></script>--%>
            <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/extension/bmap.min.js"></script>
            <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/simplex.js"></script>

            <script type="text/javascript">
                var dom = document.getElementById("container2");
                var myChart = echarts.init(dom);
                var app = {};
                option = null;
                app.title = '水印 - ECharts 下载统计'

                var builderJson = {
                    "all": 10887,
                    "charts": {
                        "map": 3237,
                        "lines": 2164,
                        "bar": 7561,
                        "line": 7778,
                        "pie": 7355,
                        "scatter": 2405,
                        "candlestick": 1842,
                        "radar": 2090,
                        "heatmap": 1762,
                        "treemap": 1593,
                        "graph": 2060,
                        "boxplot": 1537,
                        "parallel": 1908,
                        "gauge": 2107,
                        "funnel": 1692,
                        "sankey": 1568
                    },
                    "components": {
                        "geo": 2788,
                        "title": 9575,
                        "legend": 9400,
                        "tooltip": 9466,
                        "grid": 9266,
                        "markPoint": 3419,
                        "markLine": 2984,
                        "timeline": 2739,
                        "dataZoom": 2744,
                        "visualMap": 2466,
                        "toolbox": 3034,
                        "polar": 1945
                    },
                    "ie": 9743
                };

                var downloadJson = {
                    "echarts.min.js": 17365,
                    "echarts.simple.min.js": 4079,
                    "echarts.common.min.js": 6929,
                    "echarts.js": 14890
                };

                var themeJson = {
                    "dark.js": 1594,
                    "infographic.js": 925,
                    "shine.js": 1608,
                    "roma.js": 721,
                    "macarons.js": 2179,
                    "vintage.js": 1982
                };

                var waterMarkText = 'ECHARTS';

                var canvas = document.createElement('canvas');
                var ctx = canvas.getContext('2d');
                canvas.width = canvas.height = 600;
                ctx.textAlign = 'center';
                ctx.textBaseline = 'middle';
                ctx.globalAlpha = 0.08;
                ctx.font = '20px Microsoft Yahei';
                ctx.translate(50, 50);
                ctx.rotate(-Math.PI / 4);
                ctx.fillText(waterMarkText, 0, 0);

                option = {
                    title : {
                        text: '出行方式分析',
                        subtext: '',
                        x:'center'
                    },
                    tooltip : {
                        trigger: 'item',
                        formatter: "{a} <br/>{b} : {c} ({d}%)"
                    },
                    legend: {
                        orient: 'vertical',
                        left: 'left',
                        data: ['步行','自行车','公交车','汽车','火车']
                    },
                    series : [
                        {
                            name: '访问来源',
                            type: 'pie',
                            radius : '55%',
                            center: ['50%', '60%'],
                            data:[
                                {value:${bus}, name:'Bus'},
                                {value:${bike}, name:'Bike'},
                                {value:${walk}, name:'Walk'},
                                {value:${car}, name:'Car'},
                                {value:${train}, name:'Train'}
                            ],
                            itemStyle: {
                                emphasis: {
                                    shadowBlur: 10,
                                    shadowOffsetX: 0,
                                    shadowColor: 'rgba(0, 0, 0, 0.5)'
                                }
                            }
                        }
                    ]
                };
                if (option && typeof option === "object") {
                    myChart.setOption(option, true);
                }
            </script>



        </div>
        <div id="container1" style="height: 300px;width:500px;position:fixed;right:300px;top:400px;">使用最多的出行方式为${tra},时长为${best}分钟</div>
    </div>
    <!--typo-ends-->

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
<!--//scrolling js-->
</body>
</html>
