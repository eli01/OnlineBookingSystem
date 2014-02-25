//ԤԼ������Ϣ������ģ��
package com.OB.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class BasicBeanCl {
	//ҵ���߼�
	private Connection ct=null;
	private PreparedStatement ps=null;
	private ResultSet rs=null;
	
	//OBStartClServletͨ�����ø÷��������ݴ������ݿ⣨������������
	public boolean update(String sql,String paras[]){
		SqlHelper sh=new SqlHelper();
		return sh.update(sql, paras);
	}
	//ֻ��һ������
	public boolean update(String sql){
		SqlHelper sh=new SqlHelper();
		return sh.update(sql);
	}
	
	public String getOBID(){
		String sql="select top 1 a1 from OBBasic order by a1 desc";
		//�����µ�ԤԼ��
		return Tools.getID(this.query(sql),"O",true);
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
	//дһ����ø���ʱ�����ʱ��ε�ԤԼ�����ĺ���
	public String[] getOBInfo(int year,int month,int day,String window){
		String strYear=String.valueOf(year);
		String strMonth=String.valueOf(month);
		String strDay=String.valueOf(day);
		String[] obNum=new String[18];
		String[] minutes={"00","30"};
		if(month<10){
			strMonth="0"+strMonth;
		}
		if(day<10){
			strDay="0"+strDay;
		}
		int flag=0;
		String hour="";
		String dates="";
		for(int i=0;i<9;i++){
			for(int j=0;j<2;j++){
				//2013-03-04 08:30:00
				if(8+i<10){
					hour="0"+(8+i);
				}else{
					hour=(8+i)+"";
				}
				
				dates=strYear+"-"+strMonth+"-"+strDay+" "+hour+":"+minutes[j]+":00";
				//obNum[flag]=this.query("select count(*) from OBBasic where a2='"+year+"-"+(month>=10?month:"0"+month)+"-"+(day>=10?day:"0"+day)+" "+((8+i)<10?"0"+(8+i):(8+i))+":"+minutes[j]+":00'");	
				obNum[flag]=this.query("select count(*) from OBBasic where a2='"+dates+"' and a3='"+window+"'");
				flag++;
			}
		}
		return obNum;
	}

}
