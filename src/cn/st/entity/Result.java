package cn.st.entity;

public class Result {
    /**
     * 成绩表
     */
	private int result_id;
	private String stu_name;//姓名
	private int records;//成绩
	private String create_date;
	private int teacher_id;//教师
	public Result() {
		super();
		
	}


	public int getResult_id() {
		return result_id;
	}


	public void setResult_id(int result_id) {
		this.result_id = result_id;
	}


	public String getStu_name() {
		return stu_name;
	}


	public void setStu_name(String stu_name) {
		this.stu_name = stu_name;
	}


	public int getRecords() {
		return records;
	}


	public void setRecords(int records) {
		this.records = records;
	}


	public String getCreate_date() {
		return create_date;
	}


	public void setCreate_date(String create_date) {
		this.create_date = create_date;
	}


	public int getTeacher_id() {
		return teacher_id;
	}


	public void setTeacher_id(int teacher_id) {
		this.teacher_id = teacher_id;
	}
	
}
