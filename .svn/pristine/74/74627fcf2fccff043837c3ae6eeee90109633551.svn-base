<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>같이 보자! 공공연한사이</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
<link rel="stylesheet" href="/resources/css/style.css" />
<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.js"></script>
<script type="text/javascript" src="/resources/js/jquery.color.js"></script>
<script type="text/javascript" src="/resources/js/custom.js"></script>
<script type="text/javascript" src="/resources/js/credit.js"></script>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.js"></script>
<script src="https://cdn.amcharts.com/lib/4/core.js"></script>
<script src="https://cdn.amcharts.com/lib/4/charts.js"></script>
<script src="https://cdn.amcharts.com/lib/4/themes/animated.js"></script>

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
	
	var chart;
	function initChart(el) {
		chart = am4core.create(el, am4charts.XYChart)
		chart.colors.step = 2;

		chart.legend = new am4charts.Legend()
		chart.legend.position = 'top'
		chart.legend.paddingBottom = 20
		chart.legend.labels.template.maxWidth = 95

		var xAxis = chart.xAxes.push(new am4charts.CategoryAxis())
		xAxis.dataFields.category = 'date'
		xAxis.renderer.cellStartLocation = 0.1
		xAxis.renderer.cellEndLocation = 0.9
		xAxis.renderer.grid.template.location = 0;

		var yAxis = chart.yAxes.push(new am4charts.ValueAxis());
		yAxis.min = 0;
		
		return chart;
	} 
	
	function createSeries(value, name) {
	    var series = chart.series.push(new am4charts.ColumnSeries())
	    series.dataFields.valueY = value
	    series.dataFields.categoryX = 'date'
	    series.name = name

	    series.events.on("hidden", arrangeColumns);
	    series.events.on("shown", arrangeColumns);

	    var bullet = series.bullets.push(new am4charts.LabelBullet())
	    bullet.interactionsEnabled = false
	    bullet.dy = 30;
	    bullet.label.text = '{valueY}'
	    bullet.label.fill = am4core.color('#ffffff')

	    return series;
	}
	
	function arrangeColumns() {
	    var series = chart.series.getIndex(0);
	    var xAxis = chart.xAxes.push(new am4charts.CategoryAxis())
	    
	    var w = 1 - xAxis.renderer.cellStartLocation - (1 - xAxis.renderer.cellEndLocation);
	    if (series.dataItems.length > 1) {
	        var x0 = xAxis.getX(series.dataItems.getIndex(0), "dateX");
	        var x1 = xAxis.getX(series.dataItems.getIndex(1), "dateX");
	        var delta = ((x1 - x0) / chart.series.length) * w;
	        if (am4core.isNumber(delta)) {
	            var middle = chart.series.length / 2;

	            var newIndex = 0;
	            chart.series.each(function(series) {
	                if (!series.isHidden && !series.isHiding) {
	                    series.dummyData = newIndex;
	                    newIndex++;
	                }
	                else {
	                    series.dummyData = chart.series.indexOf(series);
	                }
	            })
	            var visibleCount = newIndex;
	            var newMiddle = visibleCount / 2;

	            chart.series.each(function(series) {
	                var trueIndex = chart.series.indexOf(series);
	                var newIndex = series.dummyData;

	                var dx = (newIndex - trueIndex + middle - newMiddle) * delta

	                series.animate({ property: "dx", to: dx }, series.interpolationDuration, series.interpolationEasing);
	                series.bulletsContainer.animate({ property: "dx", to: dx }, series.interpolationDuration, series.interpolationEasing);
	            })
	        }
	    }
	}
	
	/*am4core.ready(function() {

		// Themes begin
		am4core.useTheme(am4themes_animated);
		// Themes end

		// Create chart instance
		var chart = am4core.create("chartdiv_1", am4charts.XYChart);
		
		// Set input format for the dates
		chart.dateFormatter.inputDateFormat = "yyyy-MM-dd";

		// Create axes
		var dateAxis = chart.xAxes.push(new am4charts.DateAxis());
		var valueAxis = chart.yAxes.push(new am4charts.ValueAxis());

		function createSeries(value, date) ?
		// Create series
		var series = chart.series.push(new am4charts.LineSeries());
		series.dataFields.valueY = "value";
		series.dataFields.dateX = "date";
		series.tooltipText = "{value}"
		series.strokeWidth = 2;
		series.minBulletDistance = 15;

		// Drop-shaped tooltips
		series.tooltip.background.cornerRadius = 20;
		series.tooltip.background.strokeOpacity = 0;
		series.tooltip.pointerOrientation = "vertical";
		series.tooltip.label.minWidth = 40;
		series.tooltip.label.minHeight = 40;
		series.tooltip.label.textAlign = "middle";
		series.tooltip.label.textValign = "middle";

		// Make bullets grow on hover
		var bullet = series.bullets.push(new am4charts.CircleBullet());
		bullet.circle.strokeWidth = 2;
		bullet.circle.radius = 4;
		bullet.circle.fill = am4core.color("#fff");

		var bullethover = bullet.states.create("hover");
		bullethover.properties.scale = 1.3;

		// Make a panning cursor
		chart.cursor = new am4charts.XYCursor();
		chart.cursor.behavior = "panXY";
		chart.cursor.xAxis = dateAxis;
		chart.cursor.snapToSeries = series;

		// Create vertical scrollbar and place it before the value axis
		chart.scrollbarY = new am4core.Scrollbar();
		chart.scrollbarY.parent = chart.leftAxesContainer;
		chart.scrollbarY.toBack();

		// Create a horizontal scrollbar with previe and place it underneath the date axis
		chart.scrollbarX = new am4charts.XYChartScrollbar();
		chart.scrollbarX.series.push(series);
		chart.scrollbarX.parent = chart.bottomAxesContainer;

		dateAxis.start = 0.79;
		dateAxis.keepSelection = true;


		}); // end am4core.ready()*/
		
	function drawChartMethod(el, data) {
		am4core.ready(function() {
			initChart(el);
			chart.data = data;
			createSeries('credit', '무통장입금');
			createSeries('card', '신용카드');
		});		
	}
	
	function drawChartStatus(el, data) {
		am4core.ready(function() {
			initChart(el);
			chart.data = data;
			createSeries('payStatus', '결제건수');
			// createSeries('card', '신용카드');
		});		
	}
	
	var data = [
	    { category: '2020-05', credit: 40, second: 55 },
	    { category: '2020-06', first: 30, second: 78 },
	    { category: '2020-07', first: 27, second: 40 },
	    { category: '2020-08', first: 50, second: 33 }
		]

	
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
				
			}
		})
	});
});
		
</script>
</body>
</html>