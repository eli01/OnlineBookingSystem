package com.OB.control;

import java.io.IOException;
import java.util.Calendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.OB.model.BasicBeanCl;

/**
 * Servlet implementation class OBTimeClServlet
 */
@WebServlet("/OBTimeClServlet")
public class OBTimeClServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response){
		// TODO Auto-generated method stub
		try{
			BasicBeanCl bbc=new BasicBeanCl();
			HttpSession hs=request.getSession();
			String window=request.getParameter("window");
			String obTime=request.getParameter("obTime");
			
			int year,month,day;
			//��õ�ǰʱ��
			if(window==null){//��һ��ת����
				Calendar c=Calendar.getInstance();
				c.setTime(new java.util.Date());
				year = c.get(Calendar.YEAR);   
				month = c.get(Calendar.MONTH)+1;   
				day   = c.get(Calendar.DAY_OF_MONTH); 			
				window="1";
				if(obTime!=null){//�������û��ύԤԼ����
					year=Integer.parseInt((String)hs.getAttribute("year"));
					month=Integer.parseInt((String)hs.getAttribute("month"));
					day=Integer.parseInt((String)hs.getAttribute("day"));
					window=(String)hs.getAttribute("window");
					//ת�����ַ���
					String strYear=String.valueOf(year);
					String strMonth=String.valueOf(month);
					String strDay=String.valueOf(day);
					//���С��10���¡��ռӸ�0��ͷ
					if(month<10){
						strMonth="0"+strMonth;
					}
					if(day<10){
						strDay="0"+strDay;
					}
					String obDate=year+"-"+strMonth+"-"+strDay+" "+obTime; 
					hs.setAttribute("obDate", obDate);
					//System.out.println(obDate);
					bbc.update("update OBBasic set a2='"+obDate+"' where a1='"+(String)hs.getAttribute("OBID")+"'");
					//System.out.println("obTime��Ϊ�գ�������ʲô��"+obTime);
					//��Ҫ�޸Ĵ���ֵ
					bbc.update("update OBBasic set a3='"+window+"' where a1='"+(String)hs.getAttribute("OBID")+"'");
				}else{
					String method=request.getParameter("method");
					hs.setAttribute("method", method);
				}
			}else{//�ڶ���˵���û��ύ�˼�������
				year=Integer.parseInt(request.getParameter("year2"));
				month=Integer.parseInt(request.getParameter("month2"));
				day=Integer.parseInt(request.getParameter("day2"));	
				hs.setAttribute("window", window);
			}
			//����BasicBeanCl��ø���ʱ���ԤԼ����������
			
			String[] obNum=bbc.getOBInfo(year, month, day,window);//���õ�ǰʱ���õ�ǰ����ʱ���ԤԼ����
	
			//����ǰʱ����Ϣ����session
			hs.setAttribute("year", year+"");
			hs.setAttribute("month", month+"");
			hs.setAttribute("day", day+"");
			//������ʱ��ε�ԤԼ������Ϣ����session
			for(int i=0;i<obNum.length;i++){
				hs.setAttribute("obNum"+i, obNum[i]);
			}
			request.getRequestDispatcher("OBTimeAndWindow.jsp").forward(request, response);
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		this.doGet(request, response);
	}

}
