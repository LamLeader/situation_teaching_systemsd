package com.test;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
/**
 * list与Set、Map区别及适用场景
1、List,Set都是继承自Collection接口，Map则不是

2、List特点：元素有放入顺序，元素可重复 ，
Set特点：元素无放入顺序，元素不可重复，重复元素会覆盖掉，
（注意：元素虽然无放入顺序，但是元素在set中的位置是有该元素的HashCode决定的，
其位置其实是固定的，加入Set 的Object必须定义equals()方法 ，
另外list支持for循环，也就是通过下标来遍历，
也可以用迭代器，但是set只能用迭代，因为他无序，
无法用下标来取得想要的值。） 

3.Set和List对比： 
Set：检索元素效率低下，删除和插入效率高，插入和删除不会引起元素位置改变。 
List：和数组类似，List可以动态增长，查找元素效率高，插入删除元素效率低，因为会引起其他元素位置改变。 

4.Map适合储存键值对的数据

5.线程安全集合类与非线程安全集合类 
LinkedList、ArrayList、HashSet是非线程安全的，Vector是线程安全的;
HashMap是非线程安全的，HashTable是线程安全的;
StringBuilder是非线程安全的，StringBuffer是线程安全的。
 * @author XIAOWU
 *
 */
public class MapListSet {
	
	
	
    /*-----------------hashSet的用法 begin----------------------*/
	/**
	 * Java中集合Set的用法1、HashSet类（散列存放）  适合 删除 新增
        Java.util.HashSet类实现了Java.util.Set接口。
        l  它不允许出现重复元素；
        l  不保证和政集合中元素的顺序
        l  允许包含值为null的元素，但最多只能有一个null元素。
	 * @param args
	 */
	private static void hashSetFunction() {
		// TODO Auto-generated method stub
		
 		Set<Object> hashSet1=new HashSet<Object>();
 		
 		hashSet1.add("123");
 		hashSet1.add("456");
 		hashSet1.add("789");
 		hashSet1.add(null);
 		
 		Set<Object> hashSet2=new HashSet<Object>();
 		hashSet2.add("小一");
 		hashSet2.add("小二");
 		hashSet2.add("小三");
 		hashSet2.add(null);
 		/**
 		 * 1、add是将传入的参数作为当前List中的一个Item存储，即使你传入一个List
 		 * 也只会另当前的List增加1个元素
 		 * 2、addAll是传入一个List，将此List中的所有元素
 		 * 加入到当前List中，也就是当前List会增加的元素个数为传入的List的大小
 		 */
 		hashSet1.add(hashSet2);
 		//hashSet1.addAll(hashSet2);
 		//移除指定元素
 		//hashSet1.remove("123");
 	    //清理set内的元素值
 		//hashSet1.clear();
 		//打印出全部元素
 		System.out.println("hashSet1:"+hashSet1);
 		/**
 		 * 遍历所有的元素
 		 * 1、for方式
 		 * 2、Iterator
 		 */
 		 for (Object object : hashSet1) {
			System.out.println("--forhashSet1--:"+object);
		 }
 		 Iterator<Object> it=hashSet1.iterator();
 		 while (it.hasNext()) {
			
 			System.out.println("----IteratorhashSet1--:"+it.next());
		}
	}
	/*-----------------hashSet的用法 end----------------------*/
	
	/*-----------------hashMap的用法 begin----------------------*/
	/**
	 * Map 集合 在编程中应用最广泛  适合键值对取值
	 * @param args
	 */
	private static void hashMapFunction() {
	   // TODO Auto-generated method stub
	   //首先录入每名同学的成绩 put存值
       Map<String, Object> map1=new HashMap<String, Object>();
		map1.put("小明", 98);
		map1.put("小红", 98);
		map1.put("小黑", 98);
	    
		//get取值
	  // System.out.println("map1:"+map1.get("小明").toString());
	   //其次给每名同学录更多的成绩
	    Map<String, List<Float>> map2=new HashMap<String, List<Float>>();
	    
	    List<Float> listScore=new ArrayList<Float>();
	    listScore.add((float) 90.2);
	    listScore.add((float) 82.2);
	    listScore.add((float) 78.2);
	    map2.put("小明", listScore);
	    
	    listScore.add((float) 45.2);
	    listScore.add((float) 56.2);
	    listScore.add((float) 62.2);
	    map2.put("小红", listScore);
	    
	  //  System.out.println("listScore："+listScore);
	    
	    //再次我们想保留每个同学究竟哪门课的了多少分的具体信息
	    Map<String, Map<String, Float>> map3=new HashMap<String, Map<String, Float>>();
	    
	    Map<String, Float> mapXiaoMing=new HashMap<String, Float>();
	    mapXiaoMing.put("语文", (float) 78.3);
	    mapXiaoMing.put("数学", (float) 89.3);
	    mapXiaoMing.put("外语", (float) 90.3);
	    
	    map3.put("小明", mapXiaoMing);
	   System.out.println("小明："+map3.get("小明"));
	}
	/**
	 * List集合  适合动态查询
	 * @param args
	 */
	private static void arrayListFunction() {
		// TODO Auto-generated method stub
        
		List<Object> list=new ArrayList<Object>();
			list.add("123");
			list.add("456");
			list.add("789");
			list.add("110");
		Map<String, Object>	 mapXiaoMing=new HashMap<String, Object>();
		 mapXiaoMing.put("语文", (float) 78.3);
		 mapXiaoMing.put("数学", (float) 89.3);
	     mapXiaoMing.put("外语", (float) 90.3);
		
	    list.add(mapXiaoMing);
	      
	    Set<Object> set=new HashSet<Object>();
	    set.add("set添加1");
	    set.add("set添加2");
	    set.add("set添加3");
	    
	    list.add(set);
	     
		for (int j = 0; j < list.size(); j++) {
			System.out.println("list:"+list.get(j));
		}	
		
		
		 
	}
	
	
	public static void main(String[] args) {
		//MapListSet.hashSetFunction();
		//MapListSet.hashMapFunction();
		//MapListSet.arrayListFunction();
	}
}
