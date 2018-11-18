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
@Table(name = "jlpt_menu")
@NamedQuery(name="JLPTMenu.findAll", query="SELECT jmn FROM JLPTMenu jmn")
public class JLPTMenu implements Serializable {
    private static final long serialVersionUID = 1L;

    @Id
    @Column(name="JLPT_MENU_ID")
    private String jlptMenuId;

    @Column(name="JLPT_MENU_NAME")
    private String jlptMenuName;

    @OneToMany(mappedBy="jlptMn")
    private List<JLPT> jlpts;

	public List<JLPT> getJlpts() {
		return jlpts;
	}

	public void setJlpt(List<JLPT> jlpts) {
		this.jlpts = jlpts;
	}

	public String getJlptMenuId() {
		return jlptMenuId;
	}

	public void setJlptMenuId(String jlptMenuId) {
		this.jlptMenuId = jlptMenuId;
	}

	public String getJlptMenuName() {
		return jlptMenuName;
	}

	public void setJlptMenuName(String jlptMenuName) {
		this.jlptMenuName = jlptMenuName;
	}

	public void setJlpts(List<JLPT> jlpts) {
		this.jlpts = jlpts;
	}


}
