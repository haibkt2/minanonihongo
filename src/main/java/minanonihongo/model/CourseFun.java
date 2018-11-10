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
@Table(name = "course_fun")
@NamedQuery(name = "CourseFun.findAll", query = "SELECT cf FROM CourseFun cf")
public class CourseFun implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "Course_Fun_ID")
	private String courseBgId;

	@Temporal(TemporalType.DATE)
	@Column(name = "CREATE_DATE")
	private Date createDate;

	@Temporal(TemporalType.DATE)
	@Column(name = "UPDATE_DATE")
	private Date updateDate;
	
	private String locaFileImg;

	private String courseIlmFlg;

	@ManyToOne
	@JoinColumn(name = "COURSE_FUN_TYPE_ID")
	private CourseFunType courseFunType;
	public CourseFun() {

	}
	public String getCourseBgId() {
		return courseBgId;
	}
	public void setCourseBgId(String courseBgId) {
		this.courseBgId = courseBgId;
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
	public String getLocaFileImg() {
		return locaFileImg;
	}
	public void setLocaFileImg(String locaFileImg) {
		this.locaFileImg = locaFileImg;
	}
	public String getCourseIlmFlg() {
		return courseIlmFlg;
	}
	public void setCourseIlmFlg(String courseIlmFlg) {
		this.courseIlmFlg = courseIlmFlg;
	}
	public CourseFunType getCourseFunType() {
		return courseFunType;
	}
	public void setCourseFunType(CourseFunType courseFunType) {
		this.courseFunType = courseFunType;
	}

}
