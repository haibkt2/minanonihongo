package minanonihongo.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

@Entity
@Table(name = "voca_course_ilm")
@NamedQuery(name = "VocaCourseIlm.findAll", query = "SELECT vc FROM VocaCourseIlm vc")
public class VocaCourseIlm implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "VACA_COURSE_ILM_ID")
	private String vocaCourseIlmId;

	@ManyToOne
	@JoinColumn(name = "COURSE_ILM_ID")
	private CourseIlm courseIlm;

	private String hirakana;

	private String kanji;
	
	private String explain;

	public String getVocaCourseIlmId() {
		return vocaCourseIlmId;
	}

	public void setVocaCourseIlmId(String vocaCourseIlmId) {
		this.vocaCourseIlmId = vocaCourseIlmId;
	}

	public CourseIlm getCourseIlms() {
		return courseIlm;
	}

	public void setCourseIlms(CourseIlm courseIlm) {
		this.courseIlm = courseIlm;
	}

	public String getHirakana() {
		return hirakana;
	}

	public void setHirakana(String hirakana) {
		this.hirakana = hirakana;
	}

	public String getKanji() {
		return kanji;
	}

	public void setKanji(String kanji) {
		this.kanji = kanji;
	}

	public String getExplain() {
		return explain;
	}

	public void setExplain(String explain) {
		this.explain = explain;
	}


}
