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
@Table(name = "post_type")
@NamedQuery(name="PostType.findAll", query="SELECT pt FROM PostType pt")
public class PostType implements Serializable {
    private static final long serialVersionUID = 1L;

    @Id
    @Column(name="POST_TYPE_ID", insertable=false, updatable=false)
    private String postTypeId;

    @Column(name="POST_TYPE_NAME")
    private String postTypeName;

    @OneToMany(mappedBy="postType")
    private List<Post> posts;

	public String getPostTypeId() {
		return postTypeId;
	}

	public void setPostTypeId(String postTypeId) {
		this.postTypeId = postTypeId;
	}

	public String getPostTypeName() {
		return postTypeName;
	}

	public void setPostTypeName(String postTypeName) {
		this.postTypeName = postTypeName;
	}

	public List<Post> getPosts() {
		return posts;
	}

	public void setPosts(List<Post> posts) {
		this.posts = posts;
	}

}
