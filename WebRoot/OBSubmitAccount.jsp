<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
  <head>
    <title>����ԤԼ������</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap -->
    <link href="css/bootstrap.css" rel="stylesheet">
	<link href="css/mycss.css" rel="stylesheet">
	<!--<link href="css/flat-ui.css" rel="stylesheet">-->
	<!--<link href="css/bootstrap.css" rel="stylesheet">-->
	<link rel="shortcut icon" href="images/favicon.ico">
	<!--<link rel="apple-touch-icon-precomposed" sizes="144x144" href="img/glyphicons-halflings.png">-->
  </head>
<body style="margin:0px auto;width:80%;min-height:1200px">

  	   <div class="masthead">
        <h3 class="muted"> �û�ģ��</h3>
        <div class="navbar">
          <div class="navbar-inner">
            <div class="container">
              <ul class="nav">
                <li> <a href="#">��ҳ</a></li>
                <li class="active"><a href="#">ԤԼ</a></li>
                <li><a href="#">�ҵ�Ԥ��</a></li>
                <li><a href="#">�˳�</a></li>
                <li><a href="#">����</a></li>                
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
		 <li><a href="#">ԤԼ</a> <span class="divider">/</span></li>
			<li><a href="#">ԤԼ��Ϣ</a> <span class="divider">/</span></li>
			<li class="active">����������ʵ���ύ����ȷ�ϵ�</li>
		</ul>
	  
	 <form name="amTime" class="form-horizontal">
	 	<table border="0px" width="100%">
			<tr>
				<td width="8%" class="receipt">ԤԼ����:</td>
				<td width="30%"><%=(String)session.getAttribute("OBID")%></td>
				<td width="9%" class="receipt">ԤԼʱ�䣺</td>
				<td width="35%"><%=(String)session.getAttribute("obDate")%></td>
				<td width="8%" class="receipt">ԤԼ����:</td>
				<td width="10%"><%=(String)session.getAttribute("window")%></td>
		</tr>
		</table>
		<table width="100%" border="1px">
		  <tr align="center">
			<td><table width="100%" border="0">
			  <tr>
				<td width="15%" class="receipt">�����˹���</td>
				<td width="14%"><table>
				  <tbody>
					<tr>
					  <td><%=(String)session.getAttribute("manID")%></td>
					</tr>
				  </tbody>
				</table>
			    <br /></td>
				<td width="14%"><table>
				  <tbody>
					<tr>
					  <td class="receipt">����</td>
					</tr>
				  </tbody>
				</table>
			    <br /></td>
				<td width="17%"><%=(String)session.getAttribute("Bname")%></td>
				<td colspan="2" class="receipt">��ϵ�绰</td>
				<td width="24%"><%=(String)session.getAttribute("phonenumber")%></td>
			  </tr>
			  <tr>
				<td class="receipt">��Ŀ���</td>
				<td><table>
				  <tbody>
					<tr>
					  <td><%=(String)session.getAttribute("projectnum") %></td>
					</tr>
				  </tbody>
				</table>        </td>
				<td>&nbsp;</td>
				<td class="receipt">��������</td>
				<td colspan="3"><%=(String)session.getAttribute("attachmentnum") %></td>
			  </tr>
			  <tr>
				<td class="receipt">ԤԼ�����ܽ��</td>
				<td class="receipt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��д���</td>
				<td colspan="2"></td>
				<td width="2%" class="receipt">&yen;</td>
				<td width="14%"><%=(String)session.getAttribute("all") %></td>
				<td>&nbsp;</td>
			  </tr>
			  <tr>
				<td class="receipt">ʵ�ʱ����ܽ��</td>
				<td colspan="6">&nbsp;</td>
			  </tr>
			</table></td>
		  </tr>
		  <tr>
			<td><table width="100%" border="0">
			  <tr>
				<td width="20%" class="receipt">�칫��</td>
				<td width="55%"><%=(String)session.getAttribute("yb1") %></td>
				<td width="10%">&nbsp;</td>
				<td>&nbsp;</td>
			  </tr>
			  <tr>
				<td class="receipt">ӡˢ��</td>
				<td><%=(String)session.getAttribute("yb2") %></td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
			  </tr>
			  <tr>
				<td class="receipt">�ʵ��</td>
				<td><%=(String)session.getAttribute("yb3") %></td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
			  </tr>
			  <tr>
				<td class="receipt">��ҵ�����</td>
				<td><%=(String)session.getAttribute("yb4") %></td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
			  </tr>
			  <tr>
				<td class="receipt">��ͨ��</td>
				<td><%=(String)session.getAttribute("yb5") %></td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
			  </tr>
			  <tr>
				<td class="receipt">ά�ޣ�������</td>
				<td><%=(String)session.getAttribute("yb6") %></td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
			  </tr>
			  <tr>
				<td class="receipt">��ʱƸ����Ա�����</td>
				<td>0.00</td>
				<td class="receipt">�������</td>
				<td>0.00</td>
			  </tr>
			</table></td>
		  </tr>
		  <tr>
			<td><table width="100%" border="0">
			  <tr>
				<td width="15%" class="receipt">֧����ʽ</td>
				<td width="14%"><%=(String)session.getAttribute("method") %></td>
				<td width="25%">&nbsp;</td>
				<td width="46%">&nbsp;</td>
			  </tr>
			  <%
			  //�ж��û����õĸ��ѷ�ʽ
			  String method=(String)session.getAttribute("method");
			  if(method.equals("form1")){
				  String zkNum=(String)session.getAttribute("zkNum");
				  %>
				  	  <tr>
						<td class="receipt">����</td>
						<td>&nbsp;</td>
						<td class="receipt">����</td>
						<td class="receipt">ת�����</td>
					  </tr>
				  <%
				  int i=1;
				  while(i<=Integer.parseInt("zkNum")){
					  %>
					  <tr>
						<td><%=(String)session.getAttribute("id"+i) %></td>
						<td>&nbsp;</td>
						<td><%=(String)session.getAttribute("name"+i) %></td>
						<td><%=(String)session.getAttribute("monery"+i) %></td>
					  </tr>					  
					  <%			
				  }
			  }else if(method.equals("form2")){
				  
			  }else if(method.equals("form3")){
				  
			  }else if(method.equals("form4")){
				  
			  }
			  %>
			  
			</table></td>
		  </tr>
		  <tr>
			<td>
			<table width="100%" border="0">
			  <tr>
				<td width="9%" class="receipt">������</td>
				<td colspan="8">&nbsp;</td>
			  </tr>
			  <tr>
				<td>&nbsp;</td>
				<td width="7%" class="receipt">��λ����</td>
				<td width="14%"><h6  style="text-decoration:underline"><pre>           </pre></h6></td>
				<td width="9%" class="receipt">������ǩ��</td>
				<td width="16%"><h6  style="text-decoration:underline"><pre>           </pre></h6></td>
				<td width="11%" class="receipt">������ǩ��</td>
				<td width="12%"><h6  style="text-decoration:underline"><pre>           </pre></h6></td>
				<td width="13%" class="receipt">��Ŀ������ǩ��</td>
				<td width="13%"><h6  style="text-decoration:underline"><pre>           </pre></h6></td>
			  </tr>
			</table>
			</td>
		  </tr>
		</table>
	 </form>
	 <table border="0" style="margin:5px auto;width:30%">
	 	<tr>
			<td>
			 <a href="#myModal" role="button" class="btn" data-toggle="modal">ȷ���ύ</a>
			 </td>
			 <td>
			 <button class="btn">ȡ��</button>
			</td>
		</tr>
	</table>
	<!--�����ɹ��Ի���-->
 
		<!-- Modal -->
		<div id="myModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		  <div class="modal-header">
			<button type="button" class="close" data-dismiss="modal" aria-hidden="true">��</button>
			<h3 id="myModalLabel">�ɹ���ʾ</h3>
		  </div>
		  <div class="modal-body">
			<p>���Ѿ�ԤԼ�ɹ����Ƿ��ҵ�ԤԼ�в鿴��</p>
		  </div>
		  <div class="modal-footer">
			<button class="btn" data-dismiss="modal" aria-hidden="true">�ر�</button>
			<button class="btn btn-primary">��</button>
		  </div>
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
