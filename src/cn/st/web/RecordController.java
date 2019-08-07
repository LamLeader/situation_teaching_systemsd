package cn.st.web;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.st.dao.ResultDao;
import cn.st.entity.Grade;
import cn.st.entity.Result;

@Controller
public class RecordController {
	
	
	
	@Resource private ResultDao resulDao;
	  /**
	    * 学生自己成绩查看
	    * @param model
	    * @return
	    * @author qq
	    */
	   @RequestMapping(value="/recordList")
	   public String  recordList(Model model,HttpServletRequest req,@RequestParam(value="type",defaultValue="",required=false) String type) {
		    HttpSession session=req.getSession();
			String stuName=(String) session.getAttribute("stuName");
			 List<Result> list=null;
			list= resulDao.queryResul(stuName,type,0);
		    model.addAttribute("list", list);
	       return "record/list";
	   }
	    /**
	     * 查看我自己的成绩报表
	     * @param model
	     * @param req
	     * @param type
	     * @return
	     */
	    @RequestMapping("/showMyGradeName")
		@ResponseBody
		public List<Result> showMyGradeName(Model model,HttpServletRequest req,@RequestParam(value="type",defaultValue="",required=false) String type){
			 HttpSession session=req.getSession();
		     String stuName=(String) session.getAttribute("stuName");
		     List<Result> list=new ArrayList<Result>();
			 list= resulDao.queryResul(stuName,type,0);
			 for (int i = 0; i < list.size(); i++) {
				System.out.println("records:"+list.get(i).getRecords());
			}
			
			return list;		
		}
   
   
	   /**
	    * 管理员和教师成绩查看
	    * @param model
	    * @return
	    * @author qq
	    */
	   @RequestMapping(value="/recordList2")
	   public String  recordList2(Model model,HttpServletRequest req,String type) {
		    HttpSession session=req.getSession();
			 List<Result> list=null;
			try {
				int teacher_id=(int) session.getAttribute("teacherId");
			    list= resulDao.queryResul(null,type,teacher_id);
			    for (int i = 0; i < list.size(); i++) {
					System.out.println("records:"+list.get(i).getRecords());
				}
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		    model.addAttribute("list", list);
	       return "record/list";
	   }
	   /**
	     * 管理员和教师成绩查看成绩报表
	     * @param model
	     * @param req
	     * @param type
	     * @return
	     */
	    @RequestMapping("/showMyGradeNameTeaAndAdmin")
		@ResponseBody
		public List<Result> showMyGradeNameTeaAndAdmin(Model model,HttpServletRequest req,@RequestParam(value="type",defaultValue="",required=false) String type){
			 HttpSession session=req.getSession();
			 List<Result> list=null;
			 int teacher_id=(int) session.getAttribute("teacherId");
		     list= resulDao.queryResul(null,type,teacher_id);
		     for (int i = 0; i < list.size(); i++) {
			 	System.out.println("records:"+list.get(i).getRecords());
			 }
			return list;		
		}
  
	   /**
	    * 127.0.0.1:8081/situation_teaching_systemsd/views/echart.jsp
	    * @return
	    */
	    @RequestMapping("/getGrade")
		@ResponseBody
		public List<Grade> showGradeName(){
			List<Grade> list=new ArrayList<Grade>();
			list.add(new Grade("一班","89.9"));
			list.add(new Grade("二班","90.0"));
			list.add(new Grade("三班","67.9"));
			list.add(new Grade("四班","89.9"));
			list.add(new Grade("五班","70.0"));
			list.add(new Grade("六班","67.9"));
			return list;		
		}
	   
	     
	   
}
