<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
  <head>
    <title>差旅费</title>
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
	  <h4 class="muted">报销类型：差旅费项目</h4>
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
					<td colspan="2">
					 <pre><h4 class="muted"><span class="label label-info">提示</span>&nbsp;&nbsp;差旅费报销相关说明：</h4></pre>
					 <div class="alert alert-error">
						<h6>
							1.实际住宿费超过标准限额的，请负责人在住宿发票上签名，最多不超过300元/天/人。<br>
							2.教职工出差单趟超过30天报补贴的，必须由学院盖章证实。<br>
							3.研究生出差领取补贴原则上单趟不超过三天，三天至十四天需学院盖章证实，超过十四天需研究生部盖章证实。<br>
							4.会议费单据报销需提供会议通知。<br>
							5.探亲路费报销需先经过人事处劳资科审核盖章。<br>
							6.出差期间发生的相关费用，必须连同车票一起报销，事后不得补报。<br>
						</h6>
					 </div>					</td>
				  </tr>
				  <tr>
					<td colspan="2"><table width="100%" border="0">
                      <tr>
                        <td width="12%" class="receipt">
							<label class="control-label" for="t1">出差事由</label>						
						</td>
					    <td width="17%">
							<input name="text" type="text" id="t1" class="input editTableInput" placeholder="出差事由">															                        </td>
                        <td width="12%" class="receipt">
							<label class="control-label" for="t2">部门</label>					
						</td>
					    <td width="17%">
							<input name="text" type="text" id="t2" class="input editTableInput" placeholder="部门">						                        </td>
                      </tr>
                    </table></td>
				  </tr>
				  <tr>
					<td width="12%" class="receipt">出差人员</td>
				    <td width="79%"><table width="100%" border="0">
                      <tr>
                        <td width="12%" class="receipt">姓名</td>
                        <td><input name="text" type="text" id="t2" class="input-small editTableInput" placeholder="姓名"></td>
						<td><input name="text" type="text" id="t2" class="input-small editTableInput" placeholder="姓名"></td>
						<td><input name="text" type="text" id="t2" class="input-small editTableInput" placeholder="姓名"></td>
						<td><input name="text" type="text" id="t2" class="input-small editTableInput" placeholder="姓名"></td>
						<td><input name="text" type="text" id="t2" class="input-small editTableInput" placeholder="姓名"></td>
                      </tr>
                      <tr>
                        <td width="12%" class="receipt">姓名</td>
                        <td><input name="text" type="text" id="t2" class="input-small editTableInput" placeholder="职称（务）"></td>
						<td><input name="text" type="text" id="t2" class="input-small editTableInput" placeholder="职称（务）"></td>
						<td><input name="text" type="text" id="t2" class="input-small editTableInput" placeholder="职称（务）"></td>
						<td><input name="text" type="text" id="t2" class="input-small editTableInput" placeholder="职称（务）"></td>
						<td><input name="text" type="text" id="t2" class="input-small editTableInput" placeholder="职称（务）"></td>
                      </tr>
                    </table></td>
				  </tr>
				  <tr>
					<td colspan="2"><table width="100%" border="0">
                      <tr>
                        <td class="receipt">出差地点</td>
                        <td class="receipt">出发日期</td>
						<td class="receipt">返回日期</td>
						<td class="receipt">天数</td>
						<td class="receipt">教职工数</td>
						<td class="receipt">研究生人数</td>
						<td class="receipt">其它人数</td>           
                      </tr>
                      <tr>
                        <td><input name="text" type="text" id="t2" class="input-medium editTableInput" placeholder="起点-...-起点"></td>
                        <td><input name="text" type="text" id="t2" class="input-small editTableInput" placeholder="年-月-日"></td>
                        <td><input name="text" type="text" id="t2" class="input-small editTableInput" placeholder="年-月-日"></td>
                        <td><input name="text" type="text" id="t2" class="input-mini" placeholder="0"></td>
						<td><input name="text" type="text" id="t2" class="input-mini" placeholder="0"></td>
						<td><input name="text" type="text" id="t2" class="input-mini" placeholder="0"></td>
						<td><input name="text" type="text" id="t2" class="input-mini" placeholder="0"></td>
                      </tr>
                      <tr>
                        <td><input name="text" type="text" id="t2" class="input-medium editTableInput" placeholder="起点-...-起点"></td>
                        <td><input name="text" type="text" id="t2" class="input-small editTableInput" placeholder="年-月-日"></td>
                        <td><input name="text" type="text" id="t2" class="input-small editTableInput" placeholder="年-月-日"></td>
                        <td><input name="text" type="text" id="t2" class="input-mini" placeholder="0"></td>
						<td><input name="text" type="text" id="t2" class="input-mini" placeholder="0"></td>
						<td><input name="text" type="text" id="t2" class="input-mini" placeholder="0"></td>
						<td><input name="text" type="text" id="t2" class="input-mini" placeholder="0"></td>
                      </tr>
                      <tr>
                        <td><input name="text" type="text" id="t2" class="input-medium editTableInput" placeholder="起点-...-起点"></td>
                        <td><input name="text" type="text" id="t2" class="input-small editTableInput" placeholder="年-月-日"></td>
                        <td><input name="text" type="text" id="t2" class="input-small editTableInput" placeholder="年-月-日"></td>
                        <td><input name="text" type="text" id="t2" class="input-mini" placeholder="0"></td>
						<td><input name="text" type="text" id="t2" class="input-mini" placeholder="0"></td>
						<td><input name="text" type="text" id="t2" class="input-mini" placeholder="0"></td>
						<td><input name="text" type="text" id="t2" class="input-mini" placeholder="0"></td>
                      </tr>
                      <tr>
                        <td><input name="text" type="text" id="t2" class="input-medium editTableInput" placeholder="起点-...-起点"></td>
                        <td><input name="text" type="text" id="t2" class="input-small editTableInput" placeholder="年-月-日"></td>
                        <td><input name="text" type="text" id="t2" class="input-small editTableInput" placeholder="年-月-日"></td>
                        <td><input name="text" type="text" id="t2" class="input-mini" placeholder="0"></td>
						<td><input name="text" type="text" id="t2" class="input-mini" placeholder="0"></td>
						<td><input name="text" type="text" id="t2" class="input-mini" placeholder="0"></td>
						<td><input name="text" type="text" id="t2" class="input-mini" placeholder="0"></td>
                      </tr>
                      <tr>
                        <td><input name="text" type="text" id="t2" class="input-medium editTableInput" placeholder="起点-...-起点"></td>
                        <td><input name="text" type="text" id="t2" class="input-small editTableInput" placeholder="年-月-日"></td>
                        <td><input name="text" type="text" id="t2" class="input-small editTableInput" placeholder="年-月-日"></td>
                        <td><input name="text" type="text" id="t2" class="input-mini" placeholder="0"></td>
						<td><input name="text" type="text" id="t2" class="input-mini" placeholder="0"></td>
						<td><input name="text" type="text" id="t2" class="input-mini" placeholder="0"></td>
						<td><input name="text" type="text" id="t2" class="input-mini" placeholder="0"></td>
                      </tr>
                    </table></td>
				  </tr>
				  <tr>
					<td colspan="2"><table width="100%" border="0">
                      <tr>
                        <td class="receipt">车船费</td>
                        <td class="receipt">市内交通费</td>
						<td class="receipt">住宿费</td>
						<td class="receipt">其他</td>
						<td class="receipt">市内交通补贴</td>
						<td class="receipt">公杂补贴</td>
						<td class="receipt">是否发放公杂补贴</td>
						<td class="receipt">是否发放伙食补贴</td>
                      </tr>
                      <tr>
                        <td>
							<div class="input-append">
							  <input class="span2" id="appendedInput" type="text" style="width:40px">
							  <span class="add-on">.00</span>
							</div>
						</td>
						  <td>
							<div class="input-append">
							  <input class="span2" id="appendedInput" type="text" style="width:40px">
							  <span class="add-on">.00</span>
							</div>
						</td>
						  <td>
							<div class="input-append">
							  <input class="span2" id="appendedInput" type="text" style="width:40px">
							  <span class="add-on">.00</span>
							</div>
						</td>
						  <td>
							<div class="input-append">
							  <input class="span2" id="appendedInput" type="text" style="width:40px">
							  <span class="add-on">.00</span>
							</div>
						</td>
						  <td>

						</td>
						  <td>

						</td>
                        <td>
							<select name="yesorno1" class="time-select">
							  <option value="0">否</option>
							  <option value="1">是</option>
							</select>
						</td>
                        <td>
							<select name="yesorno2" class="time-select">
							  <option value="0">否</option>
							  <option value="1">是</option>
							</select>
						</td>

                      </tr>
                    </table></td>
				  </tr>
				  <tr>
					<td colspan="2"><table width="100%" border="0">
                      <tr>
                        <td><table width="100%" border="0">
                          <tr>
							<td width="31%" class="receipt">
								申请报销总金额（大写）:					
							</td>
                            <td width="32%">
								<input class="input-large" placeholder="*****圆整">
							</td>
                            <td width="37%">
								<div class="input-prepend input-append">
									<span class="add-on">&yen;</span>
										<input class="span2" id="yg1" type="text">
									<span class="add-on">.00元</span>
								</div>
							</td>
                          </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td class="receipt">财务处核准金额（大写）：</td>
                      </tr>
                    </table></td>
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
