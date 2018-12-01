package minanonihongo.model;

import java.util.Date;

public class JLPTResultJson {

    private String jlptRsId;
	private String lesson_id;
	private String grade;
	private String data;
	private String total_grade;
	private boolean passed;
	private Date created;
	private String course;
	public String getLesson_id() {
		return lesson_id;
	}
	public void setLesson_id(String lesson_id) {
		this.lesson_id = lesson_id;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	
	public String getTotal_grade() {
		return total_grade;
	}
	public void setTotal_grade(String total_grade) {
		this.total_grade = total_grade;
	}
	public boolean getPassed() {
		return passed;
	}
	public void setPassed(boolean passed) {
		this.passed = passed;
	}
	public Date getCreated() {
		return created;
	}
	public void setCreated(Date created) {
		this.created = created;
	}
	public String getCourse() {
		return course;
	}
	public void setCourse(String course) {
		this.course = course;
	}
	public String getJlptRsId() {
		return jlptRsId;
	}
	public void setJlptRsId(String jlptRsId) {
		this.jlptRsId = jlptRsId;
	}
	public String getData() {
		return data;
	}
	public void setData(String data) {
		this.data = data;
	}
	
}
