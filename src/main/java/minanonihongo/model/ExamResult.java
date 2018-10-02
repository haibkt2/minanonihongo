package minanonihongo.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQuery;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "exam_result")
@NamedQuery(name="ExamResult.findAll", query="SELECT er FROM ExamResult er")
public class ExamResult implements Serializable {
    private static final long serialVersionUID = 1L;
    
    @Id
    @Column(name="EXAM_RSL_ID")
    private String examRstId;
    
    @ManyToOne
    @JoinColumn(name="USER_ID")
    private User user;
    
    @OneToOne
    @JoinColumn(name = "COURSE_ILM_ID")
    private CourseIlm courseIlm;
    
    private Date timeStartExam;
    
    private Date timeFinishExam;
    
    private String scores;

	public String getExamRstId() {
		return examRstId;
	}

	public void setExamRstId(String examRstId) {
		this.examRstId = examRstId;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public CourseIlm getCourseIlm() {
		return courseIlm;
	}

	public void setCourseIlm(CourseIlm courseIlm) {
		this.courseIlm = courseIlm;
	}

	public Date getTimeStartExam() {
		return timeStartExam;
	}

	public void setTimeStartExam(Date timeStartExam) {
		this.timeStartExam = timeStartExam;
	}

	public Date getTimeFinishExam() {
		return timeFinishExam;
	}

	public void setTimeFinishExam(Date timeFinishExam) {
		this.timeFinishExam = timeFinishExam;
	}

	public String getScores() {
		return scores;
	}

	public void setScores(String scores) {
		this.scores = scores;
	}
    
}
