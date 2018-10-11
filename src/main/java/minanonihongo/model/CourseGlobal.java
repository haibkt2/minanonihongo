package minanonihongo.model;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name = "course_global")
@NamedQuery(name = "CourseGlobal.findAll", query = "SELECT eg FROM CourseGlobal eg")
public class CourseGlobal implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "Course_GB_ID")
	private String courseBgId;

	private int totalNumber;

	@Temporal(TemporalType.DATE)
	@Column(name = "CREATE_DATE")
	private Date createDate;

	@Temporal(TemporalType.DATE)
	@Column(name = "UPDATE_DATE")
	private Date updateDate;

	@OneToOne
	@JoinColumn(name = "COURSE_ILM_ID")
	private CourseIlm courseIlm;

	public CourseGlobal() {

	}

	public CourseGlobal(int totalNumber) {
		this.totalNumber = totalNumber;
	}

	public String getCourseBgId() {
		return courseBgId;
	}

	public void setCourseBgId(String courseBgId) {
		this.courseBgId = courseBgId;
	}

	public int getTotalNumber() {
		return totalNumber;
	}

	public void setTotalNumber(int totalNumber) {
		this.totalNumber = totalNumber;
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

	public CourseIlm getCourseIlm() {
		return courseIlm;
	}

	public void setCourseIlm(CourseIlm courseIlm) {
		this.courseIlm = courseIlm;
	}

}
