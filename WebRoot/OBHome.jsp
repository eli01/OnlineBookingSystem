<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html style="margin:0px auto;width:80%;min-height:1200px">
  <head>
    <title>����ԤԼ��ҳ</title>
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
		//��ֹ�û��ķǷ���½
		String u=(String)session.getAttribute("sessioncheck");
		//����û�û�е�¼
		if(u==null){
		//���ص�½����
		response.sendRedirect("SignIn.jsp?err=1");
		return;
		}
  	   String strNum=(String)session.getAttribute("OBNum");
  	   //System.out.println("��OBHome�еĵ���num"+strNum);
  	   int num=Integer.parseInt(strNum);
  %>
  	   <div class="masthead">
        <h3 class="muted"> �û�ģ��</h3>
        <div class="navbar">
          <div class="navbar-inner">
            <div class="container">
              <ul class="nav">
                <li class="active"><a href="#">��ҳ</a></li>
                <li><a href="OBStartClServlet">ԤԼ</a></li>
                <li><a href="#">�ҵ�Ԥ��</a></li>
                <li><a href="#">�˳�</a></li>
                <li><a href="#">����</a></li>                
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
						<td>δ��һ���ڿ�ԤԼ��&nbsp;&nbsp;&nbsp;</td>
						<td class="table pielabel1">
						
						</td>										 			
					</tr>
					<tr>
						<td>δ��һ������ԤԼ��&nbsp;&nbsp;&nbsp;</td>
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
