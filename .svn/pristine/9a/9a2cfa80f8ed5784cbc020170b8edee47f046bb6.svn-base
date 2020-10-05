<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>같이 보자! 공공연한사이</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
<link rel="stylesheet" href="/resources/css/style.css" />
<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.js"></script>
<script type="text/javascript" src="/resources/js/jquery.color.js"></script>
<script type="text/javascript" src="/resources/js/custom.js"></script>
<script type="text/javascript" src="/resources/js/credit.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.js"></script>
<script src="https://cdn.amcharts.com/lib/4/core.js"></script>
<script src="https://cdn.amcharts.com/lib/4/charts.js"></script>
<script src="https://cdn.amcharts.com/lib/4/themes/animated.js"></script>
<script src="https://cdn.amcharts.com/lib/4/lang/ko_KR.js"></script>
<script src="https://cdn.amcharts.com/lib/4/lang/ko_KR.js.map"></script>

</head>
<style>
	#chartdiv {
	  width: 100%;
	  height: 500px;
}
</style>
<body>
	<div class="header">
		<%@ include file="../common/navi.jsp"%>
	</div>
	<div class="body" style="margin-top: 200px;">
		<div class="container" style="margin-bottom: -100px;">
			<div class="row">
				<div class="col-3">
					<div class="card text-center" style="height:700px;">
						<div class="card-header">
							<div>매출분석</div>
						</div>
						<div class="card-body"><button class="btn btn-outline-success btn-block" id="payment-status">결제 현황</button></div>
						<div class="card-body"><button class="btn btn-outline-success btn-block" id="payment-method">결제 수단</button></div>
						<div class="card-body"><button class="btn btn-outline-success btn-block" id="total-sales">총    매출</button></div>
					</div>
				</div>
				<div class="col-9">
					<div id="chartdiv"></div>
				</div>
			</div>
		</div>
	</div>
<script type="text/javascript" src="/resources/jquery/jquery.min.js"></script>
<script type="text/javascript">
$(function() {
	
	var barChart;
	function initBarChart(el) {
		barChart = am4core.create(el, am4charts.XYChart)
		barChart.colors.step = 2;

		barChart.legend = new am4charts.Legend()
		barChart.legend.position = 'top'
		barChart.legend.paddingBottom = 20
		barChart.legend.labels.template.maxWidth = 95

		var xAxis = barChart.xAxes.push(new am4charts.CategoryAxis())
		xAxis.dataFields.category = 'date'
		xAxis.renderer.cellStartLocation = 0.1
		xAxis.renderer.cellEndLocation = 0.9
		xAxis.renderer.grid.template.location = 0;

		var yAxis = barChart.yAxes.push(new am4charts.ValueAxis());
		yAxis.min = 0;
		
		return barChart;
	} 
	
	function createBarChartSeries(value, name) {
	    var series = barChart.series.push(new am4charts.ColumnSeries())
	    series.dataFields.valueY = value
	    series.dataFields.categoryX = 'date'
	    series.name = name

	    series.events.on("hidden", arrangeBarChartColumns);
	    series.events.on("shown", arrangeBarChartColumns);

	    var bullet = series.bullets.push(new am4charts.LabelBullet())
	    bullet.interactionsEnabled = false
	    bullet.dy = 30;
	    bullet.label.text = '{valueY}'
	    bullet.label.fill = am4core.color('#ffffff')

	    return series;
	}
	
	function arrangeBarChartColumns() {
	    var series = barChart.series.getIndex(0);
	    var xAxis = barChart.xAxes.push(new am4charts.CategoryAxis())
	    
	    var w = 1 - xAxis.renderer.cellStartLocation - (1 - xAxis.renderer.cellEndLocation);
	    if (series.dataItems.length > 1) {
	        var x0 = xAxis.getX(series.dataItems.getIndex(0), "dateX");
	        var x1 = xAxis.getX(series.dataItems.getIndex(1), "dateX");
	        var delta = ((x1 - x0) / barChart.series.length) * w;
	        if (am4core.isNumber(delta)) {
	            var middle = barChart.series.length / 2;

	            var newIndex = 0;
	            barChart.series.each(function(series) {
	                if (!series.isHidden && !series.isHiding) {
	                    series.dummyData = newIndex;
	                    newIndex++;
	                }
	                else {
	                    series.dummyData = barChart.series.indexOf(series);
	                }
	            })
	            var visibleCount = newIndex;
	            var newMiddle = visibleCount / 2;

	            barChart.series.each(function(series) {
	                var trueIndex = barChart.series.indexOf(series);
	                var newIndex = series.dummyData;

	                var dx = (newIndex - trueIndex + middle - newMiddle) * delta

	                series.animate({ property: "dx", to: dx }, series.interpolationDuration, series.interpolationEasing);
	                series.bulletsContainer.animate({ property: "dx", to: dx }, series.interpolationDuration, series.interpolationEasing);
	            })
	        }
	    }
	}
	
	var lineChart;
	function initLineChart(el, data) {
		lineChart = am4core.create("chartdiv", am4charts.XYChart);
		lineChart.data = data;		
		lineChart.dateFormatter.inputDateFormat = "yyyy-MM-dd";
	}
	
	function createLineChartAxis() {
		var dateAxis = lineChart.xAxes.push(new am4charts.DateAxis());
		var valueAxis = lineChart.yAxes.push(new am4charts.ValueAxis());

		dateAxis.start =0;
		dateAxis.keepSelection = true;		
	}
	
	function createLineChartSeries() {
		// Create series
		var series = lineChart.series.push(new am4charts.LineSeries());
		series.dataFields.valueY = "totalSales";
		series.dataFields.dateX = "lineDate";
		series.tooltipText = "{value}"
		series.strokeWidth = 2;
		series.minBulletDistance = 15;
	}
	
	
	function drawChartMethod(el, data) {
		am4core.ready(function() {
			initBarChart(el);
			barChart.data = data;
			createBarChartSeries('credit', '무통장입금');
			createBarChartSeries('card', '신용카드');
		});		
	}
	
	function drawChartStatus(el, data) {
		am4core.ready(function() {
			initBarChart(el);
			barChart.data = data;
			createBarChartSeries('payStatus', '결제건수');
			// createSeries('card', '신용카드');
		});		
	}
	
	function drawLineChart(el, data) {
		am4core.ready(function() {
			initLineChart(el, data);
			createLineChartAxis();
			createLineChartSeries();
		})
	}
	
	$('#payment-method').on('click', function() {
		$.ajax({
			url:"paymentStatus.do",
			dataType:"json",
			success:function(data) {
				$('#chartdiv').empty();
				drawChartMethod('chartdiv', data);
			}
		})
	})
	
	$('#payment-status').on('click', function() {
		$.ajax({
			url:"paymentAll.do",
			dataType:"json",
			success:function(data) {
				$('#chartdiv').empty();
				drawChartStatus('chartdiv', data);
			}
		})
	});
	
	$('#total-sales').on('click', function() {
		$.ajax({
			url:"totalSales.do",
			dataType:"json",
			success:function(data) {
				$('#chartdiv').empty();
				drawLineChart('chartdiv', data);
			}
		})
	});
});
		
</script>
</body>
</html>