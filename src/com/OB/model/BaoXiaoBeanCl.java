package com.OB.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class BaoXiaoBeanCl {
	private Connection ct=null;
	private PreparedStatement ps=null;
	private ResultSet rs=null;
	//��OBStartColServlet.java�������������ݿ���Ҫ�����˵�ID������
	public String[] getIDAndName(){
		String[] BXManInfo=new String[2];
		try{
			ct=new ConnDB().getConn();
			ps=ct.prepareStatement("select top 1 ID,Bname from BaoxiaoMan");
			rs=ps.executeQuery();
			if(rs.next()){
				for(int i=0;i<BXManInfo.length;i++){
					BXManInfo[i]=rs.getString(i+1);
				}
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			this.close();
		}
		return BXManInfo;
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
