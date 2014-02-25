<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html style="margin:0px auto;width:80%;min-height:1200px">
  <head>
    <title>报销预约首页</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
	  <link href="css/mycss.css" rel="stylesheet" media="screen">
    <script src="js/Chart.js"></script>
	<style>
		canvas{
		}
	</style>
  </head>
  <body>
  <%
		//防止用户的非法登陆
		String u=(String)session.getAttribute("sessioncheck");
		//如果用户没有登录
		if(u==null){
		//返回登陆界面
		response.sendRedirect("SignIn.jsp?err=1");
		return;
		}
  	   String strNum=(String)session.getAttribute("OBNum");
  	   //System.out.println("在OBHome中的到的num"+strNum);
  	   int num=Integer.parseInt(strNum);
  %>
  	   <div class="masthead">
        <h3 class="muted"> 用户模块</h3>
        <div class="navbar">
          <div class="navbar-inner">
            <div class="container">
              <ul class="nav">
                <li class="active"><a href="#">首页</a></li>
                <li><a href="OBStartClServlet">预约</a></li>
                <li><a href="#">我的预定</a></li>
                <li><a href="#">退出</a></li>
                <li><a href="#">帮助</a></li>                
              </ul>
            </div>
          </div>
        </div><!-- /.navbar -->
      </div>
	  <table border="0px" width="100%">
		<tr>
			<td  width="60%">
				<canvas id="canvas" height="450" width="450"></canvas>
				<script>
					var pieData = [
							{
								value: 48*7-<%=num%>,
								color:"#F38630"
							},
							{
								value : <%=num%>,
								color : "#E0E4CC"
							},
							/*
							{
								value : 100,
								color : "#69D2E7"
							}*/
						];
				var myPie = new Chart(document.getElementById("canvas").getContext("2d")).Pie(pieData);	
				</script>
			 </td>
			 <td>
				<table border="0px" class="receipt">
					<tr>
						<td>未来一周内可预约数&nbsp;&nbsp;&nbsp;</td>
						<td class="table pielabel1">
						
						</td>										 			
					</tr>
					<tr>
						<td>未来一周内已预约数&nbsp;&nbsp;&nbsp;</td>
						<td class="table pielabel2"></td>
					</tr>
				</table>
			 </td>
			</tr>
		</table>
    <script src="http://code.jquery.com/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>
