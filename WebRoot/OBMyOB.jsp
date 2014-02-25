<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <title>我的预约</title>
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
                <li><a href="#">预约</a></li>
                <li class="active"><a href="#">我的预定</a></li>
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
	   <ul id="myTab" class="nav nav-tabs">
              <li class="active"><a href="#nowam" data-toggle="tab">当前预约</a></li>
              <li><a href="#historyam" data-toggle="tab">历史预约</a></li>
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <b class="caret"></b></a>
                <ul class="dropdown-menu">
                  <li><a href="#dropdown1" data-toggle="tab">@fat</a></li>
                  <li><a href="#dropdown2" data-toggle="tab">@mdo</a></li>
                </ul>
              </li>
            </ul>
            <div id="myTabContent" class="tab-content">
              <div class="tab-pane fade in active" id="nowam">
                <!--当前预约-->
					 <div class="modal" style="position: relative; top: auto; left: auto; right: auto; margin: 0 auto 20px; z-index: 1;width: 90%;">
					  <div class="modal-header">
						<!--<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>-->
						<h3>当前预约</h3>
						  </div>
						  <div class="modal-body">
							<table class="table">
								<thead>
									<tr>
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
											已预约
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
						<a href="#" class="btn btn-danger">取消预约</a>
						<a href="#nowEdit" role="button" class="btn" data-toggle="modal">修改</a>
					  </div>
					</div>
					  </div>
              <div class="tab-pane fade" id="historyam">
				<!--历史订单记录-->
					 <div class="modal" style="position: relative; top: auto; left: auto; right: auto; margin: 0 auto 20px; z-index: 1;width: 90%;">
					  <div class="modal-header">
						<!--<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>-->
						<h3>历史预约记录</h3>
					  </div>
					  <div class="modal-body">
						<table class="table">
							<thead>
								<tr>
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
									
									<td>
									<input type="checkbox">
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
							<a href="#historyDetail" role="button" class="btn" data-toggle="modal">查看</a>
					  </div>
					</div>
			  </div>
              <div class="tab-pane fade" id="dropdown1">
                <p>Etsy mixtape wayfarers, ethical wes anderson tofu before they sold out mcsweeney's organic lomo retro fanny pack lo-fi farm-to-table readymade. Messenger bag gentrify pitchfork tattooed craft beer, iphone skateboard locavore carles etsy salvia banksy hoodie helvetica. DIY synth PBR banksy irony. Leggings gentrify squid 8-bit cred pitchfork. Williamsburg banh mi whatever gluten-free, carles pitchfork biodiesel fixie etsy retro mlkshk vice blog. Scenester cred you probably haven't heard of them, vinyl craft beer blog stumptown. Pitchfork sustainable tofu synth chambray yr.</p>
              </div>
              <div class="tab-pane fade" id="dropdown2">
                <p>Trust fund seitan letterpress, keytar raw denim keffiyeh etsy art party before they sold out master cleanse gluten-free squid scenester freegan cosby sweater. Fanny pack portland seitan DIY, art party locavore wolf cliche high life echo park Austin. Cred vinyl keffiyeh DIY salvia PBR, banh mi before they sold out farm-to-table VHS viral locavore cosby sweater. Lomo wolf viral, mustache readymade thundercats keffiyeh craft beer marfa ethical. Wolf salvia freegan, sartorial keffiyeh echo park vegan.</p>
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
					<td colspan="2"><input name="text" type="text" id="t6" class="input-large editTableInput" placeholder="大写金额"></td>
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
					<td width="12%"><h6  style="text-decoration:underline"><pre>            </pre></h6></td>
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
