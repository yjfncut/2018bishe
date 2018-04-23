<%@ page language="java" contentType="text/html; charset=UTF-8"

         pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <title>机组耗电量统计图</title>

    <link rel="stylesheet" href="${path }/public/layui/css/layui.css">

    <link rel="stylesheet" href="${path }/public/css/style.css">

    <script type="text/javascript" src="${path }/public/layui/layui.js"></script>

    <script src="${path }/public/layui/lay/lib/jquery.js"></script>

    <script src="${path }/public/layui/lay/dest/layui.all.js"></script>

    <script src="${path }/public/js/jquery-1.4.4.min.js"></script>

    <script>

        layui.use('element', function() {

            var $ = layui.jquery, element = layui.element(); //Tab的切换功能，切换事件监听等，需要依赖element模块



            //触发事件          

            var active = {

                tabAdd : function() {

                    //新增一个Tab项

                    element.tabAdd('demo', {

                        title : '新选项' + (Math.random() * 1000 | 0) //用于演示

                                ,

                                content : '内容' + (Math.random() * 1000 | 0)

                    })

                },

                tabDelete : function() {

                    //删除指定Tab项

                    element.tabDelete('demo', 2); //删除第3项（注意序号是从0开始计算）

                },

                tabChange : function() {

                    //切换到指定Tab项

                    element.tabChange('demo', 1); //切换到第2项（注意序号是从0开始计算）

                }

            };



            $('.site-demo-active').on('click', function() {

                var type = $(this).data('type');

                active[type] ? active[type].call(this) :''

            });

        });

    </script>

</head>

<body>

<div class="layui-tab layui-tab-card">

    <ul class="layui-tab-title">

        <li id="power_day">日</li>

        <li id="power_month">月</li>

        <li id="power_year">年</li>

    </ul>

    <div class="layui-tab-content" style="height: 350px;">

        <div class="layui-tab-item layui-show">

            <div id="mainone" style="height:380px"></div>

        </div>

        <div class="layui-tab-item layui-show">

            <div id="maintwo" style="height:380px"></div>

        </div>

        <div class="layui-tab-item layui-show">

            <div id="mainthree" style="height:380px"></div>

        </div>

    </div>

</div>

</body>

<!-- ECharts单文件引入 -->

<script src="${path }/public/js/echarts.js"></script>

<script type="text/javascript">

    // 路径配置

    require.config({

        paths : {

            echarts : 'http://echarts.baidu.com/build/dist'

            }

    });



    // 使用

    require([ 'echarts', 'echarts/chart/line' // 使用柱状图就加载bar模块，按需加载 （需修改为相应的图形名称）

    ], function(ec) {

        // 基于准备好的dom，初始化echarts图表

        var myChart = ec.init(document.getElementById('mainone'));

        var myChartMonth = ec.init(document.getElementById('maintwo'));

        var myChartYear = ec.init(document.getElementById('mainthree'));

        loadEchartPower(myChart,1);

        //日耗电量

        var dayObj = document.getElementById("power_day");

        dayObj.addEventListener("click", function(){

            loadEchartPower(myChart,1);

        }, true);

        //月耗电

        var monthObj = document.getElementById("power_month");

        monthObj.addEventListener("click", function(){

            loadEchartPower(myChartMonth,2);

        }, true);

        //年耗电

        var yearObj = document.getElementById("power_year");

        yearObj.addEventListener("click", function(){

            loadEchartPower(myChartYear,3);

        }, true);

    });



    //机组及蒸发器功率

    function loadEchartPower(myChart, type){

        var index = layer.load(2, {shade: false},{time: 5*1000}); //0代表加载的风格，支持0-2   添加加载层

        $.ajax({

            url:path+'/chart/aircrewTmep',

        dataType:'json',

        type:'post',

        data:{coding:'${coding}',type:type},

        success:function(data){

            //console.log(JSON.stringify(data.series));

            //console.log(data.legend);

            layer.close(index); //关闭加载层

            /*

             var legendArr = ['蒸发器1','蒸发器2','蒸发器3','机组1'];

             var seriesArr = [{"name":"蒸发器1","type":"line","stack":null,

             "data":["0.5","1.00","1.20","1.00","2.50","1.50","4.00","2.50","3.00","1.00","2.00","1.00","2.30","4.00"],"smooth":false},

             {"name":"蒸发器2","type":"line","stack":null,

             "data":["1.00","1.2","1.5","1.8","2.0","1.5","1.2","2.2","2.3","1.5","2.5","2.8","3.0","3.5"],"smooth":false},

             {"name":"蒸发器3","type":"line","stack":null,

             "data":["1.2","1.5","1.8","2.0","1.8","1.5","2.2","2.5","2.7","2.0","1.9","2.63","2.8","3.7"],"smooth":false},

             {"name":"机组1","type":"line","stack":null,

             "data":["2.0","1.2","1.5","1.8","2.1","1.6","1.3","1.8","1.4","1.5","1.6","2.3","3.5","4.0"],"smooth":false}];

             */

            option = {

                title : {

                    text : '机组耗电量统计图',

            subtext : '时间/耗电量'

        },

            tooltip : {

                trigger : 'axis'

            },

            legend : {

                data : data.legend

            },

            toolbox: {

                show : true,

                        feature : {

                    mark : {show: true},

                    dataView : {show: true, readOnly: false},

                    magicType : {show: true, type: ['line', 'bar', 'stack', 'tiled']},

                    restore : {show: true},

                    saveAsImage : {show: true}

                }

            },

            calculable : true,

                    xAxis : [ {

                type : 'category',

            boundaryGap : false,

                    data : data.time

        } ],

            yAxis : [ {

                type : 'value'

        } ],

            series : data.series,

        };

            // 为echarts对象加载数据



            myChart.setOption(option);

        }

    });

    }

</script>

</html>