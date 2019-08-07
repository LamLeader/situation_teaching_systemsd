package cn.st.poiexcel.util;

import java.util.List;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFCellStyle;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.springframework.stereotype.Service;

import cn.st.entity.Student;

/**
 * Excel的导出工具类
 *
 */
@Service
public class excelExportUtil {
    String[] excelHeader = { "学号","学生姓名","性别","系别","班级","电话","邮箱"};//设置表头
    //excel的导出工具类
    public HSSFWorkbook export(List<Student> list) {  
        HSSFWorkbook wb = new HSSFWorkbook();  
        HSSFSheet sheet = wb.createSheet("Student");//设置sheet名字
        HSSFRow row = sheet.createRow((int) 0);//从第0行开始创建行 
        //设置Excel的样式
        HSSFCellStyle style = wb.createCellStyle();  
        style.setAlignment(HSSFCellStyle.ALIGN_CENTER);  
        /*-----设置自动的表头大小------*/
        for (int i = 0; i < excelHeader.length; i++) {  
            HSSFCell cell = row.createCell(i);  
            cell.setCellValue(excelHeader[i]);  
            cell.setCellStyle(style);  
            //sheet.autoSizeColumn(i,true);//自动列大小方式一
            //自动列大小方式二
            sheet.setColumnWidth(i, excelHeader[i].getBytes().length*2*256);
        } 
        //设置导出的最大值65536 todo
    	/*-----创建列设置值-------*/
	        for (int i = 0; i < list.size(); i++) {  
		            row = sheet.createRow(i + 1); //除去表头的一列
		            Student student = list.get(i);  
		            row.createCell(0).setCellValue(student.getStu_num());  
		            row.createCell(1).setCellValue(student.getStu_name());  
		            row.createCell(2).setCellValue(student.getGender());  
		            row.createCell(3).setCellValue(student.getDepartment());  
		            row.createCell(4).setCellValue(student.getClassT());  
		            row.createCell(5).setCellValue(student.getPhone());  
		            row.createCell(6).setCellValue(student.getEamil());
	        }  
	        System.out.println("list.size():"+list.size());
        return wb;  
    }  
}
