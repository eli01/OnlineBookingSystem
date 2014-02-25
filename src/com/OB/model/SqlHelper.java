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
	//���ڲ�ѯ�ĺ���������Ҫparas[]��
	public ResultSet query(String sql)
	{
		try {
			//����ע�뷽ʽ
			 //��ƽ����Ϊ�ɹ���
			//ps=ct.prepareStatement(sql,ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
			ps=ct.prepareStatement(sql);
			//��sql��丳ֵ
			rs=ps.executeQuery();//��ɲ�ѯ��������������ظ������
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//����û�����Ϲر����ӣ������޷����ؽ����
		//�رյĲ�������model��
		return rs;
	}
		
	//���ڲ�ѯ�ĺ������᷵�ز�ѯ�Ľ����
	public ResultSet query(String sql,String []paras)
	{
		try {
			//����ע�뷽ʽ
			System.out.println(sql+" "+paras[0]);
			ps=ct.prepareStatement(sql,ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
		
			for(int i=0;i<paras.length;i++){
				ps.setString(i+1, paras[i]);
			}
			rs=ps.executeQuery();//��ɲ�ѯ��������������ظ������
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("��sqlԤ����ʱ���ִ���");
		}
		//����û�����Ϲر����ӣ������޷����ؽ����
		//�رյĲ�������model��
		return rs;
	}
	
	//��������ɾ���ĵĺ��������ز����Ƿ�ɹ���
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
			System.out.println("��sqlԤ����ʱ���ִ���");
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
	
	//�رղ���
	public void sqlClose()
	{
		try {
			if(rs!=null) rs.close();
			if(ps!=null) ps.close();

			if(ct!=null) ct.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("�ر���Դ�쳣��");
		}	
	}	
}

