<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>选择预约时间和窗口</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap -->
    <link href="css/bootstrap.css" rel="stylesheet" media="screen">
	<link href="css/mycss.css" rel="stylesheet" media="screen">
	<!--<link href="css/flat-ui.css" rel="stylesheet">-->
	<!--<link href="css/bootstrap.css" rel="stylesheet">-->
	<link rel="shortcut icon" href="images/favicon.ico">
	<!--<link rel="apple-touch-icon-precomposed" sizes="144x144" href="img/glyphicons-halflings.png">-->
  </head>
  <body style="margin:0px auto;width:80%;min-height:1200px">

  	   <div class="masthead">
        <h3 class="muted"> 用户模块</h3>
        <div class="navbar">
          <div class="navbar-inner">
            <div class="container">
              <ul class="nav">
                <li> <a href="#">首页</a></li>
                <li class="active"><a href="#">预约</a></li>
                <li><a href="#">我的预定</a></li>
                <li><a href="#">退出</a></li>
                <li><a href="#">帮助</a></li>                
              </ul>
            </div>
          </div>
        </div><!-- /.navbar -->
      </div>
	   <ul class="pager">
 		 <li class="previous">
  		    <a href="#">&larr; Older</a>
		 </li>
		 <li class="next">
   	       <a href="#">Newer &rarr;</a>
  		 </li>
       </ul>
	  	<ul class="breadcrumb">
		 <li><a href="#">预约</a> <span class="divider">/</span></li>
			<li><a href="#">预约信息</a> <span class="divider">/</span></li>
			<li class="active">第五步：预约时间和窗口</li>
		</ul>
	  
	 <form name="amTime" class="form-horizontal" action="OBTimeClServlet">
		 <table class="table-bordered" width="100%">
		   	<tr>
				<td>
				
				<a href="#" class="tab-pane tiptip" style="text-decoration:none" data-toggle="tooltip" data-placement="top" title="注意范围在***到***之内！"><span class="label label-important"><h3>选择预约时间和窗口</h3></span></a>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<span class="badge badge-important">时间</span>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<select name="year2" class="time-select">
				  <option value="2013">2013</option>
				  <option value="2014">2014</option>
				  <option value="2015">2015</option>
				  <option value="2016">2016</option>
				  <option value="2017">2017</option>
				  <option value="2018">2018</option>
				</select>
				&nbsp;年&nbsp;&nbsp;&nbsp; 
				<select name="month2" class="time-select">
				  <option value="1">01</option>
				  <option value="2">02</option>
				  <option value="3">03</option>
				  <option value="4">04</option>
				  <option value="5">05</option>
				  <option value="6">06</option>
				  <option value="7">07</option>
				  <option value="8">08</option>
				  <option value="9">09</option>
				  <option value="10">10</option>
				  <option value="11">11</option>
				  <option value="12">12</option>
				</select>
				&nbsp;月&nbsp;&nbsp;&nbsp; 
				<select name="day2" class="time-select">
				  <option value="1">01</option>
				  <option value="2" >02</option>
				  <option value="3" >03</option>
				  <option value="4" >04</option>
				  <option value="5" >05</option>
				  <option value="6" >06</option>
				  <option value="7" >07</option>
				  <option value="8" >08</option>
				  <option value="9" >09</option>
				  <option value="10" >10</option>
				  <option value="11" >11</option>
				  <option value="12" >12</option>
				  <option value="13" >13</option>
				  <option value="14" >14</option>
				  <option value="15" >15</option>
				  <option value="16" >16</option>
				  <option value="17" >17</option>
				  <option value="18" >18</option>
				  <option value="19" >19</option>
				  <option value="20" >20</option>
				  <option value="21" >21</option>
				  <option value="22" >22</option>
				  <option value="23" >23</option>
				  <option value="24" >24</option>
				  <option value="25" >25</option>
				  <option value="26" >26</option>
				  <option value="27" >27</option>
				  <option value="28" >28</option>
				  <option value="29" >29</option>
				  <option value="30" >30</option>
				  <option value="31" >31</option>
				</select>
				&nbsp;日
		
				<script language="Javascript">
					if (this.amTime.month2!="")
					{
						nowtime();
					}
				</script>				  　　　　　　　
					
					<span class="badge badge-important">窗口</span>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<!-- <h5><a href="#" class="tab-pane tiptip" style="text-decoration:none" data-toggle="tooltip" data-placement="top" title="注意范围在***到***之内！">2.选择地点</a></h5> -->
					<select name="window" class="time-select" style="margin:10px 20px" name="window">
					  <option value="1">窗口一</option>
					  <option value="2">窗口二</option>
					  <option value="3">窗口三</option>
					  <option value="4">窗口四</option>
					  <option value="5">窗口五</option>
					  <option value="6">窗口六</option>
					</select>
					
			    </td>
		   </tr>
		   <tr>
		   	<td>
		   		<div class="alert alert-error">
						<h5>
							<table border="0px">
								<tr>
									<td width="80%">
										<span class="label label-important">提示</span>&nbsp;&nbsp;&nbsp;确定时间和窗口后请点击“搜索”进行检索！
									</td>
									<td>
										<button type="submit" style="width:200px" class="btn  btn-large btn-block" id="jiansuo">搜索</button>
									</td>
								</tr>
							</table>
						</h5>
				 </div>	   		
		   	</td>
		   </tr>
		  </table>	
		  </form>
		  <form action="OBTimeClServlet">
		  <!--显示窗口*从*年*月*日到*年*月*日的预约情况（一般为某一天内的）-->
		
		  <table class="table" border="0px" id="dateTable">
		  	<thead style="background-color:#fafafa">
				<tr class="receipe">
					<th>日期</th>
					<th>时间段</th>
					<th style="text-align:center">已预约人数/可预约人数</th>
					<th>剩余额度</th>
					<th><button class="btn" type="button">操作</button></th>
				</tr>
			</thead>
			<tbody>
				<%
					//获得的年、月、日(可能是用户提交的也可能是当前的)
					String year=(String)session.getAttribute("year");
					String month=(String)session.getAttribute("month");
					String day=(String)session.getAttribute("day");
					String[] obNum=new String[18];
					//循环地得到各个时间段预约的人数
					for(int k=0;k<obNum.length;k++){
						obNum[k]=(String)session.getAttribute("obNum"+k);
					}

					int intYear=Integer.parseInt(year);
					int intMonth=Integer.parseInt(month);
					int intDay=Integer.parseInt(day);
					//下面生成时各个时间段预约情况
					String[] minutes={"00","30"};
					int flag=0;
					for(int i=0;i<9;i++){
						for(int j=0;j<2;j++){
							out.println("<tr>");
							out.println("<td>"+intYear+"-"+(intMonth>=10?intMonth:"0"+intMonth)+"-"+(intDay>=10?intDay:"0"+intDay)+"</td>");
							out.println("<td>"+(8+i)+":"+minutes[j]+"-"+(8+i+j)+":"+minutes[Math.abs(j-1)]+"</td>");
							out.println("<td style=\"text-align:center\">"+obNum[i+j]+"/3</td>");
							out.println("<td color=\"green\">"+(3-Integer.parseInt(obNum[i+j]))+"</td>");
							out.println("<form action=\"OBTimeClServlet\" method=\"get\">");
							out.println("<td><button type=\"submit\" class=\"btn\" name=\"obTime\" value=\""+(8+i)+":"+minutes[j]+":00\">预约</td>");
							out.println("</form>");
							out.println("</tr>");
							flag++;
						}					
					}
				%>
				
			</tbody>
					
		  </table>
		 
		<!--下一步-->
		<table class="table" style="margin:0px auto;width:100%">
		 <thead>
			<tr>
				<th>
					<button type="button" class="btn btn-primary">保存(暂时不起作用)</button>
				</th>
				<th>
					 <button type="button" class="btn btn-success"><a href="OBSubmitAccountClServlet">下一步</a></button>
				</th>
				<th>
					 <button type="button" class="btn btn-warning">取消</button>
				</th>
			</tr>
		 </thead>
		 <tbody>
			<tr>
				<td>
				</td>
				<td>
				</td>
				<td>
				</td>
			</tr>
		 </tbody>
		</table>
 </form>
	<script src="js/jquery-1.9.1.js"></script>
	   <!-- Load JS here for greater good =============================-->
   <script src="js/bootstrap.min.js"></script>
    <script>
   	$('.prove').popover();
	$('.tiptip').tooltip();
	/*
	$("#jiansuo").on("click",function(){
		var year=$("select[name=year2]").prop("value");
		var month=$("select[name=month2]").prop("value");
		var day=$("select[name=day2]").prop("value");
		var string = [];
		for()
		string.push("<tr><td>"+year+"-"+month+"-"+day+"</td><td>15:00-15:30</td><td>0/3</td><td>3</td><td>预约</td></tr>");
		$("#dateTable").html(string[0]);
		
		
		document.write("<tr>");
		document.write("<td>"+year+"-"+month+"-"+day+"</td>");
		document.write("<td>16:00-16:30</td>");
		document.write("<td>0/3</td>");
		document.write("<td>3</td>");
		document.write("<td>预约</td>	");
		document.write("</tr>");
		
	});
	    //下面的jquery真心没用！
	$("#next").on("click", function(){
		var value;
		$("input[name=optionsRadios]").each(function(){
			if (this.checked) value = this.value;
		});
		this.href+= "?mode=" + value;
	});
	 */
 </script>
  </body>
</html>
