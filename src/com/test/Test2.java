package com.test;

public class Test2 {
    public static void main(String[] args) {
		String str="122533.png";
		String str1="";
    	StringBuffer str2 = new StringBuffer();
		for (int i = 0; i < 36; i++) {
			switch ((int)(Math.random()*3)+1) {
			case 1: str2.append((char)((int)(Math.random()*26)+65)); break;
			case 2: str2.append((char)((int)(Math.random()*26)+97)); break;
			case 3: str2.append((int)(Math.random()*10)); break;
			}
		}
		
		System.out.println("str2:"+str2);
    	
		str1=str.substring(0, str.indexOf("."));
		
		String str3=str1.replace(str1, str2);
		System.out.println("str1:"+str3+".jpg");
		
    	
	}
}
