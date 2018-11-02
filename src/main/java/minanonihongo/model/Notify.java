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
@NamedQuery(name="Notify.findAll", query="SELECT p FROM Notify p")
public class Notify implements Serializable {
    private static final long serialVersionUID = 1L;
    
    @Id
    @Column(name="NOTIFY_ID")
    private String notifyId;
    
    @ManyToOne
    @JoinColumn(name="USER_ID")
    private User user;
    
    private String notifyTitle;
    
    private String notifyContent;

    private String notifyFlg;
    
    @Temporal(TemporalType.DATE)
    @Column(name="CREATE_DATE")
    private Date createDate;
    
	@Temporal(TemporalType.DATE)
    @Column(name="UPDATE_DATE")
    private Date updateDate;

	public String getNotifyId() {
		return notifyId;
	}

	public void setNotifyId(String notifyId) {
		this.notifyId = notifyId;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getNotifyTitle() {
		return notifyTitle;
	}

	public void setNotifyTitle(String notifyTitle) {
		this.notifyTitle = notifyTitle;
	}

	public String getNotifyContent() {
		return notifyContent;
	}

	public void setNotifyContent(String notifyContent) {
		this.notifyContent = notifyContent;
	}

	public String getNotifyFlg() {
		return notifyFlg;
	}

	public void setNotifyFlg(String notifyFlg) {
		this.notifyFlg = notifyFlg;
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
