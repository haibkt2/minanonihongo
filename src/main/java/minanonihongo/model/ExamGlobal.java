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
@Table(name = "exam_global")
@NamedQuery(name="ExamGlobal.findAll", query="SELECT eg FROM ExamGlobal eg")
public class ExamGlobal implements Serializable {
    private static final long serialVersionUID = 1L;

    @Id
    @Column(name="EXAM_GB_ID")
    private String userId;

    private int totalNumberTest;

    @Temporal(TemporalType.DATE)
    @Column(name="CREATE_DATE")
    private Date createDate;
    
	@Temporal(TemporalType.DATE)
    @Column(name="UPDATE_DATE")
    private Date updateDate;

	@OneToOne
    @JoinColumn(name = "COURSE_ILM_ID")
    private CourseIlm courseIlm;

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public int getTotalNumberTest() {
		return totalNumberTest;
	}

	public void setTotalNumberTest(int totalNumberTest) {
		this.totalNumberTest = totalNumberTest;
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
