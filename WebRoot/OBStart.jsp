<%@ page language="java" import="java.util.*,com.OB.model.Tools" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
  <head>
    <title>预约操作页面</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="css/bootstrap.css" rel="stylesheet" media="screen">
	<link rel="shortcut icon" href="images/favicon.ico">
  </head>
   <%
		//防止用户的非法登陆
		String u=(String)session.getAttribute("sessioncheck");
		//如果用户没有登录
		if(u==null){
		//返回登陆界面
		//request.setCharacterEncoding("utf-8");
		response.sendRedirect("SignIn.jsp?err=1");
		return;
		}
		String ID=(String)session.getAttribute("username");
		String fName=(String)session.getAttribute("fName");			
  %>
  <body style="margin:0px auto;width:80%;min-height:1200px">
  	   <div class="masthead">
        <h3 class="muted"> 用户模块</h3>
        <div class="navbar">
          <div class="navbar-inner">
            <div class="container">
              <ul class="nav">
                <li> <a href="OBSignInClServlet">首页</a></li>
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
 		 <li class="previous disabled">
  		    <a href="#">&larr; Older</a>
		 </li>
		 <li class="next">
   	       <a href="#">Newer &rarr;</a>
  		 </li>
       </ul>
	  <ul class="breadcrumb">
	   <li><a href="#">预约</a> <span class="divider">/</span></li>
	   <li><a href="#">填写预约信息</a> <span class="divider">/</span></li>
	   <li class="active">第一步：填写联系信息</li>
	  </ul>
	  <form class="form-horizontal" action="OBStartClServlet" method="get">
		 <table class="table">
		  <tbody>
			<tr>
			  <td>
				<!--报销人工号-->
				<div class="control-group">
					<label class="control-label" for="reimbusementManId">报销人ID</label>
					<div class="controls">
					<input class="input" type="text" name="manID" id="reimbusementManId" value="<%=ID %>" placeholder="输入撤销人的ID" readonly>
					</div>
				</div>
			  </td>
			  <td>
				<!--报销人姓名-->
				<div class="control-group">
					<label class="control-label" for="reimbusementManNmae">报销人姓名</label>
					<div class="controls">
					<input class="input-small" name="Bname" type="text" id="reimbusementManNmae" value="<%=fName %>" placeholder="输入撤销人的姓名" readonly>
					</div>
				</div>
			  </td>
			</tr>
			<tr>
			  <td>
				<!--联系电话-->
				<div class="control-group">
					<label class="control-label" for="myphoneNum">手机号码</label>
					<div class="controls">
					<input type="text"  id="myphoneNum" placeholder="输入上手机号码" required name="phonenumber">
					</div>
				</div>
			  </td>
			  <td>
				<!--电子邮箱-->
				<div class="control-group">
					<label class="control-label" for="myemail">电子邮箱</label>
					<div class="controls">
					<input type="email" id="myemail" placeholder="输入电子邮箱" required name="email">
					</div>
				</div>
			  </td>
			</tr>
			<tr><td></td><td></td></tr>
		  </tbody>
		</table>

			 <!--选择报销类型-->
			<ul class="breadcrumb">
			  <li><a href="#">预约</a> <span class="divider">/</span></li>
			  <li><a href="#">预约信息</a> <span class="divider">/</span></li>
			  <li class="active">第二步：选择报销类型</li>
			</ul>
			<!--
			 <div class="btn-group">
			  <button class="btn">Action</button>
			  <button class="btn dropdown-toggle" data-toggle="dropdown">
				<span class="caret"></span>
			  </button>
			  <ul class="dropdown-menu">
				<li><a href="#">一般报销业务</a></li>
				<li><a href="#">差旅费业务</a></li>
				<li><a href="#">交通费业务</a></li>
				<li><a href="#">主办会议业务</a></li>
				<li><a href="#">医药费业务</a></li>
				<li><a href="#">校内结算业务</a></li>
				<li><a href="#">暂借款业务</a></li>
			  </ul>
			</div>
			-->
			<table class="table-bordered" style="margin:0px auto;width:75%">
			<tr>
				<td>
				<div class="span3">
					  <h4 class="demo-panel-title">报销类型</h4>
					  <label class="radio">
						<input type="radio" name="optionsRadios" id="optionsRadios1" value="1" checked>
						  <a href="#" class="tab-pane tiptip" style="text-decoration:none" data-toggle="tooltip" data-placement="right" title="项目预算申报的办公费、印刷费、邮电费、市内交通费、设备维修费等">
						 一般报销业务</a>
					  </label>
					  <label class="radio">
						<input type="radio" name="optionsRadios" id="optionsRadios2" value="2" >
						<a href="#" class="tab-pane tiptip" style="text-decoration:none" data-toggle="tooltip" data-placement="right" title="教职工出差按规定开支的车船费及补贴等。">
						 差旅费业务</a>
					  </label>
					  <label class="radio">
						<input type="radio" name="optionsRadios" id="optionsRadios3" value="3" >
						<a href="#" class="tab-pane tiptip" style="text-decoration:none" data-toggle="tooltip" data-placement="right" title="按规定开支的停车费、汽油费等。">
						 交通费业务</a>
					  </label>
					  <label class="radio">
						<input type="radio" name="optionsRadios" id="optionsRadios4" value="4">
						<a href="#" class="tab-pane tiptip" style="text-decoration:none" data-toggle="tooltip" data-placement="right" title="仅供校医院使用。">
						 医药费业务</a>
					  </label>	
					  <label class="radio">
						<input type="radio" name="optionsRadios" id="optionsRadios5" value="5" >
						<a href="#" class="tab-pane tiptip" style="text-decoration:none" data-toggle="tooltip" data-placement="right" title=单价800元以上须办理资产入库的各类设备、交通工具、图书资料等"。">
						暂借款业务</a>
					  </label>
					  <label class="radio">
						<input type="radio" name="optionsRadios" id="optionsRadios6" value="6" >
						<a href="#" class="tab-pane tiptip" style="text-decoration:none" data-toggle="tooltip" data-placement="right" title="自办会议中按规定开支的租赁、交通费文件资料印刷费等。">
						 主办会议</a> 
					  </label>
				</div> <!-- /radios span3 -->
				</td>
			</tr>
			<tr>
				<td>
					<table class="table-bordered">
					<tr>
						<td>
							<!--项目编号-->
							<div class="control-group">
								<label class="control-label" for="projectId" style="width:70px;margin-top:10px">项目编号</label>
								<div class="controls"  style="margin-left:90px">
									<input name="projectnum" class="input-small" type="text" id="projectId" placeholder="项目编号" style="width:70px;margin-top:10px">
								</div>
							</div>
						</td>
						<td>
							<!--附件数目-->
							<div class="control-group" >
								<label class="control-label" for="attachmentNum"  style="width:70px;margin-top:10px">附件数目</label>
								<div class="controls" style="margin-left:90px">
									<input  class="input-small" type="text" name="attachmentnum" id="attachmentNum" placeholder="附件数目" style="width:70px;margin-top:10px">
								</div>
							</div>
						</td>
					</tr>
					</table>
				</td>
			</tr>
		</table>
	<!--下一步-->
	<div class="form-actions">
	 <button type="submit" class="btn btn-primary">保存</button>
	 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
 	 <button type="button" class="btn btn-sussess"><a id="next" href="OBDecideServlet">下一步</a></button>
	 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
 	 <button type="reset" class="btn">取消</button>
	</div>
 </form>
  	<script src="js/jquery-1.9.1.js"></script>
	   <!-- Load JS here for greater good =============================-->
   <script src="js/bootstrap.min.js"></script>
    <script>
   	$('.prove').popover();
	$('.tiptip').tooltip();
	$("#next").on("click", function(){
		var value;
		$("input[name=optionsRadios]").each(function(){
			if (this.checked) value = this.value;
		});
		this.href+= "?mode=" + value;
	});
	//$("选择器").on("事件类型", function(){this.元素+=$("想要的选择器").   });
   </script>
    <!--[if lt IE 8]>
      <script src="js/icon-font-ie7.js"></script>
      <script src="js/icon-font-ie7-24.js"></script>
    <![endif]-->
  </body>
</html>

