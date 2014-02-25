<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <title>报销预约登录</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="css/bootstrap.css" rel="stylesheet" media="screen">
	<link href="css/mycss.css" rel="stylesheet" media="screen">
	<link rel="shortcut icon" href="images/favicon.ico">
    <style type="text/css">
      body {
        padding-top: 40px;
        padding-bottom: 40px;
        background-color: #f5f5f5;
      }

      .form-signin {
        max-width: 300px;
        padding: 19px 29px 29px;
        margin: 0 auto 20px;
        background-color: #fff;
        border: 1px solid #e5e5e5;
        -webkit-border-radius: 5px;
           -moz-border-radius: 5px;
                border-radius: 5px;
        -webkit-box-shadow: 0 1px 2px rgba(0,0,0,.05);
           -moz-box-shadow: 0 1px 2px rgba(0,0,0,.05);
                box-shadow: 0 1px 2px rgba(0,0,0,.05);
      }
      .form-signin .form-signin-heading,
      .form-signin .checkbox {
        margin-bottom: 10px;
      }
      .form-signin input[type="text"],
      .form-signin input[type="password"] {
        font-size: 16px;
        height: auto;
        margin-bottom: 15px;
        padding: 7px 9px;
      }

    </style>

  </head>

  <body>
    <% 
  
  		String err=(String)request.getParameter("err");
  		if(err!=null){
  			if(err.equals("1")){
  				out.println("<div class='alert alert-error'><h6>抱歉！登录失败！请重新登录！</h6></div>");
  			}
  		} 		
  %>	
    <div class="container">
      <form class="form-signin" action="OBSignInClServlet" method="get">
        <h3 class="form-signin-heading" align="center">财务报销网上预约登录</h3>
        <input type="text" class="input-block-level" placeholder="工号或学号" name="username">
        <input type="password" class="input-block-level" placeholder="身份证后六位" name="passwd">
        <label class="checkbox">
          <input type="checkbox" value="remember-me"> 
          记住我的信息</label>
		 
        <button class="btn" type="submit">登录</button>
		<button class="btn" type="reset" style="float:right">重置</button>
      </form>

    </div> <!-- /container -->

    <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
	<script src="js/jquery-1.9.1.js"></script>
	   <!-- Load JS here for greater good =============================-->
   <script src="js/bootstrap.min.js"></script>
    <script>
   	$('.prove').popover();
	$('.tiptip').tooltip();
   </script>

  </body>
</html>

