/**
 * 乘法口诀表js
 * 
 */

$(function() {
	$('#btnprint').bind('click', multiplyTable)
	$('#btncount').bind('click', count)
	$('#btnstyle1').bind('click', tableStyle1)
	$('#btnstyle').bind('click', tableStyle)
})

/**
 * 添加样式{table：外边框为1 ，背景蓝色，字体为红色，文本居中
 * 	页面整体居中，}
 * @returns
 */
function tableStyle1() {
	$('table').css({
		'border' : '1px solid',
		'background-color' : 'lightblue',
		color : 'red',
		'text-align' : 'center',
		fontSize : '16px'
	});
	$('body').wrapInner("<div id='div1'></div>");
	$('body').attr('align', 'center');
	$('#div1').css({
		width : '960px',
		'text-align' : 'center',
		margin : '0px auto'
	});
	$('table').wrap("<center></center>")
}
/**
 * 添加样式{table：border：1 ，背景蓝色，字体为红色，文本居中
 * 	页面整体居中，}
 * @returns
 */
function tableStyle() {
	$('table').attr({
		'border' : '1',
		'cellspacing' : '0',
		'cellpadding' : '3px'
	});
	$('table').css({
		'background-color' : 'lightblue',
		color : 'red',
		'text-align' : 'center',
		fontSize : '16px'
	});
	$('body').wrapInner("<div id='div1'></div>");
	$('body').attr('align', 'center');
	$('#div1').css({
		width : '960px',
		'text-align' : 'center',
		margin : '0px auto'
	});
	$('table').wrap("<center></center>")
}
/**
 * 计算每行每列的总和，使用两个数组分别接收行和列的总和
 * 数组必须初始化，否则无法识别
 * @returns
 */
var flag=false;							//设置一个flag，防止重复添加统计行和列
function count() {
	/*var row = [];
	var col = [];
	for (var i = 1; i < 10; i++) {			//计算保存每一行的总和
		row[i] = 0;							//初始化数组
		for (var j = 1; j < 10; j++) {
			if (j <= i) {
				row[i] += i * j;
			}
		}
	}
	for (var i = 1; i < 10; i++) {			//计算每一列的总和
		col[i] = 0;							//初始化数组
		for (var j = i; j < 10; j++) {
			col[i] += i * j;
		}
	}*/
	var s=$('#lastTr');
	if(flag==false){								//根据flag判断是否添加统计行和列
	$('table').append("<tr id='lastTr'>");			//先在table最后添加一行
	for (var k = 1; k < 10; k++) {
		/*
		 * $('tr:eq('+(k-1)+')').append("<td>"+row[k]+"</td>");
		 * $('tr:last').append("<td>"+col[k]+"</td>");
		 */
		$('tr:eq(' + (k - 1) + ')').append("<td>" + row1[k] + "</td>");  //在每一行最后中添加总和单元格<td>
		$('tr:last').append("<td>" + col1[k] + "</td>");		//在最后一行中添加每一列的总和
	}
	$('tr:last').append("<td>&nbsp;</td></tr>");     //封闭最后一行
	flag=true;									//添加个统计就改变flag
	}else {
		window.alert('已经添加过统计！');
	}
}
/**
 * 打印乘法口诀表，保存在一个字符串中，添加到body最后
 * 使用两个数组接收行和列的总和
 */
var row1 = [ ];
var col1 = [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ];  		//初始化列的数组
function multiplyTable() {
	var str = "<br/><table><caption>九九乘法口诀表</caption>";		//定义一个字符串保存乘法口诀表
	for (var i = 1; i < 10; i++) {
		row1[i] = 0;							//初始化行的数组
		str += "<tr>";
		for (var j = 1; j < 10; j++) {
			// col1[j]=0;
			if (j <= i) {
				str += "<td>";
				str += j + "*" + i + "=" + (i * j);
				str += "</td>";
				row1[i] += i * j;
				col1[j] += i * j;
			} else {
				str += "<td>&nbsp;</td>"
			}
		}
		str += "</tr>";
	}
	str += "</table>";
	$('body').append(str);				//在body中追加
	$('#btnprint').attr('disabled','true')      //禁用按钮
}