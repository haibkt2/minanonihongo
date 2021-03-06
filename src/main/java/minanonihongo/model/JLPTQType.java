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
    private String jlptQTypeId;

    @Column(name="JLPT_Q_TYPE_NAME")
    private String jlptQTypeName;

    @OneToMany(mappedBy="jlptQType")
    private List<JLPTQuestion> jlptQuestions;

	public String getJlptQTypeId() {
		return jlptQTypeId;
	}

	public void setJlptTypeId(String jlptQTypeId) {
		this.jlptQTypeId = jlptQTypeId;
	}

	public String getJlptQTypeName() {
		return jlptQTypeName;
	}

	public void setJlptQTypeName(String jlptQTypeName) {
		this.jlptQTypeName = jlptQTypeName;
	}

	public List<JLPTQuestion> getJlptQuestions() {
		return jlptQuestions;
	}

	public void setJlptQuestions(List<JLPTQuestion> jlptQuestions) {
		this.jlptQuestions = jlptQuestions;
	}

}
