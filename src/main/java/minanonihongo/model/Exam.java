package minanonihongo.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;

@Entity
@NamedQuery(name="Exam.findAll", query="SELECT e FROM Exam e")
public class Exam implements Serializable {
    private static final long serialVersionUID = 1L;

    @Id
    @Column(name="EXAM_ID")
    private String examId;

    private String examName;
    
    @OneToMany(mappedBy="exam")
    private List<ExamQA> examAnswer;

    @ManyToOne
    @JoinColumn(name="COURSE_ILM_ID")
    private CourseIlm courseIlm;
    
    @ManyToOne
    @JoinColumn(name="USER_ID")
    private User user;
    
    
	public String getExamId() {
		return examId;
	}

	public void setExamId(String examId) {
		this.examId = examId;
	}

	public String getExamName() {
		return examName;
	}

	public List<ExamQA> getExamAnswer() {
		return examAnswer;
	}

	public void setExamAnswer(List<ExamQA> examAnswer) {
		this.examAnswer = examAnswer;
	}

	public CourseIlm getCourseIlm() {
		return courseIlm;
	}

	public void setCourseIlm(CourseIlm courseIlm) {
		this.courseIlm = courseIlm;
	}

	public void setExamName(String examName) {
		this.examName = examName;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

}
