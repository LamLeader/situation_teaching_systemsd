package cn.st.web;

import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.st.entity.Student;
import cn.st.poiexcel.util.excelExportUtil;
import cn.st.query.Page;
import cn.st.service.StudentService;
@Controller
public class ExportExcelStuControl {
	    @Autowired  
	    private excelExportUtil studentExportService;  
	    /**
	     * 例子https://blog.csdn.net/ptzrbin/article/details/8751293
	     * localhost:8080/situation_teaching_system/exportExcel
	     * @param request
	     * @param response
	     * @throws Exception
	     */
	    @RequestMapping(value = "/exportExcel")  
	    public void exportExcel(HttpServletRequest request, HttpServletResponse response,
	    		String currentPage)   
	    throws Exception {  
	    	 List<Student> list = new ArrayList<Student>(); 
		     Page<Student> pagev=new Page<Student>();
			//分页判断
			pagev.setCurrentPage(currentPage==null? 1 :Integer.parseInt(currentPage));
	        StudentService service=new StudentService();
	        Page<Student> page=service.queryStuInf(pagev, "");
	        //获取要导出的数据
	        for (int i = 0; i < page.total; i++) {
	            Student student=new Student();
	            student.setStu_num(page.result.get(i).getStu_num());
	            student.setStu_name(page.result.get(i).getStu_name());
	            student.setGender(page.result.get(i).getGender());
	            student.setDepartment(page.result.get(i).getDepartment());
	            student.setClassT(page.result.get(i).getClassT());
	        	student.setPhone(page.result.get(i).getPhone());
	        	student.setEamil(page.result.get(i).getEamil());
	        	list.add(student);
			}
	        //批量导出数据list中的数据
	        HSSFWorkbook wb = studentExportService.export(list);  
	        response.setContentType("application/vnd.ms-excel");  
	        response.setHeader("Content-disposition", "attachment;filename=student.xls");  
	        OutputStream ouputStream = response.getOutputStream();//获取输出流
	        wb.write(ouputStream);//将ouputStream的数据批量写入wb的excel中
	        ouputStream.flush();  
	        ouputStream.close(); 
	       
	   }
	    
	    
}
