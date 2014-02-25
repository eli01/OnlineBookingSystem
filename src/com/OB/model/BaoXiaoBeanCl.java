package com.OB.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class BaoXiaoBeanCl {
	private Connection ct=null;
	private PreparedStatement ps=null;
	private ResultSet rs=null;
	//在OBStartColServlet.java控制器中想数据库索要报销人的ID和姓名
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
