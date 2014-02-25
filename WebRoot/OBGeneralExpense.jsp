<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
  <head>
    <title>一般费用报销金额</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap -->
    <link href="css/bootstrap.css" rel="stylesheet" media="screen">
	<!--<link href="css/flat-ui.css" rel="stylesheet">-->
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
	  <h4 class="muted">报销类型：一般报销费用项目</h4>
	  <form class="form-horizontal" action="OBDecideServlet">
	   	<div class="tabbable tabs-right"> <!-- Only required for left/right tabs -->
  		<ul class="nav nav-tabs">
   		 <li class="active"><a href="#tab1" data-toggle="tab">支出</a></li>
    	 <li><a href="#tab2" data-toggle="tab">收入</a></li>
		 <li><a href="#tab3" data-toggle="tab">项目余额</a></li>
 	    </ul>
 		 <div class="tab-content">
   			 <div class="tab-pane active" id="tab1">
     		<table class="table">
			<tr>
				<td>
					
					<h4><a href="#" class="tab-pane tiptip" style="text-decoration:none" data-toggle="tooltip" data-placement="right" title="包括办公用品费、报纸杂志资料费、2000元以下的办公用软件，办公是饮用水和其他办公费用。">1.办公费</a></h4>
					<!--办公费-->
					<table class="table-bordered">
						<tr>
							<td>
							<!--报刊杂志费用-->
								<div class="control-group">
									<label class="control-label" for="yiban1">报刊杂志资料</label>
									<div class="controls">
										<div class="input-prepend input-append">
  											<span class="add-on">&yen;</span>
  												<input class="span2" id="yiban1" name="yiban1" type="text">
 										    <span class="add-on">.00元</span>
										</div>
										<!--<input class="input-small" type="text" id="yiban1" placeholder="0.00">&nbsp;元-->
									</div>
								</div>
							</td>
						</tr>
						<tr>
							<td>
							<!--其他办公费-->
								<div class="control-group">
									<label class="control-label" for="yiban2">其它办公费</label>
									<div class="controls">
											<div class="input-prepend input-append">
  											<span class="add-on">&yen;</span>
  												<input class="span2" id="yiban2" name="yiban2" type="text">
 										    <span class="add-on">.00元</span>
										</div>
									</div>
								</div>
							</td>
						</tr>
		
					</table>
				<h4><a href="#" class="tab-pane tiptip" style="text-decoration:none" data-toggle="tooltip" data-placement="right" title="包括复印费、其他印刷费">2.印刷费</a></h4>
					<table class="table-bordered">
						<tr>
							<td>
								<div class="control-group">
									<label class="control-label" for="yiban3">资料讲义复印费</label>
									<div class="controls">
											<div class="input-prepend input-append">
  											<span class="add-on">&yen;</span>
  												<input class="span2" id="yiban3" name="yiban3" type="text">
 										    <span class="add-on">.00元</span>
										</div>
									</div>
								</div>
							</td>
						</tr>
						<tr>
							<td>
								<div class="control-group">
									<label class="control-label" for="yiban4">论文专著版面费</label>
									<div class="controls">
											<div class="input-prepend input-append">
  											<span class="add-on">&yen;</span>
  												<input class="span2" id="yiban4" name="yiban4" type="text">
 										    <span class="add-on">.00元</span>
										</div>
									</div>
								</div>
							</td>
						</tr>
		
					</table>
					<h4><a href="#" class="tab-pane tiptip" style="text-decoration:none" data-toggle="tooltip" data-placement="right" title="包括邮费、手机费、电话费、网络。">3.邮电费</a></h4>
					<table class="table-bordered">
						<tr>
							<td>
								<div class="control-group">
									<label class="control-label" for="yiban5">邮电费</label>
									<div class="controls">
											<div class="input-prepend input-append">
  											<span class="add-on">&yen;</span>
  												<input class="span2" id="yiban5" name="yiban5" type="text">
 										    <span class="add-on">.00元</span>
										</div>
									</div>
								</div>
							</td>
						</tr>
					</table>
					
				<h4><a href="#" class="tab-pane tiptip" style="text-decoration:none" data-toggle="tooltip" data-placement="right" title="校园楼宇，安保服务费。">4.物业管理费</a></h4>
					<table class="table-bordered">
						<tr>
							<td>
								<div class="control-group">
									<label class="control-label" for="yiban6">物业费</label>
									<div class="controls">
											<div class="input-prepend input-append">
  											<span class="add-on">&yen;</span>
  												<input class="span2" id="yiban6" name="yiban6" type="text">
 										    <span class="add-on">.00元</span>
										</div>
									</div>
								</div>
							</td>
						</tr>
						<tr>
							<td>
								<div class="control-group">
									<label class="control-label" for="yiban7">绿化卫生费</label>
									<div class="controls">
											<div class="input-prepend input-append">
  											<span class="add-on">&yen;</span>
  												<input class="span2" id="yiban7" name="yiban7" type="text">
 										    <span class="add-on">.00元</span>
										</div>
									</div>
								</div>
							</td>
						</tr>
					</table>
					<h4><a href="#" class="tab-pane tiptip" style="text-decoration:none" data-toggle="tooltip" data-placement="right" title="包包括市内交通费、出租车费、燃料费、路桥.停车费、车辆维修费、保险费、养路费、交通工具租用费、学生用车费含实习用车、其他交通费。私车的保险费和养路费不得报销。">5.交通费</a></h4>
					<table class="table-bordered">
						<tr>
							<td>
								<div class="control-group">
									<label class="control-label" for="yiban8">交通费</label>
									<div class="controls">
											<div class="input-prepend input-append">
  											<span class="add-on">&yen;</span>
  												<input class="span2" id="yiban8" name="yiban8" type="text">
 										    <span class="add-on">.00元</span>
										</div>
									</div>
								</div>
							</td>
						</tr>
					</table>
					<h4><a href="#" class="tab-pane tiptip" style="text-decoration:none" data-toggle="tooltip" data-placement="right" title=" 包括办公设备维修费、专用设备维修费、学生宿舍维修费、教学用房/科研用房维修费、基础设施维修费、实验室改建维修费、其他设施修缮费、公共用房装修费。">6.维修（护）费</a></h4>
					<table class="table-bordered">
						<tr>
							<td>
								<div class="control-group">
									<label class="control-label" for="yiban9">设备维修费</label>
									<div class="controls">
											<div class="input-prepend input-append">
  											<span class="add-on">&yen;</span>
  												<input class="span2" id="yiban9" name="yiban9" type="text">
 										    <span class="add-on">.00元</span>
										</div>
									</div>
								</div>
							</td>
						</tr>
						<tr>
							<td>
								<div class="control-group">
									<label class="control-label" for="yiban10">建筑物维修费</label>
									<div class="controls">
											<div class="input-prepend input-append">
  											<span class="add-on">&yen;</span>
  												<input class="span2" id="yiban10" name="yiban10" type="text">
 										    <span class="add-on">.00元</span>
										</div>
									</div>
								</div>
							</td>
						</tr>
						<tr>
							<td>
								<div class="control-group">
									<label class="control-label" for="yiban11">基础设施维修费</label>
									<div class="controls">
											<div class="input-prepend input-append">
  											<span class="add-on">&yen;</span>
  												<input class="span2" id="yiban11"  name="yiban11" type="text">
 										    <span class="add-on">.00元</span>
										</div>
									</div>
								</div>
							</td>
						</tr>
					
					</table>
					</td>
				</tr>
				<tr><td></td><td></td></tr>
			</table>
   			 </div>
			 
			 <!--收入-->
   			 <div class="tab-pane" id="tab2">
				 <table class="table">
					<tr>
						<td>
					<h4><a href="#" class="tab-pane tiptip" style="text-decoration:none" data-toggle="tooltip" data-placement="right" title="包括办公用品费、报纸杂志资料费、2000元以下的办公用软件，办公是饮用水和其他办公费用。">1.办公费</a></h4>
							<!--办公费-->
							<table class="table-bordered">
								<tr>
									<td>
									<!--报刊杂志费用-->
										<div class="control-group">
											<label class="control-label" for="yiban1">报刊杂志资料</label>
											<div class="controls">
													<div class="input-prepend input-append">
  											<span class="add-on">&yen;</span>
  												<input class="span2" id="yiban1" type="text">
 										    <span class="add-on">.00元</span>
										</div>
											</div>
										</div>
									</td>
								</tr>
								<tr>
									<td>
									<!--其他办公费-->
										<div class="control-group">
											<label class="control-label" for="yiban2">其它办公费</label>
											<div class="controls">
													<div class="input-prepend input-append">
  											<span class="add-on">&yen;</span>
  												<input class="span2" id="yiban2" type="text">
 										    <span class="add-on">.00元</span>
										</div>
											</div>
										</div>
									</td>
								</tr>
				
							</table>
					</td>
				</tr>
				</table>
   			 </div>
			 <!--项目余额-->
			 <div class="tab-pane" id="tab3">
    			 <table class="table">
					<tr>
						<td>
						<h4><a href="#" class="tab-pane tiptip" style="text-decoration:none" data-toggle="tooltip" data-placement="right" title="包括办公用品费、报纸杂志资料费、2000元以下的办公用软件，办公是饮用水和其他办公费用。">1.办公费</a></h4>
							<!--办公费-->
							<table class="table-bordered">
								<tr>
									<td>
									<!--报刊杂志费用-->
										<div class="control-group">
											<label class="control-label" for="yiban1">报刊杂志资料</label>
											<div class="controls">
												<div class="input-prepend input-append">
  													<span class="add-on">&yen;</span>
  														<input class="span2" id="yiban1" type="text">
 										    		<span class="add-on">.00元</span>
												</div>
											</div>
										</div>
									</td>
								</tr>
								<tr>
									<td>
									<!--其他办公费-->
										<div class="control-group">
											<label class="control-label" for="yiban2">其它办公费</label>
											<div class="controls">
												<div class="input-prepend input-append">
  													<span class="add-on">&yen;</span>
  														<input class="span2" id="yiban2" type="text">
 										   		 	<span class="add-on">.00元</span>
												</div>
											</div>
										</div>
									</td>
								</tr>			
							</table>
						</td>
					</tr>
				</table>
   			 </div>
      	 </div>
	</div>
	<!--下一步-->
	<div class="form-actions">
	 <button type="submit" class="btn btn-primary">保存</button>
	 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
 	 <button type="button" class="btn btn-sussess"><a id="next" href="OBPaymentModeClServlet">下一步</a></button>
	 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
 	 <button type="reset" class="btn">取消</button>
	</div>

 </form>
	<script src="js/jquery-1.9.1.js"></script>
	   <!-- Load JS here for greater good =============================-->
   <script src="js/bootstrap.min.js"></script>
    <script>
    //下面的jquery真心没用！
	$("#next").on("click", function(){
		var value;
		$("input[name=optionsRadios]").each(function(){
			if (this.checked) value = this.value;
		});
		this.href+= "?mode=" + value;
	});
   	$('.prove').popover();
	$('.tiptip').tooltip();
   </script>
  </body>
</html>
