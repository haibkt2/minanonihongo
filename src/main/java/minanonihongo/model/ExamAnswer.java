package minanonihongo.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

@Entity
@Table(name = "exam_answer")
@NamedQuery(name="ExamAnswer.findAll", query="SELECT ea FROM ExamAnswer ea")
public class ExamAnswer implements Serializable {
    private static final long serialVersionUID = 1L;

    @Id
    @Column(name="EXAM_ANSWER_ID")
    private String examAnswerId;

    @ManyToOne
    @JoinColumn(name="EXAM_ID")
    private Exam exam;
    
    private String answer;
    
    private String explain;
    
    private String answerRghtWrng;
    
	public String getExamAnswerId() {
		return examAnswerId;
	}

	public void setExamAnswerId(String examId) {
		this.examAnswerId = examId;
	}

	public Exam getExam() {
		return exam;
	}

	public void setExam(Exam exam) {
		this.exam = exam;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	public String getExplain() {
		return explain;
	}

	public void setExplain(String explain) {
		this.explain = explain;
	}

	public String getAnswerRghtWrng() {
		return answerRghtWrng;
	}

	public void setAnswerRghtWrng(String answerRghtWrng) {
		this.answerRghtWrng = answerRghtWrng;
	}

}
