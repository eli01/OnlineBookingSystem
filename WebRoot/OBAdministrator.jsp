<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
		<title>管理员界面</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<!-- Bootstrap -->
		<link href="css/bootstrap.css" rel="stylesheet" media="screen">
		<link href="css/mycss.css" rel="stylesheet" media="screen">
		<!--<link href="css/flat-ui.css" rel="stylesheet">-->
		<!--<link href="css/bootstrap.css" rel="stylesheet">-->
		<link rel="shortcut icon" href="images/favicon.ico">
		<script src="js/Chart.js"></script>
		<!--<link rel="apple-touch-icon-precomposed" sizes="144x144" href="img/glyphicons-halflings.png">-->
		<style>
			canvas{
			}
		</style>
  </head>
<body style="margin:0px auto;width:80%;min-height:1200px">

  	   <div class="masthead">
        <h3 class="muted"> 管理员模块</h3>
      </div>  
	   <ul id="myTab" class="nav nav-tabs">
		  <li class="active"><a href="#nowam" data-toggle="tab">当前预约</a></li>
		  <li><a href="#historyam" data-toggle="tab">历史预约</a></li>
		  <li class="dropdown">
			<a href="#" class="dropdown-toggle" data-toggle="dropdown">统计信息 <b class="caret"></b></a>
			<ul class="dropdown-menu">
			  <li><a href="#dropdown1" data-toggle="tab">当前情况</a></li>
			  <li><a href="#dropdown2" data-toggle="tab">历史情况</a></li>
			</ul>
		  </li>
	   </ul>
            <div id="myTabContent" class="tab-content">
				  <div class="tab-pane fade in active" id="nowam">
					<!--当前预约-->
						 <div class="modal" style="position: relative; top: auto; left: auto; right: auto; margin: 0 auto 20px; z-index: 1;width: 90%;">
						  <div class="modal-header">
							<!--<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>-->
							 <div class="navbar">
							   <div class="navbar-inner">			  
								<form class="navbar-search pull-left">
								<table border="0px">
									<tr>
										<td width="70%">
										 <h3>当前预约</h3>
										</td>
										<td>
								 <form>
								 </form>
										 <form class="form-search" style="margin-bottom:5px">
										  <div class="input-append">
											<input type="text" class="span2 search-query" placeholder="输入预约编号……">
											<button type="submit" class="btn">查询</button>
										  </div>
										  <div class="input-prepend">
										</form>
										</td>
									</tr>
								</table>
								</form>
							  </div>
							</div>
						   </div>
						   <div class="modal-body">
							 <table class="table">
							   <thead>
								 <tr>
								   <th>选中</th>
								   <th class="receipt"> 序号 </th>
								   <th class="receipt"> 预约单号 </th>
								   <th class="receipt"> 项目财务编号 </th>
								   <th class="receipt"> 填写日期 </th>
								   <th class="receipt"> 状态 </th>
								   <th class="receipt"> 预约日期 </th>
								   <th class="receipt"> 预约时间 </th>
								   <th class="receipt"> 预约窗口 </th>
								 </tr>
							   </thead>
							   <tbody>
								 <tr>
								   <td><input name="checkbox" type="checkbox"></td>
								   <td>1</td>
								   <td> 00000 </td>
								   <td> 00000 </td>
								   <td> 2013-4-4 </td>
								   <td> 已预约 </td>
								   <td> 2013-4-7 </td>
								   <td> 15:30 </td>
								   <td> 窗口一 </td>
								 </tr>
							   </tbody>
							 </table>
						   </div>
						   <div class="modal-footer">
							<table border="0px" style="width:100%">
								  <tbody>
									<tr>
										<td style="width:70%">								
										  <div class="pagination pagination-centered" style="margin-left:45%">
											  <ul>
												<li class="disabled"><a href="#">&laquo;</a></li>
												<li class="active"><a href="#">1</a></li>
												<li><a href="#">2</a></li>
												<li><a href="#">3</a></li>
												<li><a href="#">4</a></li>
												<li><a href="#">5</a></li>
												<li><a href="#">&raquo;</a></li>
											 </ul>
										  </div>
										</td>
	
										<td>
											<a href="#nowEdit" role="button" class="btn" data-toggle="modal">修改</a>
											<a href="#" class="btn btn-danger">删除</a>
										</td>
									</tr>
								  </tbody>
								</table>						
						  </div>
						</div>
				  </div>
				  <div class="tab-pane fade" id="historyam">
					<!--历史订单记录-->
						 <div class="modal" style="position: relative; top: auto; left: auto; right: auto; margin: 0 auto 20px; z-index: 1;width: 90%;">
						  <div class="modal-header">
							<!--<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>-->
							 <div class="navbar">
							   <div class="navbar-inner">			  
								<form class="navbar-search pull-left">
								<table border="0px">
									<tr>
										<td width="70%">
										 <h3>历史预约</h3>
										</td>
										<td>
										<form>
										</form>
										 <form class="form-search" style="margin-bottom:5px">
										  <div class="input-append">
											<input type="text" class="span2 search-query" placeholder="输入预约编号……">
											<button type="submit" class="btn">查询</button>
										  </div>
										  <div class="input-prepend">
										</form>
										</td>
									</tr>
								</table>
								</form>
							  </div>
							</div>
						  </div>
						  <div class="modal-body">
							<table class="table">
								<thead>
									<tr>
										<th>选中</th>
										<th>序号</th>
										<th class="receipt">
										预约单号
										</th>
										<th class="receipt">
										项目财务编号
										</th>
										<th class="receipt">
										填写日期
										</th>
										<th class="receipt">
										状态
										</th>
										<th class="receipt">
										预约日期
										</th>
										<th class="receipt">
										预约时间
										</th>
										<th class="receipt">
										预约窗口
										</th>
										
									</tr>
								</thead>
								<tbody>
									<tr>
										<td><input type="checkbox"></td>
										<td>1</td>
										<td>	
											00000
										</td>
										<td>
											00000
										</td>
										<td>
											2013-4-4
										</td>
										<td>
											已完成
										</td>
										<td>
											2013-4-7
										</td>
										<td>
											15:30
										</td>
										<td>
											窗口一
										</td>
									</tr>
								</tbody>
							</table>
						  </div>
						  <div class="modal-footer">
								<table border="0px" style="width:100%">
								  <tbody>
									<tr>
										<td style="width:70%">								
										  <div class="pagination pagination-centered" style="margin-left:45%">
											  <ul>
												<li class="disabled"><a href="#">&laquo;</a></li>
												<li class="active"><a href="#">1</a></li>
												<li><a href="#">2</a></li>
												<li><a href="#">3</a></li>
												<li><a href="#">4</a></li>
												<li><a href="#">5</a></li>
												<li><a href="#">&raquo;</a></li>
											 </ul>
										  </div>
										</td>
	
										<td>
											<a href="#historyDetail" role="button" class="btn" data-toggle="modal">查看</a>
											<a href="#" role="button" class="btn btn-danger" data-toggle="modal">清除</a>
										</td>
									</tr>
								  </tbody>
								</table>
						  </div>
						</div>
				  </div>
				  <div class="tab-pane fade" id="dropdown1">
					<table>
						<tr>
							<td>
								<div class="input-prepend input-append">
									  <span class="add-on">当前预约总人数：</span>
									  <input class="span2" id="appendedPrependedInput" type="text" style="width:70px">
									  <span class="add-on">人</span>							
								</div>	
							</td>
						</tr>
						<tr>
							<td>
								<table class="table">
									<thead>
										<tr>
											<th>窗口一</th>
											<th>窗口二</th>
											<th>窗口三</th>
											<th>窗口四</th>
											<th>窗口五</th>
											<th>窗口六</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>
											   <div class="input-prepend input-append">
												  <input class="span2" id="appendedPrependedInput" type="text" style="width:70px">
												  <span class="add-on">人</span>							
											   </div>
											</td>
											<td>
											   <div class="input-prepend input-append">
												  <input class="span2" id="appendedPrependedInput" type="text" style="width:70px">
												  <span class="add-on">人</span>							
											   </div>
											</td>
											<td>
											   <div class="input-prepend input-append">
												  <input class="span2" id="appendedPrependedInput" type="text" style="width:70px">
												  <span class="add-on">人</span>							
											   </div>
											</td>
											<td>
											   <div class="input-prepend input-append">
												  <input class="span2" id="appendedPrependedInput" type="text" style="width:70px">
												  <span class="add-on">人</span>							
											   </div>
											</td>
											<td>
											   <div class="input-prepend input-append">
												  <input class="span2" id="appendedPrependedInput" type="text" style="width:70px">
												  <span class="add-on">人</span>							
											   </div>
											</td>
											<td>
											   <div class="input-prepend input-append">
												  <input class="span2" id="appendedPrependedInput" type="text" style="width:70px">
												  <span class="add-on">人</span>							
											   </div>
											</td>
										</tr>
									</tbody>
								</table>
							</td>
						</tr>
					</table>
					<!--------------------------------用Chart.js制作图表----------------------------------->
					<div style="width:600px;height:600px;">
						<canvas id="doughnut" height="300" width="200"></canvas>
						<canvas id="line" height="300" width="200"></canvas>
						<canvas id="polarArea" height="300" width="200"></canvas>
						<canvas id="bar" height="300" width="200"></canvas>
						<canvas id="pie" height="300" width="200"></canvas>
						<canvas id="radar" height="300" width="200"></canvas>
					</div>
			
			
					<script>		
							var doughnutData = [
									{
										value: 30,
										color:"#F7464A"
									},
									{
										value : 50,
										color : "#46BFBD"
									},
									{
										value : 100,
										color : "#FDB45C"
									},
									{
										value : 40,
										color : "#949FB1"
									},
									{
										value : 120,
										color : "#4D5360"
									}
								
								];
							var lineChartData = {
								labels : ["","","","","","",""],
								datasets : [
									{
										fillColor : "rgba(220,220,220,0.5)",
										strokeColor : "rgba(220,220,220,1)",
										pointColor : "rgba(220,220,220,1)",
										pointStrokeColor : "#fff",
										data : [65,59,90,81,56,55,40]
									},
									{
										fillColor : "rgba(151,187,205,0.5)",
										strokeColor : "rgba(151,187,205,1)",
										pointColor : "rgba(151,187,205,1)",
										pointStrokeColor : "#fff",
										data : [28,48,40,19,96,27,100]
									}
								]
								
							};
							var pieData = [
									{
										value: 30,
										color:"#F38630"
									},
									{
										value : 50,
										color : "#E0E4CC"
									},
									{
										value : 100,
										color : "#69D2E7"
									}
								
								];
							var barChartData = {
								labels : ["January","February","March","April","May","June","July"],
								datasets : [
									{
										fillColor : "rgba(220,220,220,0.5)",
										strokeColor : "rgba(220,220,220,1)",
										data : [65,59,90,81,56,55,40]
									},
									{
										fillColor : "rgba(151,187,205,0.5)",
										strokeColor : "rgba(151,187,205,1)",
										data : [28,48,40,19,96,27,100]
									}
								]
								
							};
						var chartData = [
								{
									value : Math.random(),
									color: "#D97041"
								},
								{
									value : Math.random(),
									color: "#C7604C"
								},
								{
									value : Math.random(),
									color: "#21323D"
								},
								{
									value : Math.random(),
									color: "#9D9B7F"
								},
								{
									value : Math.random(),
									color: "#7D4F6D"
								},
								{
									value : Math.random(),
									color: "#584A5E"
								}
							];
							var radarChartData = {
								labels : ["","","","","","",""],
								datasets : [
									{
										fillColor : "rgba(220,220,220,0.5)",
										strokeColor : "rgba(220,220,220,1)",
										pointColor : "rgba(220,220,220,1)",
										pointStrokeColor : "#fff",
										data : [65,59,90,81,56,55,40]
									},
									{
										fillColor : "rgba(151,187,205,0.5)",
										strokeColor : "rgba(151,187,205,1)",
										pointColor : "rgba(151,187,205,1)",
										pointStrokeColor : "#fff",
										data : [28,48,40,19,96,27,100]
									}
								]
								
							};
							new Chart(document.getElementById("doughnut").getContext("2d")).Doughnut(doughnutData);
							new Chart(document.getElementById("line").getContext("2d")).Line(lineChartData);
							new Chart(document.getElementById("radar").getContext("2d")).Radar(radarChartData);
							new Chart(document.getElementById("polarArea").getContext("2d")).PolarArea(chartData);
							new Chart(document.getElementById("bar").getContext("2d")).Bar(barChartData);
							new Chart(document.getElementById("pie").getContext("2d")).Pie(pieData);
					</script>
				
					<!------------------------------------------------------------------------------------->
					</div>
					<div class="tab-pane fade" id="dropdown2">
					  <table>
						<tr>
							<td>
								<div class="input-prepend input-append">
									  <span class="add-on">历史预约总人数：</span>
									  <input class="span2" id="appendedPrependedInput" type="text" style="width:70px">
									  <span class="add-on">人</span>							
								</div>	
							</td>
						</tr>
						<tr>
							<td>
								<table class="table">
									<thead>
										<tr>
											<th>窗口一</th>
											<th>窗口二</th>
											<th>窗口三</th>
											<th>窗口四</th>
											<th>窗口五</th>
											<th>窗口六</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>
											   <div class="input-prepend input-append">
												  <input class="span2" id="appendedPrependedInput" type="text" style="width:70px">
												  <span class="add-on">人</span>							
											   </div>
											</td>
											<td>
											   <div class="input-prepend input-append">
												  <input class="span2" id="appendedPrependedInput" type="text" style="width:70px">
												  <span class="add-on">人</span>							
											   </div>
											</td>
											<td>
											   <div class="input-prepend input-append">
												  <input class="span2" id="appendedPrependedInput" type="text" style="width:70px">
												  <span class="add-on">人</span>							
											   </div>
											</td>
											<td>
											   <div class="input-prepend input-append">
												  <input class="span2" id="appendedPrependedInput" type="text" style="width:70px">
												  <span class="add-on">人</span>							
											   </div>
											</td>
											<td>
											   <div class="input-prepend input-append">
												  <input class="span2" id="appendedPrependedInput" type="text" style="width:70px">
												  <span class="add-on">人</span>							
											   </div>
											</td>
											<td>
											   <div class="input-prepend input-append">
												  <input class="span2" id="appendedPrependedInput" type="text" style="width:70px">
												  <span class="add-on">人</span>							
											   </div>
											</td>
										</tr>
									</tbody>
								</table>
							</td>
						</tr>
					</table>
					<!--------------------------------用Chart.js制作图表----------------------------------->
					<div style="width:600px;height:600px;">
						<canvas id="doughnut2" height="300" width="200"></canvas>
						<canvas id="line2" height="300" width="200"></canvas>
						<canvas id="polarArea2" height="300" width="200"></canvas>
						<canvas id="bar2" height="300" width="200"></canvas>
						<canvas id="pie2" height="300" width="200"></canvas>
						<canvas id="radar2" height="300" width="200"></canvas>
					</div>
			
			
					<script>
				
						var doughnutData = [
								{
									value: 30,
									color:"#F7464A"
								},
								{
									value : 50,
									color : "#46BFBD"
								},
								{
									value : 100,
									color : "#FDB45C"
								},
								{
									value : 40,
									color : "#949FB1"
								},
								{
									value : 120,
									color : "#4D5360"
								}
							
							];
						var lineChartData = {
							labels : ["","","","","","",""],
							datasets : [
								{
									fillColor : "rgba(220,220,220,0.5)",
									strokeColor : "rgba(220,220,220,1)",
									pointColor : "rgba(220,220,220,1)",
									pointStrokeColor : "#fff",
									data : [65,59,90,81,56,55,40]
								},
								{
									fillColor : "rgba(151,187,205,0.5)",
									strokeColor : "rgba(151,187,205,1)",
									pointColor : "rgba(151,187,205,1)",
									pointStrokeColor : "#fff",
									data : [28,48,40,19,96,27,100]
								}
							]
							
						};
						var pieData = [
								{
									value: 30,
									color:"#F38630"
								},
								{
									value : 50,
									color : "#E0E4CC"
								},
								{
									value : 100,
									color : "#69D2E7"
								}
							
							];
						var barChartData = {
							labels : ["January","February","March","April","May","June","July"],
							datasets : [
								{
									fillColor : "rgba(220,220,220,0.5)",
									strokeColor : "rgba(220,220,220,1)",
									data : [65,59,90,81,56,55,40]
								},
								{
									fillColor : "rgba(151,187,205,0.5)",
									strokeColor : "rgba(151,187,205,1)",
									data : [28,48,40,19,96,27,100]
								}
							]
							
						};
					var chartData = [
							{
								value : Math.random(),
								color: "#D97041"
							},
							{
								value : Math.random(),
								color: "#C7604C"
							},
							{
								value : Math.random(),
								color: "#21323D"
							},
							{
								value : Math.random(),
								color: "#9D9B7F"
							},
							{
								value : Math.random(),
								color: "#7D4F6D"
							},
							{
								value : Math.random(),
								color: "#584A5E"
							}
						];
						var radarChartData = {
							labels : ["","","","","","",""],
							datasets : [
								{
									fillColor : "rgba(220,220,220,0.5)",
									strokeColor : "rgba(220,220,220,1)",
									pointColor : "rgba(220,220,220,1)",
									pointStrokeColor : "#fff",
									data : [65,59,90,81,56,55,40]
								},
								{
									fillColor : "rgba(151,187,205,0.5)",
									strokeColor : "rgba(151,187,205,1)",
									pointColor : "rgba(151,187,205,1)",
									pointStrokeColor : "#fff",
									data : [28,48,40,19,96,27,100]
								}
							]
							
						};
					new Chart(document.getElementById("doughnut2").getContext("2d")).Doughnut(doughnutData);
					new Chart(document.getElementById("line2").getContext("2d")).Line(lineChartData);
					new Chart(document.getElementById("radar2").getContext("2d")).Radar(radarChartData);
					new Chart(document.getElementById("polarArea2").getContext("2d")).PolarArea(chartData);
					new Chart(document.getElementById("bar2").getContext("2d")).Bar(barChartData);
					new Chart(document.getElementById("pie2").getContext("2d")).Pie(pieData);
				</script>
				
				<!------------------------------------------------------------------------------------->
              </div>
        </div>
		<!--弹出修改对话框-->
		<div id="nowEdit" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="width:1000px;margin-left:-35%">
		  <div class="modal-header">
			<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
			<h3 id="nowLabel">修改当前预约</h3>
		  </div>
		  <div class="modal-body">
		   <form style="margin:10px 10px">
			<table border="0px" width="100%">
				<tr>
					<td width="8%" class="receipt">预约单号:</td>
					<td width="30%">000000</td>
					<td width="9%" class="receipt">预约时间：</td>
					<td width="35%">2013-04-01&nbsp;&nbsp;&nbsp;8:00-8:30</td>
					<td width="8%" class="receipt">预约窗口:</td>
					<td width="10%">窗口一</td>
				</tr>
			</table>
			<table width="100%" border="1px">
			  <tr align="center">
				<td><table width="100%" border="0">
				  <tr>
					<td width="12%" class="receipt"><label class="control-label" for="t1">报销人工号</label></td>
					<td width="17%"><input name="text" type="text" id="t1" class="input-small editTableInput" placeholder="报销人工号"></td>
					<td class="receipt"><label class="control-label" for="t2">姓名</label></td>					
					<td width="17%"><input name="text" type="text" id="t2" class="input-small editTableInput" placeholder="姓名"></td>
					<td colspan="2" class="receipt"><label class="control-label" for="t3">联系电话</label></td>
					<td width="24%"><input name="text" type="text" id="t3" class="input editTableInput" placeholder="联系电话"></td>
				  </tr>
				  <tr>
					<td class="receipt"><label class="control-label" for="t4">项目编号</label></td>
					<td><input name="text" type="text" id="t4" class="input-small editTableInput" placeholder="项目编号"></td>
					<td>&nbsp;</td>
					<td class="receipt"><label class="control-label" for="t5">附件张数</label></td>
					<td colspan="3"><input name="text" type="text" id="t5" class="input-small editTableInput" placeholder="附件张数"></td>
				  </tr>
				  <tr>
					<td class="receipt"><label class="control-label" for="t1">预约报销总金额</label></td>
					<td class="receipt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;大写金额</td>
					<td colspan="2"><input name="text" type="text" id="t6" class="input-small editTableInput" placeholder="大写金额"></td>
					<td width="2%" class="receipt">&yen;</td>
					<td width="14%">
						<div class="input-append">
 						  <input class="span2" id="appendedInput" type="text">
						  <span class="add-on">.00</span>
						</div>
					</td>
					<td>&nbsp;</td>
				  </tr>
				  <tr>
					<td class="receipt"><label class="control-label" for="t7">实际报销总金额</label></td>
					<td colspan="6">
							<div class="input-prepend input-append">
								<span class="add-on">&yen;</span>
									<input class="span2" id="t7" type="text">
								<span class="add-on">.00元</span>
							</div>
					</td>
				  </tr>
				</table></td>
			  </tr>
			  <tr>
				<td><table width="100%" border="0">
				  <tr>
					<td width="14%" class="receipt"><label class="control-label" for="t8">办公用品费</label></td>
					<td width="56%">
						<div class="input-prepend input-append">
							<span class="add-on">&yen;</span>
								<input class="span2" id="t8" type="text">
							<span class="add-on">.00元</span>						
						</div>					
					</td>
					<td width="8%">&nbsp;</td>
					<td width="22%">&nbsp;</td>
				  </tr>
				  <tr>
					<td class="receipt"><label class="control-label" for="t9">交通费</label></td>
					<td>
						<div class="input-prepend input-append">
							<span class="add-on">&yen;</span>
								<input class="span2" id="t9" type="text">
							<span class="add-on">.00元</span>						</div>					</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
				  </tr>
				  <tr>
					<td class="receipt"><label class="control-label" for="t10">临时聘用人员劳务费</label></td>
					<td>
						<div class="input-prepend input-append">
							<span class="add-on">&yen;</span>
								<input class="span2" id="t10" type="text">
							<span class="add-on">.00元</span>						
						</div>					
					</td>
					<td class="receipt"><label class="control-label" for="t11">其它酬金</label></td>
					<td>
						<div class="input-prepend input-append">
							<span class="add-on">&yen;</span>
							<input name="text2" type="text" class="span2" id="t11">
							<span class="add-on">.00元</span>						
						</div>				
					</td>
				  </tr>
				</table></td>
			  </tr>
			  <tr>
				<td><table width="100%" border="0">
				  <tr>
					<td width="15%" class="receipt"><label class="control-label" for="t12">支付方式</label></td>
					<td width="14%"><input name="text" type="text" id="t12" class="input-small editTableInput" placeholder="支付方式"></td>
					<td width="25%">&nbsp;</td>
					<td width="46%">&nbsp;</td>
				  </tr>
				  <tr>
					<td class="receipt">工号</td>
					<td>&nbsp;</td>
					<td class="receipt">姓名</td>
					<td class="receipt">转卡金额</td>
				  </tr>
				  <tr>
					<td>00001</td>
					<td>&nbsp;</td>
					<td>张三</td>
					<td>100.00</td>
				  </tr>
				  <tr>
					<td>00002</td>
					<td>&nbsp;</td>
					<td>李四</td>
					<td>200.00</td>
				  </tr>
				  <tr>
					<td>00003</td>
					<td>&nbsp;</td>
					<td>王五</td>
					<td>300.00</td>
				  </tr>
				</table></td>
			  </tr>
			  <tr>
				<td><table width="100%" border="0">
				  <tr>
					<td width="5%" class="receipt">报销单</td>
					<td colspan="8">&nbsp;</td>
				  </tr>
				  <tr>
					<td>&nbsp;</td>
					<td width="7%" class="receipt">单位公章</td>
					<td width="14%"><h6  style="text-decoration:underline"><pre>            </pre></h6></td>
					<td width="9%" class="receipt">经办人签字</td>
					<td width="16%"><h6  style="text-decoration:underline"><pre>            </pre></h6></td>
					<td width="11%" class="receipt">验收人签字</td>
					<<td width="12%"><h6  style="text-decoration:underline"><pre>            </pre></h6></td>
					<td width="13%" class="receipt">项目负责人签字</td>
					<td width="13%"><h6  style="text-decoration:underline"><pre>            </pre></h6></td>
				  </tr>
				</table></td>
			  </tr>
			</table>
	      </div>
		  <div class="modal-footer">
			<button class="btn" data-dismiss="modal" aria-hidden="true">关闭</button>
			<button class="btn btn-primary">保存</button>
		  </div>	
	</form>
	</div>
	<!---弹出查询历史预约的详细信息-->
	<div id="historyDetail" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="width:1000px;margin-left:-35%">
		  <div class="modal-header">
			<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
			<h3 id="historyLabel">历史预约信息</h3>
		  </div>
		  <div class="modal-body">
		   <form style="margin:10px 10px">
			<table border="1px" width="100%">
				<tr>
					<td width="8%" class="receipt">预约单号:</td>
					<td width="30%">000000</td>
					<td width="9%" class="receipt">预约时间：</td>
					<td width="35%">2013-04-01&nbsp;&nbsp;&nbsp;8:00-8:30</td>
					<td width="8%" class="receipt">预约窗口:</td>
					<td width="10%">窗口一</td>
				</tr>
			</table>
			<br>
			<table width="100%" border="1px">
			  <tr align="center">
				<td><table width="100%" border="0">
				  <tr>
					<td width="12%" class="receipt"><label class="control-label" for="t1">报销人工号</label></td>
					<td width="17%"><input name="text" type="text" id="t1" class="input-small editTableInput" placeholder="报销人工号"></td>
					<td class="receipt"><label class="control-label" for="t2">姓名</label></td>					
					<td width="17%"><input name="text" type="text" id="t2" class="input-small editTableInput" placeholder="姓名"></td>
					<td colspan="2" class="receipt"><label class="control-label" for="t3">联系电话</label></td>
					<td width="24%"><input name="text" type="text" id="t3" class="input editTableInput" placeholder="联系电话"></td>
				  </tr>
				  <tr>
					<td class="receipt"><label class="control-label" for="t4">项目编号</label></td>
					<td><input name="text" type="text" id="t4" class="input-small editTableInput" placeholder="项目编号"></td>
					<td>&nbsp;</td>
					<td class="receipt"><label class="control-label" for="t5">附件张数</label></td>
					<td colspan="3"><input name="text" type="text" id="t5" class="input-small editTableInput" placeholder="附件张数"></td>
				  </tr>
				  <tr>
					<td class="receipt"><label class="control-label" for="t1">预约报销总金额</label></td>
					<td class="receipt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;大写金额</td>
					<td colspan="2"><input name="text" type="text" id="t6" class="input-small editTableInput" placeholder="大写金额"></td>
					<td width="2%" class="receipt">&yen;</td>
					<td width="14%">
						<div class="input-append">
 						  <input class="span2" id="appendedInput" type="text">
						  <span class="add-on">.00</span>
						</div>
					</td>
					<td>&nbsp;</td>
				  </tr>
				  <tr>
					<td class="receipt"><label class="control-label" for="t7">实际报销总金额</label></td>
					<td colspan="6">
							<div class="input-prepend input-append">
								<span class="add-on">&yen;</span>
									<input class="span2" id="t7" type="text">
								<span class="add-on">.00元</span>
							</div>
					</td>
				  </tr>
				</table></td>
			  </tr>
			 </table>
			 <br>
			 <table width="100%" border="1px">
			  <tr>
				<td><table width="100%" border="0">
				  <tr>
					<td width="14%" class="receipt"><label class="control-label" for="t8">办公用品费</label></td>
					<td width="56%">
						<div class="input-prepend input-append">
							<span class="add-on">&yen;</span>
								<input class="span2" id="t8" type="text">
							<span class="add-on">.00元</span>						
						</div>					
					</td>
					<td width="8%">&nbsp;</td>
					<td width="22%">&nbsp;</td>
				  </tr>
				  <tr>
					<td class="receipt"><label class="control-label" for="t9">交通费</label></td>
					<td>
						<div class="input-prepend input-append">
							<span class="add-on">&yen;</span>
								<input class="span2" id="t9" type="text">
							<span class="add-on">.00元</span>						</div>					</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
				  </tr>
				  <tr>
					<td class="receipt"><label class="control-label" for="t10">临时聘用人员劳务费</label></td>
					<td>
						<div class="input-prepend input-append">
							<span class="add-on">&yen;</span>
								<input class="span2" id="t10" type="text">
							<span class="add-on">.00元</span>						
						</div>					
					</td>
					<td class="receipt"><label class="control-label" for="t11">其它酬金</label></td>
					<td>
						<div class="input-prepend input-append">
							<span class="add-on">&yen;</span>
							<input name="text2" type="text" class="span2" id="t11">
							<span class="add-on">.00元</span>						
						</div>				
					</td>
				  </tr>
				</table></td>
			  </tr>
			 </table>
			 <br>
			 <table width="100%" border="1px">
			  <tr>
				<td><table width="100%" border="0">
				  <tr>
					<td width="15%" class="receipt"><label class="control-label" for="t12">支付方式</label></td>
					<td width="14%"><input name="text" type="text" id="t12" class="input-small editTableInput" placeholder="支付方式"></td>
					<td width="25%">&nbsp;</td>
					<td width="46%">&nbsp;</td>
				  </tr>
				  <tr>
					<td class="receipt">工号</td>
					<td>&nbsp;</td>
					<td class="receipt">姓名</td>
					<td class="receipt">转卡金额</td>
				  </tr>
				  <tr>
					<td>00001</td>
					<td>&nbsp;</td>
					<td>张三</td>
					<td>100.00</td>
				  </tr>
				  <tr>
					<td>00002</td>
					<td>&nbsp;</td>
					<td>李四</td>
					<td>200.00</td>
				  </tr>
				  <tr>
					<td>00003</td>
					<td>&nbsp;</td>
					<td>王五</td>
					<td>300.00</td>
				  </tr>
				</table>
				</td>
			  </tr>
			 </table>
			 <br>
			 <table width="100%" border="1px">
			  <tr>
				<td>
				<table width="100%" border="0">
				  <tr>
					<td width="5%" class="receipt">报销单</td>
					<td colspan="8">&nbsp;</td>
				  </tr>
				  <tr>
					<td>&nbsp;</td>
					<td width="7%" class="receipt">单位公章</td>
					<td width="14%"><h6  style="text-decoration:underline"><pre>            </pre></h6></td>
					<td width="9%" class="receipt">经办人签字</td>
					<td width="16%"><h6  style="text-decoration:underline"><pre>            </pre></h6></td>
					<td width="11%" class="receipt">验收人签字</td>
					<<td width="12%"><h6  style="text-decoration:underline"><pre>            </pre></h6></td>
					<td width="13%" class="receipt">项目负责人签字</td>
					<td width="13%"><h6  style="text-decoration:underline"><pre>            </pre></h6></td>
				  </tr>
				</table>
				</td>
			  </tr>
			</table>
		  </div>
		  <div class="modal-footer">
			<button class="btn" data-dismiss="modal" aria-hidden="true">关闭</button>
			<button class="btn btn-primary">保存</button>
		  </div>
		  </form>
	</div>
	<script src="js/jquery-1.9.1.js"></script>
	   <!-- Load JS here for greater good =============================-->
   <script src="js/bootstrap.min.js"></script>
    <script>
   	$('.prove').popover();
	$('.tiptip').tooltip();
   </script>

</body>
</html>
