package minanonihongo.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQuery;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@NamedQuery(name = "Document.findAll", query = "SELECT d FROM Document d")
public class Document implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "DOC_ID")
	private String docId;

	@ManyToOne
	@JoinColumn(name = "USER_ID")
	private User user;

	@ManyToOne
	@JoinColumn(name = "COURSE_ID")
	private Course course;

	@Temporal(TemporalType.DATE)
	@Column(name = "CREATE_DATE")
	private Date createDate;

	@Temporal(TemporalType.DATE)
	@Column(name = "UPDATE_DATE")
	private Date updateDate;

	private String locaFileDoc;

	private String docFlg;
	
	private int totalDownload;

	public Document() {
	}

	public Document(String locaFileDoc) {
		this.locaFileDoc = locaFileDoc;
	}

	public String getDocId() {
		return docId;
	}

	public void setDocId(String docId) {
		this.docId = docId;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Course getCourse() {
		return course;
	}

	public void setCourse(Course course) {
		this.course = course;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public Date getUpdateDate() {
		return updateDate;
	}

	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}

	public String getLocaFileDoc() {
		return locaFileDoc;
	}

	public void setLocaFileDoc(String locaFileDoc) {
		this.locaFileDoc = locaFileDoc;
	}

	public String getDocFlg() {
		return docFlg;
	}

	public void setDocFlg(String docFlg) {
		this.docFlg = docFlg;
	}

	public int getTotalDownload() {
		return totalDownload;
	}

	public void setTotalDownload(int totalDownload) {
		this.totalDownload = totalDownload;
	}

}
