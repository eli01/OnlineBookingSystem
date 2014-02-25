package com.OB.control;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.OB.model.MethodCl;



@WebServlet("/OBPaymentModeClServlet")
public class OBPaymentModeClServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response){
		try{
			
			//���method
			String method=request.getParameter("method");
			HttpSession hs=request.getSession();
			hs.setAttribute("method", method);
			if(method==null){				
				request.getRequestDispatcher("OBPaymentMode.jsp").forward(request, response);
			}else{			
				
				MethodCl mc=new MethodCl();
				String[] letters={"A","B","C","D"};//��ͬ��֧�����ͱ��ǰ���в�ͬ����ĸ
				if(method.equals("form1")){				
					//��ʼ��������ֵ
					String[][] form1Info=new String[Integer.parseInt(request.getParameter("zkNum"))][6];
					for(int i=0;i<form1Info.length;i++){
						//�ȷŵ�session����
						hs.setAttribute("id"+(i+1),request.getParameter("id"+(i+1)));
						hs.setAttribute("name"+(i+1),request.getParameter("name"+(i+1)));
						hs.setAttribute("account"+(i+1),request.getParameter("account"+(i+1)));
						hs.setAttribute("monery"+(i+1),request.getParameter("monery"+(i+1)));
						//���浽���ݿ����Ϣ�ŵ���ά������
						form1Info[i][0]=mc.getID("select top 1 i1 from OBPayments1 order by i1 desc", letters[0]);//���
						form1Info[i][1]=request.getParameter("id"+(i+1));//���Ż�ѧ��
						form1Info[i][2]=request.getParameter("name"+(i+1));//����
						form1Info[i][3]=request.getParameter("monery"+(i+1));//ת�����
						form1Info[i][4]=request.getParameter("account"+(i+1));//�˺�(������ʱû�õ����ȷ��Ű�)
						form1Info[i][5]=(String)hs.getAttribute("OBID");//ԤԼ��	
						
						hs.setAttribute("xuhao"+(i+1), form1Info[i][0]);//����ŵ�session�Ķ����е���֣��Ǻǣ���������
						//�������ݿ�
						mc.update("insert into OBPayments1 values(?,?,?,?,?,?)", form1Info[i]);//����BasicBeanCl
					}			
				}else{
					
					ArrayList<String> al=new ArrayList<String>();
					String sql="";
					if(method.equals("form2")){
						//��ȡ����
						al.add(mc.getID("select top 1 j1 from OBPayments2 order by j1 desc", letters[1]));
						al.add(request.getParameter("method21"));
						al.add(request.getParameter("method22"));
						al.add(request.getParameter("OBID"));
						//����sql���
						sql="insert into OBPayments2 values(?,?,?,?)";
					}else if(method.equals("form3")){
						//��ȡ����
						al.add(mc.getID("select top 1 k1 from OBPayments3 order by k1 desc", letters[1]));
						al.add(request.getParameter("method31"));
						al.add(request.getParameter("method32"));
						al.add(request.getParameter("method33"));
						al.add(request.getParameter("method34"));
						al.add(request.getParameter("method35"));
						al.add(request.getParameter("OBID"));
						//����sql���
						sql="insert into OBPayments3 values(?,?,?,?,?,?)";
					}else if(method.equals("form4")){
						//��ȡ����
						al.add(mc.getID("select top 1 k1 from OBPayments4 order by l1 desc", letters[1]));
						al.add(request.getParameter("method41"));
						al.add(request.getParameter("method42"));
						al.add(request.getParameter("OBID"));
						//����sql���
						sql="insert into OBPayments4 values(?,?,?,?)";
					}
					//�������ݿ�
					mc.update(sql, al);
				}
				request.getRequestDispatcher("OBPaymentMode.jsp").forward(request, response);
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response){
		// TODO Auto-generated method stub
		this.doGet(request, response);
	}

}
