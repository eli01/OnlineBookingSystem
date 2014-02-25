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
			//System.out.println("flag的内容为："+flag);
			if(flag!=null){
				String obMode=request.getParameter("optionsRadios");
				hs.setAttribute("obMode", obMode);
				//初始化保存的值
				String[] startInfo=new String[8];
				startInfo[0]=request.getParameter("manID");//4报销人ID
				startInfo[1]=request.getParameter("Bname");//10报销人姓名
				startInfo[2]=request.getParameter("phonenumber");//11手机号码
				startInfo[3]=request.getParameter("email");//12电子邮箱
				startInfo[4]=request.getParameter("optionsRadios");//8报销类型
				startInfo[5]=request.getParameter("projectnum");//13项目编号
				startInfo[6]=request.getParameter("attachmentnum");//5附件张数	
				
				//获得预定号
				startInfo[7]=(String)hs.getAttribute("OBID");//1预约编号
				
				//将这些只放到session中
				
				hs.setAttribute("manID", startInfo[0]);
				hs.setAttribute("Bname", startInfo[1]);
				hs.setAttribute("phonenumber", startInfo[2]);
				hs.setAttribute("email", startInfo[3]);
				hs.setAttribute("optionsRadios", startInfo[4]);
				hs.setAttribute("projectnum", startInfo[5]);
				hs.setAttribute("attachmentnum", startInfo[6]);
				//将数据存入数据库
				bbc.update("insert into OBBasic (a4,a10,a11,a12,a8,a13,a5,a1)values(?,?,?,?,?,?,?,?)", startInfo);//调用BasicBeanCl
			}else{
				hs.setAttribute("OBID", bbc.getOBID());//第一次经过这个servlet时设置预约号到session
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

