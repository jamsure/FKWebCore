$(function () {
	$("#lwj").LWJDate({
		Style: 'red'
	});

	$("#lwj1").LWJDate({
		Style: 'green'
	});

	$("#lwj2").LWJDate({
		Style: 'blue'
	});

	$("#lwj3").LWJDate({
		Style: 'yellow'
	});

	$("#lwj4").LWJDate({
		Style: 'black'
	});

	$("#lwjtest").LWJDate({
		Style: 'purple '
	});

	$("#event1").LWJDate({
		Event: 'click'
	});
	$("#event2").LWJDate({
		Event: 'focus'
	});
	$("#event3").LWJDate({
		Event: 'mouseover'
	});

	$("#dateformat1").LWJDate({
		DateFormat: 'yyyy-MM-dd'
	});
	$("#dateformat2").LWJDate({
		DateFormat: 'yyyy/MM/dd'
	});
	$("#dateformat3").LWJDate({
		DateFormat: 'yyyy年MM月dd日'
	});
	$("#dateformat4").LWJDate({
		DateFormat: 'MM-dd'
	});
	$("#dateformat5").LWJDate({
		DateFormat: 'dd'
	});

	$("#position1").LWJDate({
		Left: 0,
		Top:8
	});
	$("#position2").LWJDate({
		Left: 30,
		Top: 40
	});

	$("#isneed1").LWJDate({
		IsNeedClickOk:false
	});
	$("#isneed2").LWJDate({
		IsNeedClickOk: true
	});
	$("#maxmin1").LWJDate({
	});
	$("#maxmin2").LWJDate({
		MaxDay:'today'
	});
	$("#maxmin3").LWJDate({
		MaxDay: '2013-12-21'
	});
	$("#maxmin4").LWJDate({
		MinDay:'today'
	});
	$("#maxmin5").LWJDate({
		MinDay: '2013-12-5'
	});
	$("#maxmin6").LWJDate({
		MinDay: '2013-12-5',
		MaxDay: '2013-12-28'
	});

	$("#animate1").LWJDate({
		Animate:0
	});
	$("#animate2").LWJDate({
		Animate: 1
	});
	$("#animate3").LWJDate({
		Animate: 2
	});

	$("#callback1").LWJDate({
		CallBack: function (date) {
			alert(date);
		},
		IsNeedClickOk:true
	});

	$("#howuser").LWJDate({});
});