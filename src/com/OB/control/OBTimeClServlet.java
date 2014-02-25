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
			//获得当前时间
			if(window==null){//第一次转过来
				Calendar c=Calendar.getInstance();
				c.setTime(new java.util.Date());
				year = c.get(Calendar.YEAR);   
				month = c.get(Calendar.MONTH)+1;   
				day   = c.get(Calendar.DAY_OF_MONTH); 			
				window="1";
				if(obTime!=null){//第三次用户提交预约日期
					year=Integer.parseInt((String)hs.getAttribute("year"));
					month=Integer.parseInt((String)hs.getAttribute("month"));
					day=Integer.parseInt((String)hs.getAttribute("day"));
					window=(String)hs.getAttribute("window");
					//转化成字符串
					String strYear=String.valueOf(year);
					String strMonth=String.valueOf(month);
					String strDay=String.valueOf(day);
					//如果小于10给月、日加个0打头
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
					//System.out.println("obTime不为空！看看是什么："+obTime);
					//还要修改窗口值
					bbc.update("update OBBasic set a3='"+window+"' where a1='"+(String)hs.getAttribute("OBID")+"'");
				}else{
					String method=request.getParameter("method");
					hs.setAttribute("method", method);
				}
			}else{//第二次说明用户提交了检索功能
				year=Integer.parseInt(request.getParameter("year2"));
				month=Integer.parseInt(request.getParameter("month2"));
				day=Integer.parseInt(request.getParameter("day2"));	
				hs.setAttribute("window", window);
			}
			//调用BasicBeanCl获得各个时间段预约人数的数组
			
			String[] obNum=bbc.getOBInfo(year, month, day,window);//利用当前时间获得当前各个时间段预约人数
	
			//将当前时间信息放至session
			hs.setAttribute("year", year+"");
			hs.setAttribute("month", month+"");
			hs.setAttribute("day", day+"");
			//将各个时间段的预约人数信息放至session
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
