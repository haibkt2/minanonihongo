package minanonihongo.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

@Entity
@Table(name = "jlpt_result")
@NamedQuery(name="JLPTResult.findAll", query="SELECT js FROM JLPT js")
public class JLPTResult implements Serializable {
	private static final long serialVersionUID = 1L;

    @Id
    @Column(name="JLPT_RS_ID")
    private String jlptRsId;

	private String grade;
	private String data;
	private boolean passed;
	private Date created;
	
    @ManyToOne
    @JoinColumn(name="USER_ID")
    private User user;
    
    @ManyToOne
    @JoinColumn(name="JLPT_ID")
    private JLPT jlpt;

	public String getJlptRsId() {
		return jlptRsId;
	}

	public void setJlptRsId(String jlptRsId) {
		this.jlptRsId = jlptRsId;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	public String getData() {
		return data;
	}

	public void setData(String data) {
		this.data = data;
	}

	public boolean isPassed() {
		return passed;
	}

	public void setPassed(boolean passed) {
		this.passed = passed;
	}

	public Date getCreated() {
		return created;
	}

	public void setCreated(Date created) {
		this.created = created;
	}

	public JLPT getJlpt() {
		return jlpt;
	}

	public void setJlpt(JLPT jlpt) {
		this.jlpt = jlpt;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
    
}
