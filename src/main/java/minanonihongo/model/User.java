package minanonihongo.model;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;

@Entity
@NamedQuery(name="User.findAll", query="SELECT u FROM User u")
public class User implements Serializable {
    private static final long serialVersionUID = 1L;

    @Id
    @Column(name="USER_ID")
    private String userId;

    private String email;

    private String name;

    private String password;

    private String phone;
    
    private Date birthday;
    
    private String avatar;

    @Column(name="USER_NAME")
    private String userName;

    @ManyToOne
    @JoinColumn(name="ROLE_ID")
    private Role role;
    
    @OneToMany(mappedBy="user")
    private List<Post> posts;
    
    @OneToMany(mappedBy="user")
    private List<Document> documents;
    
    @OneToMany(mappedBy="user")
    private List<CourseIlm> couseIlms;
    
    @OneToMany(mappedBy="user")
    private List<Exam> Exams;

	@OneToMany(mappedBy="user")
    private List<Comment> comments;
	
	@OneToMany(mappedBy="user")
    private List<ExamResult> examResults;


    public User() {
    }

    public String getUserId() {
        return this.userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public List<Document> getDocuments() {
		return documents;
	}

	public void setDocuments(List<Document> documents) {
		this.documents = documents;
	}

	public List<Exam> getExams() {
		return Exams;
	}

	public void setExams(List<Exam> exams) {
		Exams = exams;
	}

	public List<ExamResult> getExamResults() {
		return examResults;
	}

	public void setExamResults(List<ExamResult> examResults) {
		this.examResults = examResults;
	}

	public List<Post> getPosts() {
		return posts;
	}

	public void setPosts(List<Post> posts) {
		this.posts = posts;
	}

	public String getEmail() {
        return this.email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return this.password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPhone() {
        return this.phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getUserName() {
        return this.userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }
    

    public Date getBrithday() {
		return birthday;
	}

	public void setBrithday(Date brithday) {
		this.birthday = brithday;
	}

	public List<CourseIlm> getCouseIlms() {
		return couseIlms;
	}

	public void setCouseIlms(List<CourseIlm> couseIlms) {
		this.couseIlms = couseIlms;
	}

	public Role getRole() {
        return this.role;
    }

    public void setRole(Role role) {
        this.role = role;
    }

	public String getAvatar() {
		return avatar;
	}

	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}
	
	public List<Comment> getComments() {
		return comments;
	}

	public void setComments(List<Comment> comments) {
		this.comments = comments;
	}

}