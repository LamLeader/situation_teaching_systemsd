package cn.st.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import cn.st.entity.Result;
import cn.st.util.ConnDB;
@Repository("resulDao")
public class ResultDao {
	/**
	 * spring注解
	 * @Repository用于标注数据访问组件，即DAO组件
	 */
	
	
	/**
	 * 查询 我的信息
	 * @param name
	 * @return
	 * @author qq
	 * type 1 管理员  2  学生  3  教师
	 */
	public List<Result> queryResul(String stu_name,String type,int teacher_id)  {
		    Connection conn=null;
		     ResultSet rs=null;
		    Statement st = null;
		 List<Result> result=new ArrayList<Result>();
		try {
			conn=ConnDB.getConnection();
			String sql ="";
			if(null!=type&&!("").equals(type)){
				if(type.equals("1")){
					sql="select * from tbl_result where 1=1";
				}if(type.equals("2")){
					sql="select * from tbl_result where 1=1 and stu_name='"+stu_name+"'";
				}if(type.equals("3")){
					sql="select * from tbl_result where 1=1 and teacher_id='"+teacher_id+"'";
				}
			}
			st=conn.createStatement();
			rs=st.executeQuery(sql.toString());
			while (rs.next()) {
				Result  s=new Result();
				s.setResult_id(rs.getInt("result_id"));
				s.setStu_name(rs.getString("stu_name"));
				s.setRecords(rs.getInt("records"));
				s.setCreate_date(rs.getString("create_date"));
				s.setTeacher_id(rs.getInt("teacher_id"));
				result.add(s);
			}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				 try {
					 rs.close();
					 st.close();
			         conn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		return result;
	}
	
	/**
	 * 成绩添加
	 * @param student
	 * @return
	 * @author qq
	 */
	public boolean  resultSave(Result s) {
		boolean bol=false;
		PreparedStatement ps=null;
		Connection conn=null;
		conn=ConnDB.getConnection();
		String sql="insert into tbl_result(stu_name,records) values(?,?)";
		try {
			ps=conn.prepareStatement(sql);//预处理sql 效率快
			ps.setString(1, s.getStu_name());
			ps.setInt(2, s.getRecords());
			ps.executeUpdate();
			bol=true;
			System.out.println("添加成功");
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				conn.close();
				ps.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return bol;
	}
	
}
