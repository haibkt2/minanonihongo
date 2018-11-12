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
@Table(name = "jlpt_type")
@NamedQuery(name="JLPTType.findAll", query="SELECT jt FROM JLPTType jt")
public class JLPTType implements Serializable {
    private static final long serialVersionUID = 1L;

    @Id
    @Column(name="JLPT_TYPE_ID")
    private String jlptTypeId;

    @Column(name="JLPT_TYPE_NAME")
    private String jlptTypeName;

    @OneToMany(mappedBy="jlptType")
    private List<JLPT> jlpt;

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

	public List<JLPT> getJlpt() {
		return jlpt;
	}

	public void setJlpt(List<JLPT> jlpt) {
		this.jlpt = jlpt;
	}


}
