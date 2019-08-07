package cn.st.entity;

public class Grade {
    /**
     * 成绩表
     */
	private int result_id;
	private String name;//姓名
	private String score;
	public Grade(String name, String score) {
		super();
		this.name = name;
		this.score = score;
	}
	public int getResult_id() {
		return result_id;
	}
	public void setResult_id(int result_id) {
		this.result_id = result_id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getScore() {
		return score;
	}
	public void setScore(String score) {
		this.score = score;
	}
	
	
	
}
