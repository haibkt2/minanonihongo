package minanonihongo.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQuery;
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
	
	private String courseFunTitle;
	
	private String courseFunContent;
	
	private int viewCourseFun;

	@Temporal(TemporalType.DATE)
	@Column(name = "UPDATE_DATE")
	private Date updateDate;
	
	private String courseFunImg;

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
	public String getCourseFunImg() {
		return courseFunImg;
	}
	public void setCourseFunImg(String courseFunImg) {
		this.courseFunImg = courseFunImg;
	}
	public CourseFunType getCourseFunType() {
		return courseFunType;
	}
	public void setCourseFunType(CourseFunType courseFunType) {
		this.courseFunType = courseFunType;
	}
	public String getCourseFunTitle() {
		return courseFunTitle;
	}
	public void setCourseFunTitle(String courseFunTitle) {
		this.courseFunTitle = courseFunTitle;
	}
	public String getCourseFunContent() {
		return courseFunContent;
	}
	public void setCourseFunContent(String courseFunContent) {
		this.courseFunContent = courseFunContent;
	}
	public int getViewCourseFun() {
		return viewCourseFun;
	}
	public void setViewCourseFun(int viewCourseFun) {
		this.viewCourseFun = viewCourseFun;
	}

}
