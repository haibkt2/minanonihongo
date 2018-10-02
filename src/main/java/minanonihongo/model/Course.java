package minanonihongo.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;

@Entity
@NamedQuery(name="Course.findAll", query="SELECT cr FROM Course cr")
public class Course implements Serializable {
    private static final long serialVersionUID = 1L;

    @Id
    @Column(name="COURSE_ID", insertable=false, updatable=false)
    private String courseId;

    @Column(name="COURSE_NAME")
    private String courseName;

    @OneToMany(mappedBy="course")
    private List<CourseIlm> courseIlms;

	public String getCourseId() {
		return courseId;
	}

	public void setCourseId(String courseId) {
		this.courseId = courseId;
	}

	public String getCourseName() {
		return courseName;
	}

	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}

	public List<CourseIlm> getCourseIlms() {
		return courseIlms;
	}

	public void setCourseIlms(List<CourseIlm> courseIlms) {
		this.courseIlms = courseIlms;
	}
    
}
