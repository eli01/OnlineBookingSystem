package com.OB.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class MethodCl {
	private Connection ct=null;
	private PreparedStatement ps=null;
	private ResultSet rs=null;
	//向数据库中（消费类型表）写入数据，参数为数组	public String query(String sql,String []paras)
	public boolean update(String sql,String paras[]){
		SqlHelper sh=new SqlHelper();
		return sh.update(sql, paras);
	}
	public boolean update(String sql,ArrayList<String> al){
		SqlHelper sh=new SqlHelper();
		String[] paras=new String[al.size()];
		al.toArray(paras);
		return sh.update(sql, paras);
	}
	
	public String getID(String sql,String latter){
		//返回新的预约号
		return Tools.getID(this.query(sql),latter,false);
	}
	public String query(String sql)
	{
		String str="000000";
		SqlHelper sh=new SqlHelper();
		try {			
			ResultSet rs=sh.query(sql);
			if(rs.next()){
				str=rs.getString(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			sh.sqlClose();
		}
		//这里没有马上关闭连接，否则无法返回结果集
		//关闭的操作交给model层
		return str;
	}
	public String query(String sql,String []paras)
	{
		SqlHelper sh=new SqlHelper();
		String str="不知道";
		try {			
			ResultSet rs=sh.query(sql,paras);
			if(rs.next()){
				str=rs.getString(1);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();

		}finally{
			sh.sqlClose();
		}
		//这里没有马上关闭连接，否则无法返回结果集
		//关闭的操作交给model层
		return str;
	}

}
