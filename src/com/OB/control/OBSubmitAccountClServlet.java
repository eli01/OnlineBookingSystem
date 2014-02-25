package com.OB.control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class OBSubmitAccountClServlet
 */
@WebServlet("/OBSubmitAccountClServlet")
public class OBSubmitAccountClServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		try{
			//获得当前报销模式
			HttpSession hs=request.getSession();
			String mode=(String)hs.getAttribute("semode");//也可以去找obMode(后者是在start页面保存时放到session通过表单的，前者是在下一步通过jquery完成完成的)
			if(mode.equals("1")){
				System.out.println("进入这个模式："+mode);
				//一般报销模式
				//1.获得11种费用的值
				String[] yibanExp=new String[11];
				for(int i=0;i<yibanExp.length;i++){
					yibanExp[i]=(String)hs.getAttribute("yiban"+(i+1));							
				}
				//2.将11中加为6种放到session里
				hs.setAttribute("yb1", (Integer.parseInt(yibanExp[1])+Integer.parseInt(yibanExp[2]))+"");
				hs.setAttribute("yb2", (Integer.parseInt(yibanExp[3])+Integer.parseInt(yibanExp[4]))+"");
				hs.setAttribute("yb3", yibanExp[5]);
				hs.setAttribute("yb4", (Integer.parseInt(yibanExp[6])+Integer.parseInt(yibanExp[7]))+"");
				hs.setAttribute("yb5", yibanExp[8]);
				hs.setAttribute("yb6", (Integer.parseInt(yibanExp[9])+Integer.parseInt(yibanExp[10])+Integer.parseInt(yibanExp[11]))+"");
				//3.计算总额
				int all=0;
				for(int j=0;j<yibanExp.length;j++){
					all+=Integer.parseInt(yibanExp[j]);
				}
				//4.将总额放入session
				//没有进入任何模式！
				System.out.println("没有进入任何模式！");
				hs.setAttribute("all", all);
			}else if(mode.equals("2")){
				
			}else if(mode.equals("3")){
				
			}else if(mode.equals("4")){
				
			}else if(mode.equals("5")){
				
			}else if(mode.equals("6")){
				
			}
			//获得一般费用的各种费用的值相加
			request.getRequestDispatcher("OBSubmitAccount.jsp").forward(request, response);
		}catch(Exception e){
			
		}
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response){
		// TODO Auto-generated method stub
		this.doGet(request, response);
	}
}
