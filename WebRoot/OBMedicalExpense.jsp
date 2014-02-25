<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
  <head>
    <title>医药费</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap -->
    <link href="css/bootstrap.css" rel="stylesheet" media="screen">
	<!--<link href="css/flat-ui.css" rel="stylesheet">-->
	<link href="css/mycss.css" rel="stylesheet" media="screen">
	<!--<link href="css/bootstrap.css" rel="stylesheet">-->
	<link rel="shortcut icon" href="images/favicon.ico">
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
			  <li class="active">第三步：填写报销费用详细</li>
		</ul>
	  <h4 class="muted">报销类型：医药费项目</h4>
	  <form class="form-horizontal">
	   	<div class="tabbable tabs-right"> <!-- Only required for left/right tabs -->
  		<ul class="nav nav-tabs">
   		 <li class="active"><a href="#tab1" data-toggle="tab">支出</a></li>
    	 <li><a href="#tab2" data-toggle="tab">收入</a></li>
		 <li><a href="#tab3" data-toggle="tab">项目余额</a></li>
 	    </ul>
 		 <div class="tab-content">
   			 <!--支出-->
			 <div class="tab-pane fade in active" id="tab1">
   			 <table width="100%" border="1">
				  <tr>
					<td height="157" colspan="2">
					 <pre><h4 class="muted"><span class="label label-info">提示</span>&nbsp;&nbsp;医药费报销相关说明：</h4></pre>
					 <div class="alert alert-error">
						<h6>
							仅限校医院报销！
						</h6>
					 </div>					
					</td>
				  </tr>
				  <tr>
				  	<td>
						<table width="100%" border="0">
						  <tr>
							<td width="20%">部门（院系、班级）</td>
							<td width="28%"><input class="input-medium" type="text" placeholder="车牌号码"></td>
							<td width="22%">报销人姓名</td>
							<td width="30%"><input class="input-small" type="text"></td>
						  </tr>
						  <tr>
							<td>其它</td>
							<td>
								<input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" >住院&nbsp;&nbsp;
								<input type="radio" name="optionsRadios" id="optionsRadios2" value="option2" >门诊
							</td>
						  </tr>
						  <tr>
							<td>实报金额（小写）</td>
								<td>
								<div class="input-prepend input-append">
								  <span class="add-on">&yen;</span>
								  <input class="span2" id="appendedPrependedInput" type="text" style="width:50px">
								  <span class="add-on">.00</span>
								</div>
							</td>
						  </tr>
						  <tr>
							<td>实报金额（大写）</td>
							<td><input class="input-large" type="text"></td>
						  </tr>
						  <tr>
							<td>报销人签名</td>
							<td>&nbsp;</td>
							<td>联系电话</td>
							<td>
								<input class="input-large" type="text">
							</td>
						  </tr>
						</table>
					</td>
				  </tr>
				</table>

			 </div>
			 
			 <!--收入-->
   			 <div class="tab-pane fade" id="tab2">
				
   			 </div>
			 <!--项目余额-->
			 <div class="tab-pane fade" id="tab3">
    			
   			 </div>
      	 </div>
	</div>
<!--下一步-->

	<div class="form-actions">
 	 <button type="submit" class="btn btn-primary">下一步</button>
	 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
 	 <button type="button" class="btn">取消</button>
	</div>

 </form>
	<script src="js/jquery-1.9.1.js"></script>
	   <!-- Load JS here for greater good =============================-->
   <script src="js/bootstrap.min.js"></script>
    <script>
   	$('.prove').popover();
	$('.tiptip').tooltip();
   </script>
  </body>
</html>
