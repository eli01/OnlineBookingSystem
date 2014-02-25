package com.OB.model;

import java.util.Calendar;

public class Tools {
	public static String getNewString(String input){
		String newStr="";
		try{
			newStr=new String(input.getBytes("Latin1"),"utf-8");
		}catch(Exception e){
			e.printStackTrace();
		}
		return newStr;
	}
	public static String getID(String strID,String letter,boolean b){
		//流水号由两部分组成：日期和序列号像这样
		// 200805270000  200805270001  200805270002 
		Calendar c=Calendar.getInstance();
		c.setTime(new java.util.Date());
		int   year = c.get(Calendar.YEAR);   
		int   month = c.get(Calendar.MONTH)+1;   
		int   day   = c.get(Calendar.DAY_OF_MONTH);   
		int   hour = c.get(Calendar.HOUR_OF_DAY);   
		int   minute =c.get(Calendar.MINUTE);   
		int   second =c.get(Calendar.SECOND); 
		
		//转化为字符串
		String monthStr="";
		String dayStr="";
		String hourStr="";
		String minuteStr="";
		String secondStr="";
		String yearStr=String.valueOf(year);
		if(month>9){
			monthStr=String.valueOf(month);
		}else{
			monthStr=0+String.valueOf(month);
		}
		if(day>9){
			dayStr=String.valueOf(day);
		}else{
			dayStr=0+String.valueOf(day);
		}
		if(hour>9){
			hourStr=String.valueOf(hour);
		}else{
			hourStr=0+String.valueOf(hour);
		}
		if(minute>9){
			minuteStr=String.valueOf(minute);
		}else{
			minuteStr=0+String.valueOf(minute);
		}
		if(second>9){
			secondStr=String.valueOf(second);
		}else{
			secondStr=0+String.valueOf(second);
		}

		String newIDHead=yearStr+monthStr+dayStr+hourStr+minuteStr+secondStr;
		if(!b){
			newIDHead=yearStr+monthStr+dayStr;
		}
		//取得最后5位->转换成int->加一
		int ii=Integer.parseInt(strID.substring(strID.length()-4))+1;
		int len=String.valueOf(ii).length();
		String strTail="";
		switch (len){   
		case 1:
		strTail="000"+String.valueOf(ii);
		break;
		case 2:
		strTail="00"+String.valueOf(ii);
		break;
		case 3:
		strTail="0"+String.valueOf(ii);
		break;
		case 4:
		strTail=String.valueOf(ii);
		break;
		default:
		}
		
		String newID=letter+newIDHead+strTail;
		return newID;
	}
}

