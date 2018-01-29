<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/tags.jsp"%>
<app:template title="我的应用" type="planeui">
<div class="pui-layout" style="width:96%;">
<link href="plug-in-ui/jquery-plugs/step/css/jquery.step.css" rel="stylesheet">
<script src="plug-in-ui/jquery-plugs/step/js/jquery.step.min.js"></script>

<style>
button {
	display: inline-block;
	padding: 6px 12px;
	font-size: 14px;
	line-height: 1.42857143;
	text-align: center;
	cursor: pointer;
	border: 1px solid transparent;
	border-radius: 4px;
	color: #fff;
	background-color: #5bc0de;
}

.main {
	width: 1000px;
	margin: 100px auto;
}

#step {
	margin-bottom: 60px;
}

.btns {
	float: left;
}

.info {
	float: left;
	height: 34px;
	line-height: 34px;
	margin-left: 40px;
	font-size: 28px;
	font-weight: bold;
	color: #928787;
}

.info span {
	color: red;
}
</style>

<br><br><br><br><br>
<div class="main">
	<div id="step"></div>
	<div class="btns">
		<button id="prevBtn">上一步</button>
		<button id="nextBtn">下一步</button>
		<button id="btn1">跳到第二步</button>
		<button id="btn2">跳到第三步</button>
	</div>
	<div class="info">index：<span id="index"></span></div>
</div>

<script type="text/javascript">
	var $step = $("#step");
	var $index = $("#index");

	$step.step({
		index: 0,
		time: 500,
		title: ["填写申请表", "上传资料", "待确认", "已确认", "预约完成"]
	});

	$index.text($step.getIndex());

	$("#prevBtn").on("click", function() {
		$step.prevStep();
		$index.text($step.getIndex());
	});

	$("#nextBtn").on("click", function() {
		$step.nextStep();
		$index.text($step.getIndex());
	});

	$("#btn1").on("click", function() {
		$step.toStep(1);
		$index.text($step.getIndex());
	});

	$("#btn2").on("click", function() {
		$step.toStep(2);
		$index.text($step.getIndex());
	});
</script>


</div>
</app:template>