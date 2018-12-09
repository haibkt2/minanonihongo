package minanonihongo.service;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import minanonihongo.model.Course;
import minanonihongo.model.CourseIlm;
import minanonihongo.model.Exam;
import minanonihongo.model.ExamAnswer;
import minanonihongo.model.ExamQuestion;
import minanonihongo.model.User;
import minanonihongo.model.VocaCourseIlm;
import minanonihongo.repository.CourseIlmRepository;
import minanonihongo.repository.CourseRepository;
import minanonihongo.repository.ExamAnswerRepository;
import minanonihongo.repository.ExamQuestionRepository;
import minanonihongo.repository.ExamRepository;
import minanonihongo.repository.VocaCourseIlmRepository;
import net.sf.json.JSONArray;
import net.sf.json.JSONException;
import net.sf.json.JSONObject;
import net.sf.json.JSONSerializer;

@Service
public class ExamCourseIlmService {

	@Autowired
	ExamQuestionRepository examQuestionRepository;

	@Autowired
	ExamRepository examRepository;

	@Autowired
	ExamAnswerRepository examAnswerRepository;

	@Autowired
	CourseRepository courseRepository;
	@Autowired
	HttpSession session;
	@Value("${string.reponsitory.local}")
	private String localFile;

	public boolean setExamCourseIlm(String examJson, String del, CourseIlm courseIlm) throws Exception {
		try {
			JSONArray dl = (JSONArray) JSONSerializer.toJSON(del);
			for (Object js : dl) {
				JSONObject json = (JSONObject) js;
				String id = json.getString("id");
				ExamQuestion examQuestion = examQuestionRepository.findByExamQuestionId(id);
				if(examQuestion != null) {
					if(examQuestion.getExamAnswer()!=null) {
						for(ExamAnswer examAnswer : examQuestion.getExamAnswer()) {
							examAnswerRepository.delete(examAnswer);
						}
					}
					examQuestionRepository.delete(examQuestion);
				}
			}
			JSONArray lx = (JSONArray) JSONSerializer.toJSON(examJson);
			Exam exam = new Exam();
			exam.setCourseIlm(courseIlm);
			exam.setExamName("Bài Tập");
			exam.setUser((User) session.getAttribute("user"));
			if (courseIlm.getExams() == null || courseIlm.getExams().size() == 0) {
				exam.setExamId(setExamId());
			} else
				exam.setExamId(courseIlm.getExams().get(0).getExamId());
			examRepository.save(exam);
			for (Object js : lx) {
				JSONObject json = (JSONObject) js;
				String change = json.getString("c");
				if ("c".equals(change)) {
					List<ExamAnswer> answers = new ArrayList<>();
					ExamQuestion examQuestion = new ExamQuestion();
					String iq = json.getString("iq");
					String qt = json.getString("qt");
					String ex = json.getString("ex");
					if (examQuestionRepository.findByExamQuestionId(iq) == null) {
						examQuestion.setExamQuestionId(setExamQtId());
					} else {
						examQuestion.setExamQuestionId(iq);
					}
					examQuestion.setEx(ex);
					examQuestion.setQuestion(qt);
					examQuestion.setExam(exam);
					examQuestion.setExamAnswer(answers);
					examQuestionRepository.save(examQuestion);
					JSONArray la = (JSONArray) JSONSerializer.toJSON(json.getString("ans"));
					for (Object jsa : la) {
						JSONObject jsona = (JSONObject) jsa;
						ExamAnswer examAnswer = new ExamAnswer();
						String ia = jsona.getString("ia");
						if (examAnswerRepository.findByExamAnswerId(ia) == null) {
							examAnswer.setExamAnswerId(setExamAnId());
						} else {
							examAnswer.setExamAnswerId(ia);
						}
						String g = jsona.getString("g");
						String a = jsona.getString("a");
						examAnswer.setAnswer(a);
						examAnswer.setAnswerRghtWrng(g);
						examAnswer.setExamQuestion(examQuestion);
						examAnswerRepository.save(examAnswer);
						answers.add(examAnswer);
					}
				}
			}
			return true;
		} catch (JSONException e) {
			return false;
		}

	}

	public String setExamQtId() {
		List<ExamQuestion> exams = (List<ExamQuestion>) examQuestionRepository.findAll();
		String examQtId = "EXQN00000";
		if (exams.size() > 0) {
			int id = Integer.parseInt(exams.get(exams.size() - 1).getExamQuestionId().substring(4, 9)) + 1;
			String countExId = "" + id;
			if (countExId.trim().length() != 5) {
				int count = 5 - countExId.trim().length();
				for (int i = 0; i < count; i++) {
					countExId = "0" + countExId;
				}
			}
			examQtId = "EXQN".concat("" + countExId);
		}
		return examQtId;
	}

	public String setExamAnId() {
		List<ExamAnswer> exams = (List<ExamAnswer>) examAnswerRepository.findAll();
		String examAnsId = "EXASN000001";
		if (exams.size() > 0) {
			int id = Integer.parseInt(exams.get(exams.size() - 1).getExamAnswerId().substring(5, 11)) + 1;
			String countExId = "" + id;
			if (countExId.trim().length() != 6) {
				int count = 6 - countExId.trim().length();
				for (int i = 0; i < count; i++) {
					countExId = "0" + countExId;
				}
			}
			examAnsId = "EXASN".concat("" + countExId);
		}
		return examAnsId;
	}

	public String setExamId() {
		List<Exam> exams = (List<Exam>) examRepository.findAll();
		String examAnsId = "EXAMEC0000001";
		if (exams.size() > 0) {
			int id = Integer.parseInt(exams.get(exams.size() - 1).getExamId().substring(5, 12)) + 1;
			String countExId = "" + id;
			if (countExId.trim().length() != 7) {
				int count = 7 - countExId.trim().length();
				for (int i = 0; i < count; i++) {
					countExId = "0" + countExId;
				}
			}
			examAnsId = "EXAMEC".concat("" + countExId);
		}
		return examAnsId;
	}
}