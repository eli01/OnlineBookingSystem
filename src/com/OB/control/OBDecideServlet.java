package com.OB.control;
//��ͬ���ͱ������͵�ѡ�������
import java.util.ArrayList;
import com.OB.model.ModeBeanCl;

import javax.jms.Session;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/OBDecideServlet")
public class OBDecideServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response){
		// TODO Auto-generated method stub
		try{
			request.setCharacterEncoding("utf-8");
			String mode=request.getParameter("mode");
			
			HttpSession hs=request.getSession();
			if(mode==null){//˵���ڶ��ν��루������棩
				//���mode				
				String semode=(String)hs.getAttribute("semode");
				String sql="";
				ArrayList<String> al=new ArrayList<String>();
				if(semode.equals("1")){//�ж���һ��ɷ�ģʽ
					//����ô������Ϣ�ŵ�session���Ա�����
					ModeBeanCl mbc=new ModeBeanCl();
					for(int i=1;i<=11;i++){
						hs.setAttribute("yiban"+i, request.getParameter("yiban"+i));
					}
					//��ֵ�ŵ�al���Ա��������ݿ�
					al.add(mbc.getID());//����ModeBeanCl���һ��Ψһ��һ����ñ��
					al.add((String)hs.getAttribute("OBID"));
					al.add(request.getParameter("yiban1"));
					al.add(request.getParameter("yiban2"));
					al.add(request.getParameter("yiban3"));
					al.add(request.getParameter("yiban4"));
					al.add(request.getParameter("yiban5"));
					al.add(request.getParameter("yiban6"));
					al.add(request.getParameter("yiban7"));
					al.add(request.getParameter("yiban8"));
					al.add(request.getParameter("yiban9"));
					al.add(request.getParameter("yiban10"));
					al.add(request.getParameter("yiban11"));
					
					//�������ݿ⣬�����漰����̬					
					mbc.update("insert into Mode1 (b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13)values(?,?,?,?,?,?,?,?,?,?,?,?,?)", al);
					request.getRequestDispatcher("OBGeneralExpense.jsp").forward(request, response);
				}else if(semode.equals("2")){
					
				}else if(semode.equals("3")){
					
				}else if(semode.equals("4")){
					
				}else if(semode.equals("5")){
					
				}else if(semode.equals("6")){
					
				}
			}else{//��һ�ξ���
				hs.setAttribute("mode", mode);
				hs.setAttribute("semode", mode);//����semode
				if(mode.equals("1")){	
					request.getRequestDispatcher("OBGeneralExpense.jsp").forward(request, response);
				}else if(mode.equals("2")){
					request.getRequestDispatcher("OBTravelExpense.jsp").forward(request, response);
				}else if(mode.equals("3")){
					request.getRequestDispatcher("OBTrafficExpense.jsp").forward(request, response);
				}else if(mode.equals("4")){
					request.getRequestDispatcher("OBMedicalExpense.jsp").forward(request, response);
				}else if(mode.equals("5")){
					request.getRequestDispatcher("OBTemporaryPayments.jsp").forward(request, response);
				}else if(mode.equals("6")){
					request.getRequestDispatcher("OBMeetingExpense.jsp").forward(request, response);
				}
			}
		}catch(Exception e){
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response){
		this.doGet(request, response);
	}

}
