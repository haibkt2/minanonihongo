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
@NamedQuery(name="Post.findAll", query="SELECT p FROM Post p")
public class Post implements Serializable {
    private static final long serialVersionUID = 1L;
    
    @Id
    @Column(name="POST_ID")
    private String postId;
    
    @ManyToOne
    @JoinColumn(name="USER_ID")
    private User user;
    
    private String postTitle;

    private String postContent;

    @ManyToOne
    @JoinColumn(name="POST_TYPE_ID")
    private PostType postType;

    private String postFlg;
    
    @Temporal(TemporalType.DATE)
    @Column(name="CREATE_DATE")
    private Date createDate;
    
	@Temporal(TemporalType.DATE)
    @Column(name="UPDATE_DATE")
    private Date updateDate;
    
    public String getPostId() {
		return postId;
	}

	public void setPostId(String postId) {
		this.postId = postId;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getPostTitle() {
		return postTitle;
	}

	public void setPostTitle(String postTitle) {
		this.postTitle = postTitle;
	}

	public String getPostContent() {
		return postContent;
	}

	public void setPostContent(String postContent) {
		this.postContent = postContent;
	}

	public PostType getPostType() {
		return postType;
	}

	public void setPostType(PostType postType) {
		this.postType = postType;
	}

	public String getPostFlg() {
		return postFlg;
	}

	public void setPostFlg(String postFlg) {
		this.postFlg = postFlg;
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

}
