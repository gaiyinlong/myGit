package coms.hrsoft.util;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

/**
 * @company ��������Ӫ	
 * @author ����Ӫ
 * @description 
 * 2017��2��17��
 */
public class TimeUtil {
	
	public static int readInt(HttpServletRequest req,String paramName){
		int result = 0;
		try {
			result = Integer.parseInt(req.getParameter(paramName));
		} catch (Exception e) {

		}
		return result;
	}
	
	public static String getNow(){
		return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
	}
}
