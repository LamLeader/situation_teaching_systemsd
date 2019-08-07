package cn.st.util;

public class IsNotEmpty {
   public static boolean isNotEmpty(String str){
	  String str1= str.trim();//去空格
	   boolean bol=false;
	   if(!"".equals(str1)||null!=str1){
		   bol=true;
	   }else{
		   bol=false;
	   }
	   return bol;
   }
   
   public static void main(String[] args) {
	try {
			String str = "";
			String str1 = "111";

			if (isNotEmpty(str)) {
				System.out.println("-------空字符串------");
			}
			if (isNotEmpty(str1)) {
				System.out.println("-------非空字符串------" + str1);
			}
	} catch (Exception e) {
		// TODO: handle exception
		e.printStackTrace();
	}
	  
	   
  }
   
}
