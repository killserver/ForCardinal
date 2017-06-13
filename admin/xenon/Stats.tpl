<div class="col-sm-6">
	<div class="chart-item-bg">
		<div id="pageviews-stats" style="height: 320px; padding: 20px 0;"></div>
	</div>
</div>
<script src="http://themes.laborator.co/xenon/assets/js/devexpress-web-14.1x/js/dx.chartjs.js" id="script-resource-9"></script>
<script>
// Pageview Stats
$('#pageviews-stats').dxBarGauge({
	startValue: 0,
	endValue: 100,
	baseValue: 0,
	values: [{statDesktop}, {statTablet}, {statMobile}],
	label: {
		customizeText: function (arg) {
			return arg.valueText + '%';
		}
	},
	palette: ['#68b828','#7c38bc','#0e62c7','#fcd036','#4fcdfc','#00b19d','#ff6264','#f7aa47'],
	margin : {
		top: 0
	}
});
</script>