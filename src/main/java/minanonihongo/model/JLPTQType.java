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
@Table(name = "jlpt_q_type")
@NamedQuery(name="JLPTQType.findAll", query="SELECT jqt FROM JLPTQType jqt")
public class JLPTQType implements Serializable {
    private static final long serialVersionUID = 1L;

    @Id
    @Column(name="JLPT_Q_TYPE_ID")
    private String jlptTypeId;

    @Column(name="JLPT_Q_TYPE_NAME")
    private String jlptTypeName;

    @OneToMany(mappedBy="jlptQType")
    private List<JLPTQuestion> jlptQuestions;

	public String getJlptTypeId() {
		return jlptTypeId;
	}

	public void setJlptTypeId(String jlptTypeId) {
		this.jlptTypeId = jlptTypeId;
	}

	public String getJlptTypeName() {
		return jlptTypeName;
	}

	public void setJlptTypeName(String jlptTypeName) {
		this.jlptTypeName = jlptTypeName;
	}

	public List<JLPTQuestion> getJlptQuestions() {
		return jlptQuestions;
	}

	public void setJlptQuestions(List<JLPTQuestion> jlptQuestions) {
		this.jlptQuestions = jlptQuestions;
	}

}
