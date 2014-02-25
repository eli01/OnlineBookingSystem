package com.OB.model;
import java.sql.*;
import java.util.*;
public class FacultyBeanCl {
	//ҵ���߼�
	private Connection ct=null;
	private PreparedStatement ps=null;
	private ResultSet rs=null;
	//��֤�û�
	public boolean checkUser(String u,String p){
		boolean b=false;
		try{
			//�õ�����n
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
	
	//��õ�ǰ�Ѿ�ԤԼ�Ŀͻ�����
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
	//����sqlhelper��ɲ�ѯ�����˵���Ϣ
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
	//дһ���ر����ݿ���Դ�ĺ���
	public void close(){
		try{
			//���ݿ�����������޵�Ҫ��ʱ�ر�ע��˳��
			if(rs!=null)rs.close();
			if(ps!=null)ps.close();
			if(ct!=null)ct.close();
		}catch(Exception e){
			e.printStackTrace();
		}		
	}
}

