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
import javax.persistence.Table;

@Entity
@Table(name = "exam_question")
@NamedQuery(name = "ExamQuestion.findAll", query = "SELECT eq FROM ExamQuestion eq")
public class ExamQuestion implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "EXAM_QUESTION_ID")
	private String examQuestionId;

	@ManyToOne
	@JoinColumn(name = "EXAM_ID")
	private Exam exam;

	private String ex;

	private String question;
	
	@OneToMany(mappedBy="examQuestion")
    private List<ExamAnswer> examAnswer;

	public List<ExamAnswer> getExamAnswer() {
		return examAnswer;
	}

	public void setExamAnswer(List<ExamAnswer> examAnswer) {
		this.examAnswer = examAnswer;
	}

	public String getExamQuestionId() {
		return examQuestionId;
	}

	public void setExamQuestionId(String examQuestionId) {
		this.examQuestionId = examQuestionId;
	}

	public String getQuestion() {
		return question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	public Exam getExam() {
		return exam;
	}

	public void setExam(Exam exam) {
		this.exam = exam;
	}

	public String getEx() {
		return ex;
	}

	public void setEx(String ex) {
		this.ex = ex;
	}

}
