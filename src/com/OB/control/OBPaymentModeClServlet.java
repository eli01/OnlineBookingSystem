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
			
			//获得method
			String method=request.getParameter("method");
			HttpSession hs=request.getSession();
			hs.setAttribute("method", method);
			if(method==null){				
				request.getRequestDispatcher("OBPaymentMode.jsp").forward(request, response);
			}else{			
				
				MethodCl mc=new MethodCl();
				String[] letters={"A","B","C","D"};//不同的支付类型编号前带有不同的字母
				if(method.equals("form1")){				
					//初始化插入表的值
					String[][] form1Info=new String[Integer.parseInt(request.getParameter("zkNum"))][6];
					for(int i=0;i<form1Info.length;i++){
						//先放到session里面
						hs.setAttribute("id"+(i+1),request.getParameter("id"+(i+1)));
						hs.setAttribute("name"+(i+1),request.getParameter("name"+(i+1)));
						hs.setAttribute("account"+(i+1),request.getParameter("account"+(i+1)));
						hs.setAttribute("monery"+(i+1),request.getParameter("monery"+(i+1)));
						//将存到数据库的信息放到二维数组中
						form1Info[i][0]=mc.getID("select top 1 i1 from OBPayments1 order by i1 desc", letters[0]);//编号
						form1Info[i][1]=request.getParameter("id"+(i+1));//工号或学号
						form1Info[i][2]=request.getParameter("name"+(i+1));//姓名
						form1Info[i][3]=request.getParameter("monery"+(i+1));//转卡金额
						form1Info[i][4]=request.getParameter("account"+(i+1));//账号(后面暂时没用到，先放着吧)
						form1Info[i][5]=(String)hs.getAttribute("OBID");//预约号	
						
						hs.setAttribute("xuhao"+(i+1), form1Info[i][0]);//这个放到session的动作有点奇怪，呵呵，就这样吧
						//存入数据库
						mc.update("insert into OBPayments1 values(?,?,?,?,?,?)", form1Info[i]);//调用BasicBeanCl
					}			
				}else{
					
					ArrayList<String> al=new ArrayList<String>();
					String sql="";
					if(method.equals("form2")){
						//获取数据
						al.add(mc.getID("select top 1 j1 from OBPayments2 order by j1 desc", letters[1]));
						al.add(request.getParameter("method21"));
						al.add(request.getParameter("method22"));
						al.add(request.getParameter("OBID"));
						//创建sql语句
						sql="insert into OBPayments2 values(?,?,?,?)";
					}else if(method.equals("form3")){
						//获取数据
						al.add(mc.getID("select top 1 k1 from OBPayments3 order by k1 desc", letters[1]));
						al.add(request.getParameter("method31"));
						al.add(request.getParameter("method32"));
						al.add(request.getParameter("method33"));
						al.add(request.getParameter("method34"));
						al.add(request.getParameter("method35"));
						al.add(request.getParameter("OBID"));
						//创建sql语句
						sql="insert into OBPayments3 values(?,?,?,?,?,?)";
					}else if(method.equals("form4")){
						//获取数据
						al.add(mc.getID("select top 1 k1 from OBPayments4 order by l1 desc", letters[1]));
						al.add(request.getParameter("method41"));
						al.add(request.getParameter("method42"));
						al.add(request.getParameter("OBID"));
						//创建sql语句
						sql="insert into OBPayments4 values(?,?,?,?)";
					}
					//存入数据库
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
