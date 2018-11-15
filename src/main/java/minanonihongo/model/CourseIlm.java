package minanonihongo.model;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name = "course_ilm")
@NamedQuery(name = "CourseIlm.findAll", query = "SELECT c FROM CourseIlm c")
public class CourseIlm implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "COURSE_ILM_ID")
	private String courseIlmId;

	@ManyToOne
	@JoinColumn(name = "USER_ID")
	private User user;

	@ManyToOne
	@JoinColumn(name = "COURSE_ILM_TYPE_ID")
	private CourseIlmType courseIlmType;

	@ManyToOne
	@JoinColumn(name = "COURSE_ID")
	private Course course;

	private String lessonName;

	private String introduce;
	
	private String script;
	
	private String locaFileImg;
	
	private String audio;
	
	private String example;

	private String locaFileCourse;

	private String courseIlmFlg;

	@OneToMany(mappedBy = "courseIlm")
	private List<Exam> exams;
	
	@OneToMany(mappedBy = "courseIlm")
	private List<VocaCourseIlm> vocaCourseIlms;

	
	@Temporal(TemporalType.DATE)
	@Column(name = "CREATE_DATE")
	private Date createDate;

	@Temporal(TemporalType.DATE)
	@Column(name = "UPDATE_DATE")
	private Date updateDate;

	@OneToOne(mappedBy = "courseIlm")
	private CourseGlobal courseGlobal;


	public List<VocaCourseIlm> getVocaCourseIlms() {
		return vocaCourseIlms;
	}

	public void setVocaCourseIlms(List<VocaCourseIlm> vocaCourseIlms) {
		this.vocaCourseIlms = vocaCourseIlms;
	}

	public CourseGlobal getCourseGlobal() {
		return courseGlobal;
	}

	public void setCourseGlobal(CourseGlobal courseGlobal) {
		this.courseGlobal = courseGlobal;
	}

	public String getCourseIlmId() {
		return courseIlmId;
	}

	public List<Exam> getExams() {
		return exams;
	}

	public void setExams(List<Exam> exams) {
		this.exams = exams;
	}

	public void setCourseIlmId(String courseIlmId) {
		this.courseIlmId = courseIlmId;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Course getCourse() {
		return course;
	}

	public void setCourse(Course course) {
		this.course = course;
	}

	public String getLessonName() {
		return lessonName;
	}

	public void setLessonName(String lessonName) {
		this.lessonName = lessonName;
	}

	public String getIntroduce() {
		if (introduce == null)
			return "";
		return introduce;
	}

	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}

	public String getLocaFileCourse() {
		return locaFileCourse;
	}

	public void setLocaFileCourse(String locaFileCourse) {
		this.locaFileCourse = locaFileCourse;
	}

	public String getCourseIlmFlg() {
		return courseIlmFlg;
	}

	public void setCourseIlmFlg(String courseIlmFlg) {
		this.courseIlmFlg = courseIlmFlg;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public Date getUpdateDate() {
		return updateDate;
	}

	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}

	public CourseIlmType getCourseIlmType() {
		return courseIlmType;
	}

	public void setCourseIlmType(CourseIlmType courseIlmType) {
		this.courseIlmType = courseIlmType;
	}

	public String getLocaFileImg() {
		return locaFileImg;
	}

	public void setLocaFileImg(String locaFileImg) {
		this.locaFileImg = locaFileImg;
	}

	public String getAudio() {
		return audio;
	}

	public void setAudio(String audio) {
		this.audio = audio;
	}

	public String getExample() {
		return example;
	}

	public void setExample(String example) {
		this.example = example;
	}

	public String getScript() {
		return script;
	}

	public void setScript(String script) {
		this.script = script;
	}

}
