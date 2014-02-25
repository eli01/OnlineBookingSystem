package com.OB.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class SqlHelper {
	private Connection ct=null;
	private PreparedStatement ps=null;
	private ResultSet rs=null;
	public SqlHelper()
	{
		try {
			ct=new ConnDB().getConn();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	//用于查询的函数（不需要paras[]）
	public ResultSet query(String sql)
	{
		try {
			//采用注入方式
			 //设计结果集为可滚动
			//ps=ct.prepareStatement(sql,ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
			ps=ct.prepareStatement(sql);
			//对sql语句赋值
			rs=ps.executeQuery();//完成查询操作并将结果返回给结果集
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//这里没有马上关闭连接，否则无法返回结果集
		//关闭的操作交给model层
		return rs;
	}
		
	//用于查询的函数（会返回查询的结果）
	public ResultSet query(String sql,String []paras)
	{
		try {
			//采用注入方式
			System.out.println(sql+" "+paras[0]);
			ps=ct.prepareStatement(sql,ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
		
			for(int i=0;i<paras.length;i++){
				ps.setString(i+1, paras[i]);
			}
			rs=ps.executeQuery();//完成查询操作并将结果返回给结果集
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("对sql预处理时发现错误！");
		}
		//这里没有马上关闭连接，否则无法返回结果集
		//关闭的操作交给model层
		return rs;
	}
	
	//用于增、删、改的函数（返回操作是否成功）
	public boolean update(String sql)
	{
		boolean isOK=true;
		try {
			ps=ct.prepareStatement(sql);

			if(ps.executeUpdate()!=1)
			{
				isOK=false;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			isOK=false;
			e.printStackTrace();
			System.out.println("对sql预处理时发现错误！");
		}finally{
			this.sqlClose();
		}
		return isOK;
	}
	
	public boolean update(String sql,String paras[])
	{
		boolean isOK=true;
		try {
			ps=ct.prepareStatement(sql);
			for(int i=0;i<paras.length;i++)
			{
				ps.setString(i+1, paras[i]);
			}
			if(ps.executeUpdate()!=1)
			{
				isOK=false;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			isOK=false;
			e.printStackTrace();
		}finally{
			this.sqlClose();
		}
		return isOK;
	}
	
	//关闭操作
	public void sqlClose()
	{
		try {
			if(rs!=null) rs.close();
			if(ps!=null) ps.close();

			if(ct!=null) ct.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("关闭资源异常！");
		}	
	}	
}

