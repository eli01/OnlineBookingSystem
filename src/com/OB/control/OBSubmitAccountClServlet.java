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
			//��õ�ǰ����ģʽ
			HttpSession hs=request.getSession();
			String mode=(String)hs.getAttribute("semode");//Ҳ����ȥ��obMode(��������startҳ�汣��ʱ�ŵ�sessionͨ�����ģ�ǰ��������һ��ͨ��jquery�����ɵ�)
			if(mode.equals("1")){
				System.out.println("�������ģʽ��"+mode);
				//һ�㱨��ģʽ
				//1.���11�ַ��õ�ֵ
				String[] yibanExp=new String[11];
				for(int i=0;i<yibanExp.length;i++){
					yibanExp[i]=(String)hs.getAttribute("yiban"+(i+1));							
				}
				//2.��11�м�Ϊ6�ַŵ�session��
				hs.setAttribute("yb1", (Integer.parseInt(yibanExp[1])+Integer.parseInt(yibanExp[2]))+"");
				hs.setAttribute("yb2", (Integer.parseInt(yibanExp[3])+Integer.parseInt(yibanExp[4]))+"");
				hs.setAttribute("yb3", yibanExp[5]);
				hs.setAttribute("yb4", (Integer.parseInt(yibanExp[6])+Integer.parseInt(yibanExp[7]))+"");
				hs.setAttribute("yb5", yibanExp[8]);
				hs.setAttribute("yb6", (Integer.parseInt(yibanExp[9])+Integer.parseInt(yibanExp[10])+Integer.parseInt(yibanExp[11]))+"");
				//3.�����ܶ�
				int all=0;
				for(int j=0;j<yibanExp.length;j++){
					all+=Integer.parseInt(yibanExp[j]);
				}
				//4.���ܶ����session
				//û�н����κ�ģʽ��
				System.out.println("û�н����κ�ģʽ��");
				hs.setAttribute("all", all);
			}else if(mode.equals("2")){
				
			}else if(mode.equals("3")){
				
			}else if(mode.equals("4")){
				
			}else if(mode.equals("5")){
				
			}else if(mode.equals("6")){
				
			}
			//���һ����õĸ��ַ��õ�ֵ���
			request.getRequestDispatcher("OBSubmitAccount.jsp").forward(request, response);
		}catch(Exception e){
			
		}
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response){
		// TODO Auto-generated method stub
		this.doGet(request, response);
	}
}
