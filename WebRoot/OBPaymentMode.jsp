<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <title>一般费用报销金额</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap -->
    <link href="css/bootstrap.css" rel="stylesheet" media="screen">
	<!--<link href="css/flat-ui.css" rel="stylesheet">-->
	<link href="css/mycss.css" rel="stylesheet">
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
			<li class="active">第四步：选择支付方式</li>
		</ul>
		<ul class="nav nav-tabs">
   		 <li class="active"><a href="#tab1" data-toggle="tab">转卡</a></li>
    	 <li><a href="#tab2" data-toggle="tab">支票</a></li>
		 <li><a href="#tab3" data-toggle="tab">汇款</a></li>
		 <li><a href="#tab4" data-toggle="tab">冲账</a></li>
 	    </ul>
	  
	  
	   	<div class="tabbable"> <!-- Only required for left/right tabs -->
 		 <div class="tab-content">
   		  <div class="tab-pane fade in active" id="tab1">
			 <h4 class="muted"><span class="label label-info">提示&nbsp;&nbsp;</span>&nbsp;&nbsp;您选择的报销支付类型是：转卡</h4>
			 <div class="alert alert-error">
			 	<h6>
				    1.单笔报销超过5000元，请填写《**大学至今支付授权申请表》；<br>
				    2.单笔报销超过3000元，请使用转账支票或汇款或提供消费FOS单机刷卡。
				</h6>
			 </div>
			  <div  style="width:400px">
			 	 <pre><h6 class="muted"><span class="label label-warning">警告</span>&nbsp;&nbsp;请填写您的报销转卡信息（如过当场刷卡可以不填写）！</h6></pre>
			  </div>
			  <form class="form-horizontal" action="OBPaymentMode.jsp">
			  	<div class="input-append" >
				  <input class="span2" id="appendedInputButton" type="text" placeholder="请输入" name="zkNum">
				  <button class="btn" type="submit">确定</button>
				</div>
			  </form>	
			  <form class="form-horizontal" id="form1" action="OBPaymentModeClServlet">	
			  <input type="hidden" value="form1" name="method">
     		 <table class="table">
              <thead>
                <tr>
                  <th></th>
                  <th>工号（或学号）</th>
                  <th>姓名</th>
                  <th>转卡金额</th>
				  <th>账号</th>
				  <th>操作</th>
                </tr>
              </thead>
              <tbody>
              
              <%
             	String zk=request.getParameter("zkNum");
              	
              	int n=1;
              	if(zk!=null&&!zk.equals("")){
              		n=Integer.parseInt(zk);
              	}
              	session.setAttribute("zkNum", n+"");
              	%>
              	<input type="hidden" value="<%=n %>" name="zkNum">
              	<%
              	for(int i=1;i<=n;i++){
              		out.println("<tr>");
              		out.println("<td>"+i+"</td>");
              		out.println("<td><input type=\"text\" class=\"input-small\" placeholder=\"工号（或学号）\" name=\"id"+i+"\"></td>");
              		out.println("<td><input type=\"text\" class=\"input-small\" placeholder=\"姓名\" name=\"name"+i+"\"></td>");
              		out.println("<td>");
              		out.println("<div class=\"input-prepend input-append\">");
              		out.println("<span class=\"add-on\">&yen;</span>");
              		out.println("<input class=\"span2\" id=\"yg1\" type=\"text\" name=\"monery"+i+"\">");
              		out.println("<span class=\"add-on\">.00元</span>");
              		out.println("</div>");
              		out.println(" </td>");
              		out.println("<td><input type=\"text\" class=\"input-large\" placeholder=\"账号\" name=\"account"+i+"\"></td>");
              		out.println("<td><button type=\"button\" class=\"btn\">清空本行</button></td>");
              		
              	}
              %>
                </tbody>
            </table>
            <!--下一步-->
			<table class="table" style="margin:0px auto;width:100%">
			 <thead>
				<tr>
					<th>
						<button type="submit" class="btn">保存</button>
					</th>
					<th>
						  <button type="button" class="btn btn-sussess"><a id="next1" href="OBTimeClServlet">下一步</a></button>
					</th>
					<th>
						 <button type="reset" class="btn btn-warning">取消</button>
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
   			 </div>
			<div class="tab-pane fade" id="tab2">
			 <h4 class="muted"><span class="label label-info">提示&nbsp;&nbsp;</span>&nbsp;&nbsp;您选择的报销支付类型是：支票</h4>
			 <div class="alert alert-error">
			 	<h6>
				    1.单笔报销超过5000元，请填写《**大学至今支付授权申请表》；<br>
				    2.单笔报销超过3000元，请使用转账支票或汇款或提供消费FOS单机刷卡。
				</h6>
			 </div>
			  <div  style="width:400px">
			 	 <pre><h6 class="muted"><span class="label label-info">警告</span>&nbsp;&nbsp;请填写您的支票信息！</h6></pre>
			  </div>	
			  <form class="form-horizontal" id="form2">	
			  <input type="hidden" value="form2" name="method">
     		 <table class="table">
              <thead>
                <tr>
                  <th>序号</th>
                  <th>单位名称</th>
                  <th>金额</th>
				  <th>操作</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>1</td>
                  <td><input type="text" class="input" placeholder="单位名称" name="method21"></td>
                  <td>
				  	<div class="input-prepend input-append">
  						<span class="add-on">&yen;</span>
  							<input class="span2" id="yg1" type="text" name="method22">
 						<span class="add-on">.00元</span>
					</div>
				  </td>
				  <td><button type="button" class="btn"><i class="icon-ok"></i></td>
                </tr>
              </tbody>
            </table>
            <!--下一步-->
			<table class="table" style="margin:0px auto;width:100%">
			 <thead>
				<tr>
								<th>
						<button type="submit" class="btn">保存</button>
					</th>
					<th>
						  <button type="button" class="btn btn-sussess"><a id="next2" href="OBTimeClServlet">下一步</a></button>
					</th>
					<th>
						 <button type="reset" class="btn btn-warning">取消</button>
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
   			 </div>
			 <div class="tab-pane fade" id="tab3">
			 <h4 class="muted"><span class="label label-info">提示&nbsp;&nbsp;</span>&nbsp;&nbsp;您选择的报销支付类型是：汇款</h4>
			 <div class="alert alert-error">
			 	<h6>
				    1.单笔报销超过5000元，请填写《**大学至今支付授权申请表》；<br>
				    2.单笔报销超过3000元，请使用转账支票或汇款或提供消费FOS单机刷卡。
				</h6>
			 </div>
			  <div  style="width:400px">
			 	 <pre><h6 class="muted"><span class="label label-info">警告</span>&nbsp;&nbsp;请填写您的汇款信息(收款单位名称要求全称；保存支票信息)！</h6></pre>
			  </div>	
			  <form class="form-horizontal" id="form3">	
			  <input type="hidden" value="form3" name="method">
     		 <table class="table" style="width:90%">
              <thead>
                <tr>
                  <th></th>
                  <th></th>
                  <th></th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td><label class="control-label" for="huikuan1">收款单位/收款人名称</label></td>
                  <td><input name="method31" type="text" class="input-xlarge" placeholder="收款单位/收款人名称" id="huikuan1"></td>
				  <td><button type="button" class="btn">清空本行</button></td>
                </tr>
                <tr>
                  <td><label class="control-label" for="huikuan2">收款人银行账号</label></td>
               	  <td><input name="method32" type="text" class="input-xlarge" placeholder="收款人银行账号" id="huikuan2"></td>
				  </td>
				  <td><button type="button" class="btn">清空本行</button></td>
                </tr>
                <tr>
                  <td><label class="control-label" for="huikuan3">收款人开户银行</label></td>
                  <td>
				  <input name="method33" type="text" class="input-xlarge" placeholder="收款人开户银行" id="huikuan3">
				  </td>
				  <td>
					 <div class="btn-group">
						<button class="btn dropdown-toggle" data-toggle="dropdown">选择 <span class="caret"></span></button>
						<ul class="dropdown-menu">
						  <li><a href="#searchbank" role="button" class="btn" data-toggle="modal">搜索<i class="icon-search"></i></a></li>
						  <li><a href="#">清空</a></li>
						</ul>
					  </div><!-- /btn-group -->
				  </td>
                </tr>
			    <tr>
                  <td><label class="control-label" for="huikuan4">备注</label></td>
                  <td><textarea name="method34" rows="3" id="huikuan4"  style="width:270px"></textarea></td>            
				  <td><button type="button" class="btn">清空本行</td>
                </tr>
				<tr>
                  <td><label class="control-label" for="huikuan5">金额</label></td>
                  <td>
					<div class="input-prepend input-append">
						<span class="add-on">&yen;</span>
							<input name="method35" class="span2" type="text" id="huikuan5">
						<span class="add-on">.00元</span>
					</div>
				  </td>
				  <td><button type="button" class="btn">清空本行</td>
                </tr>
              </tbody>
            </table>
            <!--下一步-->
			<table class="table" style="margin:0px auto;width:100%">
			 <thead>
				<tr>
					<th>
						<button type="submit" class="btn">保存</button>
					</th>
					<th>
						  <button type="button" class="btn btn-sussess"><a id="next3" href="OBTimeClServlet">下一步</a></button>
					</th>
					<th>
						 <button type="reset" class="btn btn-warning">取消</button>
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
   			 </div>
			 <div class="tab-pane fade" id="tab4">
			 <h4 class="muted"><span class="label label-info">提示&nbsp;&nbsp;</span>&nbsp;&nbsp;您选择的报销支付类型是：<a href="#" class="tab-pane tiptip" style="text-decoration:none" data-toggle="tooltip" data-placement="right" title="用于冲销预支借款">冲账</a></h4>
			 <div class="alert alert-error">
			 	<h6>
				    1.单l笔报销超过5000元，请填写《**大学至今支付授权申请表》；<br>
				    2.单笔报销超过3000元，请使用转账支票或汇款或提供消费FOS单机刷卡。
				</h6>
			 </div>
			  <div  style="width:400px">
			 	 <pre><h6 class="muted"><span class="label label-info">警告</span>&nbsp;&nbsp;请填写您的冲账信息（请核准输入每笔预支借款时的项目码）！</h6></pre>
			  </div>	
			  <form class="form-horizontal" id="form4">	
			  <input type="hidden" value="form4" name="method">
   			<table class="table">
              <thead>
                <tr>
                  <th>序号</th>
                  <th>项目号</th>
                  <th>金额</th>
				  <th>操作</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>1</td>
                  <td><input type="text" class="input" placeholder="单位名称" name="method41"></td>
                  <td>
				  	<div class="input-prepend input-append">
  						<span class="add-on">&yen;</span>
  							<input class="span2" id="yg1" type="text" name="method42">
 						<span class="add-on">.00元</span>
					</div>
				  </td>
				  <td><button type="button" class="btn"><i class="icon-ok"></i></td>
                </tr>
              </tbody>
            </table>
           
		<!--下一步-->
			<table class="table" style="margin:0px auto;width:100%">
			 <thead>
				<tr>
					<th>
						<button type="submit" class="btn">保存</button>
					</th>
					<th>
						  <button type="button" class="btn btn-sussess"><a id="next4" href="OBTimeClServlet">下一步</a></button>
					</th>
					<th>
						 <button type="reset" class="btn btn-warning">取消</button>
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
       </div>
	  </div>
  </div>
 	<!--弹出搜索对话框-->
	<div id="searchbank" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="width:1000px;margin-left:-35%">
	  <div class="modal-header">
		<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
		<h3 id="nowLabel">搜索开户银行</h3>
	  </div>
	  <div class="modal-body">
	    <div class="alert alert-error">
			<h6>
				搜索中国建设银行北京大学分行，请输入“建行 北京 北京大学”进行过滤！中间用空格！
			</h6>
	    </div>
		<form class="form-search">
		  <div class="input-append">
			 <input type="text" class="span2 search-query" placeholder="建行 北京 北京大学">
			 <button type="submit" class="btn">搜索</button>
		</div>
	    </form>
	  <table class="table-bordered" width="100%">
	  	<tr>
			<td width="10%">1</td>
			<td>中国建设银行北京大学分行</td>
		</tr>
	  </table>
	  <div class="modal-footer">
		<button class="btn" data-dismiss="modal" aria-hidden="true">关闭</button>
		<button class="btn btn-primary">确定</button>
	 </div>
	</div>	
	<script src="js/jquery-1.9.1.js"></script>
	   <!-- Load JS here for greater good =============================-->
   <script src="js/bootstrap.min.js"></script>
    <script>
    var addTail=function(id){
		this.href+= "?method=" + id;
    }; 
   	$('.prove').popover();
	$('.tiptip').tooltip();
	
	$("#next1").on("click",addTail("form1"));
	$("#next2").on("click",addTail("form2"));
	$("#next3").on("click",addTail("form3"));
	$("#next4").on("click",addTail("form4"));

   </script>
  </body>
</html>

