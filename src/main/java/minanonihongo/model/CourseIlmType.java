package minanonihongo.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "course_ilm_type")
@NamedQuery(name = "CourseIlmType.findAll", query = "SELECT r FROM CourseIlmType r")
public class CourseIlmType implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "COURSE_ILM_TYPE_ID", insertable = true, updatable = true)
	private int courseIlmTypeId;

	@OneToMany(mappedBy = "courseIlmType")
	private List<CourseIlm> courseIlms;

	private String courseIlmTypeName;

	public CourseIlmType() {

	}

	public CourseIlmType(int courseIlmTypeId, String courseIlmTypeName) {
		this.courseIlmTypeId = courseIlmTypeId;
		this.courseIlmTypeName = courseIlmTypeName;
	}

	public CourseIlmType(String courseIlmTypeName) {
		this.courseIlmTypeName = courseIlmTypeName;
	}

	public int getCourseIlmTypeId() {
		return courseIlmTypeId;
	}

	public void setCourseIlmTypeId(int courseIlmTypeId) {
		this.courseIlmTypeId = courseIlmTypeId;
	}

	public List<CourseIlm> getCourseIlms() {
		return courseIlms;
	}

	public void setCourseIlms(List<CourseIlm> courseIlms) {
		this.courseIlms = courseIlms;
	}

	public String getCourseIlmTypeName() {
		return courseIlmTypeName;
	}

	public void setCourseIlmTypeName(String courseIlmTypeName) {
		this.courseIlmTypeName = courseIlmTypeName;
	}

}
