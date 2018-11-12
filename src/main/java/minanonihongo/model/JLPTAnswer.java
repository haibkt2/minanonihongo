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
@Table(name = "jlpt_answer")
@NamedQuery(name = "JLPTAnswer.findAll", query = "SELECT ja FROM JLPTAnswer ja")
public class JLPTAnswer implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "JLPT_ANSWER_ID")
	private String jlptAnswerId;

	@ManyToOne
	@JoinColumn(name = "JLPT_QUESTION_ID")
	private JLPTQuestion jlptQuestion;

	private String answer;

	private String answerRghtWrng;

	public String getJlptAnswerId() {
		return jlptAnswerId;
	}

	public void setJlptAnswerId(String jlptAnswerId) {
		this.jlptAnswerId = jlptAnswerId;
	}

	public JLPTQuestion getJlptQuestion() {
		return jlptQuestion;
	}

	public void setJlptQuestion(JLPTQuestion jlptQuestion) {
		this.jlptQuestion = jlptQuestion;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	public String getAnswerRghtWrng() {
		return answerRghtWrng;
	}

	public void setAnswerRghtWrng(String answerRghtWrng) {
		this.answerRghtWrng = answerRghtWrng;
	}

}
