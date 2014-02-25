package com.OB.model;
import java.sql.*;
import java.util.*;
public class FacultyBeanCl {
	//业务逻辑
	private Connection ct=null;
	private PreparedStatement ps=null;
	private ResultSet rs=null;
	//验证用户
	public boolean checkUser(String u,String p){
		boolean b=false;
		try{
			//得到连接n
			ct=new ConnDB().getConn();
			ps=ct.prepareStatement("select top 1 fIDCard from Faculty where fID=?");
			ps.setString(1,u);
			rs=ps.executeQuery();
			if(rs.next()){
				String strIDCard=rs.getString(1);
				String dbPasswd=strIDCard.substring(strIDCard.length()-6);
				if(dbPasswd.equals(p)){
					b=true;
				}
			}
				
		}catch(Exception ex){
			ex.printStackTrace();
		}finally{
			this.close();
		}
		return b;
	}
	
	//获得当前已经预约的客户数量
	public int getOBNum(){
		int val=0;
		try{
			ct=new ConnDB().getConn();
			ps=ct.prepareStatement("select count(*) from OBBasic where datediff(day,getDate(),a2)<7");
			rs=ps.executeQuery();
			if(rs.next()){
				val=rs.getInt(1);
			}
				
		}catch(Exception e){
			e.printStackTrace();
		}
		return val;
	}
	//调用sqlhelper完成查询报销人的信息
	public String getName(String sql){
		String name="";
		SqlHelper sh=new SqlHelper();
		try{
			rs=sh.query(sql);
			if(rs.next()){
				name=rs.getString(1);
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return name;
	}
	//写一个关闭数据库资源的函数
	public void close(){
		try{
			//数据库的连接是有限的要及时关闭注意顺序
			if(rs!=null)rs.close();
			if(ps!=null)ps.close();
			if(ct!=null)ct.close();
		}catch(Exception e){
			e.printStackTrace();
		}		
	}
}

