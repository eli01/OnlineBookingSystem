package com.OB.control;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.OB.model.BaoXiaoBeanCl;
import com.OB.model.BasicBeanCl;

public class OBStartClServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response){
		try{
			
			String flag=request.getParameter("manID");	
			HttpSession hs=request.getSession();
			BasicBeanCl bbc=new BasicBeanCl();
			//System.out.println("flag������Ϊ��"+flag);
			if(flag!=null){
				String obMode=request.getParameter("optionsRadios");
				hs.setAttribute("obMode", obMode);
				//��ʼ�������ֵ
				String[] startInfo=new String[8];
				startInfo[0]=request.getParameter("manID");//4������ID
				startInfo[1]=request.getParameter("Bname");//10����������
				startInfo[2]=request.getParameter("phonenumber");//11�ֻ�����
				startInfo[3]=request.getParameter("email");//12��������
				startInfo[4]=request.getParameter("optionsRadios");//8��������
				startInfo[5]=request.getParameter("projectnum");//13��Ŀ���
				startInfo[6]=request.getParameter("attachmentnum");//5��������	
				
				//���Ԥ����
				startInfo[7]=(String)hs.getAttribute("OBID");//1ԤԼ���
				
				//����Щֻ�ŵ�session��
				
				hs.setAttribute("manID", startInfo[0]);
				hs.setAttribute("Bname", startInfo[1]);
				hs.setAttribute("phonenumber", startInfo[2]);
				hs.setAttribute("email", startInfo[3]);
				hs.setAttribute("optionsRadios", startInfo[4]);
				hs.setAttribute("projectnum", startInfo[5]);
				hs.setAttribute("attachmentnum", startInfo[6]);
				//�����ݴ������ݿ�
				bbc.update("insert into OBBasic (a4,a10,a11,a12,a8,a13,a5,a1)values(?,?,?,?,?,?,?,?)", startInfo);//����BasicBeanCl
			}else{
				hs.setAttribute("OBID", bbc.getOBID());//��һ�ξ������servletʱ����ԤԼ�ŵ�session
			}
			
			//System.out.println(str[0]+" "+str[1]);
			request.setCharacterEncoding("utf-8");
			request.getRequestDispatcher("OBStart.jsp").forward(request, response);
		}catch(Exception e){
			e.printStackTrace();
		}
		
	} 

	public void doPost(HttpServletRequest request, HttpServletResponse response){

		this.doGet(request, response);
	}

}

