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
			//�õ��û���������
			String u=request.getParameter("username");
			//u=Tools.getNewString(u);
			String p=request.getParameter("passwd");
			if(u==null){
				
				u=(String)hs.getAttribute("username");
				p=(String)hs.getAttribute("passwd");
			}
			//ʹ��ģ����ɶ��û�����֤
			FacultyBeanCl fbc=new FacultyBeanCl();
			if(fbc.checkUser(u, p)){
				hs.setAttribute("OBNum", fbc.getOBNum()+"");
				hs.setAttribute("fName", fbc.getName("select fName from Faculty where fID="+u));
				//System.out.println(fbc.getOBNum());
				//���û�������session�Ա�����
				//hs.setMaxInactiveInterval(10);
				hs.setAttribute("username", u);
				hs.setAttribute("passwd", p);
				hs.setAttribute("sessioncheck", "true");
				//ת��Ч�ʲ��ߣ�
				//response.sendRedirect("wel.jsp?user="+u);
				//��ΪsendRedirect����Ч�ʲ��ߣ����������˾����ʹ��ת���ķ�����Ч�ʸ�)��ͬʱrequest�Ķ��󻹿�������һҳʹ��
				
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

