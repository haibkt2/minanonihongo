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
@NamedQuery(name = "Comment.findAll", query = "SELECT c FROM Comment c")
public class Comment implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "COMMENT_ID")
	private String commentId;

	@ManyToOne
	@JoinColumn(name = "USER_ID")
	private User user;

	private String content;

	@ManyToOne
	@JoinColumn(name = "COURSE_ILM_ID")
	private CourseIlm courseIlm;

	private String commentFlg;

	@Temporal(TemporalType.DATE)
	@Column(name = "CREATE_DATE")
	private Date createDate;

	public CourseIlm getCourseIlm() {
		if (courseIlm == null)
			return new CourseIlm();
		else
			return courseIlm;
	}

	public void setCourseIlm(CourseIlm courseIlm) {
		this.courseIlm = courseIlm;
	}

	public String getCommentId() {
		if (commentId == null)
			return "";
		else
			return commentId;
	}

	public void setCommentId(String commentId) {
		this.commentId = commentId;
	}

	public User getUser() {
		if (user == null)
			return new User();
		else
			return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getContent() {
		if (content == null)
			return "";
		else
			return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public CourseIlm getCourseIlmId() {
		if (courseIlm == null)
			return new CourseIlm();
		else
			return courseIlm;
	}

	public void setCourseIlmId(CourseIlm courseIlm) {
		this.courseIlm = courseIlm;
	}

	public String getCommentFlg() {
		if (commentFlg == null)
			return "1";
		else
			return commentFlg;
	}

	public void setCommentFlg(String commentFlg) {
		this.commentFlg = commentFlg;
	}

	public Date getCreateDate() {
		if (createDate == null)
			return createDate;
		else
			return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

}
