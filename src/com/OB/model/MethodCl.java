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
	//�����ݿ��У��������ͱ�д�����ݣ�����Ϊ����	public String query(String sql,String []paras)
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
		//�����µ�ԤԼ��
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
		//����û�����Ϲر����ӣ������޷����ؽ����
		//�رյĲ�������model��
		return str;
	}
	public String query(String sql,String []paras)
	{
		SqlHelper sh=new SqlHelper();
		String str="��֪��";
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
		//����û�����Ϲر����ӣ������޷����ؽ����
		//�رյĲ�������model��
		return str;
	}

}
