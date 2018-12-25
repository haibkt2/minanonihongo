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
@Table(name = "jlpt_question")
@NamedQuery(name = "JLPTQuestion.findAll", query = "SELECT jq FROM JLPTQuestion jq")
public class JLPTQuestion implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "JLPT_QUESTION_ID")
	private String jlptQuestionId;

	@ManyToOne
	@JoinColumn(name = "JLPT_ID")
	private JLPT jlpt;

	private String ex;

	private String question;

	@OneToMany(mappedBy = "jlptQuestion")
	private List<JLPTAnswer> jlptAnswer;
	
	@ManyToOne
	@JoinColumn(name = "JLPT_Q_TYPE_ID")
	private JLPTQType jlptQType;

	public String getJlptQuestionId() {
		return jlptQuestionId;
	}

	public void setJlptQuestionId(String jlptQuestionId) {
		this.jlptQuestionId = jlptQuestionId;
	}

	public JLPT getJlpt() {
		return jlpt;
	}

	public void setJlpt(JLPT jlpt) {
		this.jlpt = jlpt;
	}

	public String getEx() {
		return ex;
	}

	public void setEx(String ex) {
		this.ex = ex;
	}

	public String getQuestion() {
		return question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	public List<JLPTAnswer> getJlptAnswer() {
		return jlptAnswer;
	}

	public void setJlptAnswer(List<JLPTAnswer> jlptAnswer) {
		this.jlptAnswer = jlptAnswer;
	}

	public JLPTQType getJlptQType() {
		return jlptQType;
	}

	public void setJlptQType(JLPTQType jlptQType) {
		this.jlptQType = jlptQType;
	}

}
