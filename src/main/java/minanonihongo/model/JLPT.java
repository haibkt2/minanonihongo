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
@NamedQuery(name="JLPT.findAll", query="SELECT j FROM JLPT j")
public class JLPT implements Serializable {
    private static final long serialVersionUID = 1L;

    @Id
    @Column(name="JLPT_ID")
    private String jlptId;

    private String jlptName;
    
    private String timeout;
    
    @OneToMany(mappedBy="jlpt")
    private List<JLPTQuestion> jlptQuestion;
    
    @ManyToOne
    @JoinColumn(name="USER_ID")
    private User user;
    
    @ManyToOne
    @JoinColumn(name="JLPT_MENU_ID")
    private JLPTMenu jlptMn;
    
    @ManyToOne
    @JoinColumn(name="JLPT_TYPE_ID")
    private JLPTType jlptType;
    
    @ManyToOne
	@JoinColumn(name = "COURSE_ID")
	private Course course;
    
	public String getJlptId() {
		return jlptId;
	}

	public void setJlptId(String jlptId) {
		this.jlptId = jlptId;
	}

	public String getJlptName() {
		return jlptName;
	}

	public void setJlptName(String jlptName) {
		this.jlptName = jlptName;
	}

	public List<JLPTQuestion> getJlptQuestion() {
		return jlptQuestion;
	}

	public void setJlptQuestion(List<JLPTQuestion> jlptQuestion) {
		this.jlptQuestion = jlptQuestion;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public JLPTType getJlptType() {
		return jlptType;
	}

	public void setJlptType(JLPTType jlptType) {
		this.jlptType = jlptType;
	}

	public Course getCourse() {
		return course;
	}

	public void setCourse(Course course) {
		this.course = course;
	}

	public String getTimeout() {
		return timeout;
	}

	public void setTimeout(String timeout) {
		this.timeout = timeout;
	}

	public JLPTMenu getJlptMn() {
		return jlptMn;
	}

	public void setJlptMn(JLPTMenu jlptMn) {
		this.jlptMn = jlptMn;
	}
    
}
