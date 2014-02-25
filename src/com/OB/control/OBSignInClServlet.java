package com.OB.control;

import java.io.IOException;
import java.io.PrintWriter;

import javax.jms.Session;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.OB.model.Tools;
import com.OB.model.FacultyBeanCl;

public class OBSignInClServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response){
		try{
			HttpSession hs=request.getSession();
			//得到用户名和密码
			String u=request.getParameter("username");
			//u=Tools.getNewString(u);
			String p=request.getParameter("passwd");
			if(u==null){
				
				u=(String)hs.getAttribute("username");
				p=(String)hs.getAttribute("passwd");
			}
			//使用模型完成对用户的验证
			FacultyBeanCl fbc=new FacultyBeanCl();
			if(fbc.checkUser(u, p)){
				hs.setAttribute("OBNum", fbc.getOBNum()+"");
				hs.setAttribute("fName", fbc.getName("select fName from Faculty where fID="+u));
				//System.out.println(fbc.getOBNum());
				//将用户名放入session以备后用
				//hs.setMaxInactiveInterval(10);
				hs.setAttribute("username", u);
				hs.setAttribute("passwd", p);
				hs.setAttribute("sessioncheck", "true");
				//转向（效率不高）
				//response.sendRedirect("wel.jsp?user="+u);
				//因为sendRedirect方法效率不高，所以软件公司常常使用转发的方法（效率高)，同时request的对象还可以在下一页使用
				
				request.getRequestDispatcher("OBHome.jsp").forward(request, response);
			}else{
				request.getRequestDispatcher("SignIn.jsp").forward(request, response);
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		
	} 

	public void doPost(HttpServletRequest request, HttpServletResponse response){

		this.doGet(request, response);
	}

}

