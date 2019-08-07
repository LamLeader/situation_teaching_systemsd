package com.test;
import org.dom4j.DocumentException;
/**
 * 此类是用来构建xml中节点的，比如你需要解析或生成xml文档都需要用到这个类。
 * @author XIAOWU
 *
 */
public class Test {
	public static void main(String args[]) throws DocumentException {
       /* String xmlStr = "<root><a>test</a></root>";
        Document document = DocumentHelper.parseText(xmlStr);
        Element root = document.getRootElement();// 获得根节点；
 
        // 进行迭代；读取根节点下的所有节点 
        for (Iterator<Element> i = root.elementIterator(); i.hasNext();) {
            Element element = i.next();
            System.out.println("节点名称：" + element.getName());
            System.out.println("节点值：" + element.getData());
        }*/
        /*String sql="小倩";
        if(sql.equals("小倩")){
        	sql+="你好！";
        	System.out.println("sql:"+sql);
        	System.out.println("sql占用内存："+Runtime.getRuntime().totalMemory()/1024/1024+"M");
        }*/
       
        StringBuffer sql1=new StringBuffer("国庆放假");
         if (sql1.equals("国庆放假")) {
			sql1.append("2018");
			 System.out.println("sql1"+sql1);
			 System.out.println("sql1占用内存："+Runtime.getRuntime().totalMemory()/1024/1024+"M");
		} 
         int a = 2;
         int b = 1;
         int c = a > b ? a : b;
         System.out.println("值："+c);
        
    }
}
