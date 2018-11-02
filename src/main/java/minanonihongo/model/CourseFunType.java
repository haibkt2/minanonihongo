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
@Table(name = "course_fun_type")
@NamedQuery(name = "CourseFunType.findAll", query = "SELECT cft FROM CourseFunType cft")
public class CourseFunType implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "COURSE_FUN_TYPE_ID")
	private String courseFunTypeId;

	@OneToMany(mappedBy = "courseFunType")
	private List<CourseFun> courseFuns;

	private String courseFunTypeName;

	public CourseFunType() {

	}

	public String getCourseFunTypeId() {
		return courseFunTypeId;
	}

	public void setCourseFunTypeId(String courseFunTypeId) {
		this.courseFunTypeId = courseFunTypeId;
	}

	public List<CourseFun> getCourseFuns() {
		return courseFuns;
	}

	public void setCourseFuns(List<CourseFun> courseFuns) {
		this.courseFuns = courseFuns;
	}

	public String getCourseFunTypeName() {
		return courseFunTypeName;
	}

	public void setCourseFunTypeName(String courseFunTypeName) {
		this.courseFunTypeName = courseFunTypeName;
	}


}
