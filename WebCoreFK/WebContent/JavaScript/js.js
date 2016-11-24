/**
 * 
 */
var x = 0;
function write() {
	document.write("HelloWorld!");
}

function look() {
	alert("你有种！");
	look1();
	x = 0;
}

function look1() {
	alert("关不掉了吧！！")
	look2();
}
function look2() {
	alert("就不让你关！    " + x.toString());
	while (x < 10) {
		x++;
		look1();
	}
}
function con() {
	confirm("你好吗？");
	prompt("好不好呀", "不好");
}

function wclose() {
	window.close();
}

function obj() {
	var myObj=new Object();
	myObj.name="James";
	myObj.age="22";
	myObj.phone="555   1234";
	for ( var prop in myObj) {
		window.alert("The property"+prop+"is"+myObj[prop]);
	}
}















