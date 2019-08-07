package cn.st.web.chart.bar;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.jfree.chart.ChartFactory;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.plot.PlotOrientation;
import org.jfree.chart.servlet.ServletUtilities;
import org.jfree.data.category.DefaultCategoryDataset;

import cn.st.dao.ResultDao;
import cn.st.entity.Result;

public class BarChart1 {
	@Resource public static ResultDao resulDao;
	public static String genBarChart(HttpSession session,HttpServletRequest req) throws Exception {
		/*DefaultCategoryDataset dataset = new DefaultCategoryDataset();
		session=req.getSession();
		String stuName=(String) session.getAttribute("stuName");
		List<Result>  list=resulDao.queryResul(stuName);
		for (int i = 0; i < list.size(); i++) {
			System.out.println("list:"+list.get(i).getRecords());
			dataset.addValue(list.get(i).getRecords(), list.get(i).getStu_name(), "鎴愮哗");
		}
		
		JFreeChart chart=ChartFactory.createBarChart3D("鎴愮哗缁熻鍥�", "鎴愮哗", "鍥�", dataset,
				PlotOrientation.VERTICAL, true, true, true);
		String fileName=ServletUtilities.saveChartAsPNG(chart, 700, 500, null,session);
		return fileName;*/
		return null;
	}
}
