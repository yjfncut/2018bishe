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
            <div class="blank-page">
                <div class="bottom-form">
                    <form name="Form2" action="/upload" method="post"  enctype="multipart/form-data">

                    <div class="col-md-12 grid-form1 " style="float:left;margin-left:30%">
                        <%--<h5>File input</h5>--%>
                        <input type="file" name="trainFile" style="width:230px;height:40px;float:left;padding-top:5px;" >
                        <button type="submit" class="btn btn-primary" style="width: 70px;height:40px;margin-right:30px"> submit</button>
                       <%-- <button type="reset" class="btn btn-warning" style="margin-left:2%"> Reset</button>--%>

                        <a  href="/fenlei?type=1" class="btn btn-primary " > SVM分类</a>
                        <a  href="/fenlei?type=3" class="btn btn-primary "> DNN分类</a>
                        <a  href="/fenlei?type=2" class="btn btn-primary "> DNN基础</a>

                    </div>
                        <div class="main-page">
                            <!--buttons-->
                            <%--<div class="grids-section">--%>
                            <h2 class="hdg">实验数据集</h2>
                            <div class=" table-grid">
                                <div class="panel panel-widget">
                                    <div class="blank-page">
                                        <table class="table table-striped" >
                                            <thead>
                                            <tr>
                                                <th width=200>模式</th>
                                                <th width=200>速度排列熵</th>
                                                <th width=200>角度排列熵</th>
                                                <th width=200>平均速度</th>
                                                <th width=200>速度方差</th>
                                                <th width=200>轨迹段方向变化</th>
                                                <th width=200>停顿率</th>
                                                <th width=200>轨迹速度变化率</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <%--<%--%>
                                            <%--List list= (List) request.getAttribute("gj");--%>
                                            <%--String pageNo= (String) request.getAttribute("pageNo");--%>
                                            <%--%>--%>
                                            <c:forEach items="${gj}" var="gj" varStatus="vs">
                                                <tr >
                                                    <td >${gj.model}</td>
                                                    <td >${gj.peofvelocity}</td>
                                                    <td >${gj.peofangle}</td>
                                                    <td >${gj.av}</td>
                                                    <td >${gj.dv}</td>
                                                    <td >${gj.hcr}</td>
                                                    <td >${gj.sr}</td>
                                                    <td >${gj.vcr}</td>
                                                </tr>
                                            </c:forEach>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                            <%--</div>--%>
                        </div>
                    <div class="clearfix"></div>
                    </form>
                </div>
            </div>
        </div>
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
