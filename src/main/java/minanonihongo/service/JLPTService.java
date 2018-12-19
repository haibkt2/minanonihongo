package minanonihongo.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import minanonihongo.model.CourseIlm;
import minanonihongo.model.Exam;
import minanonihongo.model.ExamAnswer;
import minanonihongo.model.ExamQuestion;
import minanonihongo.model.JLPT;
import minanonihongo.model.JLPTAnswer;
import minanonihongo.model.JLPTQType;
import minanonihongo.model.JLPTQuestion;
import minanonihongo.model.JLPTType;
import minanonihongo.model.User;
import minanonihongo.model.VocaCourseIlm;
import minanonihongo.repository.CourseGlobalRepository;
import minanonihongo.repository.CourseIlmRepository;
import minanonihongo.repository.ExamAnswerRepository;
import minanonihongo.repository.ExamQuestionRepository;
import minanonihongo.repository.ExamRepository;
import minanonihongo.repository.JLPTRepository;
import minanonihongo.repository.JLPTTypeRepository;
import minanonihongo.repository.VocaCourseIlmRepository;
import net.sf.json.JSONArray;
import net.sf.json.JSONException;
import net.sf.json.JSONObject;
import net.sf.json.JSONSerializer;

@Service
public class JLPTService {

	@Autowired
	ExamRepository examRepository;

	@Autowired
	ExamQuestionRepository examQuestionRepository;

	@Autowired
	JLPTTypeRepository jlptTypeRepository;

	@Autowired
	ExamAnswerRepository examAnswerRepository;

	@Autowired
	JLPTRepository jlptRepository;

	@Autowired
	VocaCourseIlmRepository vocaCourseIlmRepository;

	@Autowired
	CourseGlobalRepository courseGlobalRepository;

	@Autowired
	private Common common;

	@Autowired
	HttpSession session;

	public String setNumJLPTId(String id) {
		if (id.trim().length() < 8) { // 00000000
			int count = 8 - id.trim().length();
			for (int i = 0; i < count; i++) {
				id = "0" + id;
			}
		}
		return id;
	}

	public List<Map<String, String>> mapJsonJlpt(List<JLPTQType> jlptQT, String jlptId) throws Exception {
		List<Map<String, String>> jsons = new ArrayList<>();
		String lsId = jlptId.substring(5, 13);
		JSONArray lesson_tasks = new JSONArray();
		JSONObject lesson_answers = new JSONObject();
		JSONObject lesson_lesson = new JSONObject();
		lesson_lesson.put("id", lsId);
		lesson_lesson.put("course_id",
				jlptQT.get(0).getJlptQuestions().get(0).getJlpt().getJlptType().getJlptTypeId().substring(
						jlptQT.get(0).getJlptQuestions().get(0).getJlpt().getJlptType().getJlptTypeId().length() - 2,
						jlptQT.get(0).getJlptQuestions().get(0).getJlpt().getJlptType().getJlptTypeId().length()));
		int total_marks = 0;
		for (JLPTQType jt : jlptQT) {
			if (jt.getJlptQuestions() != null) {
				total_marks += jt.getJlptQuestions().size();
				int index = 0;
				for (JLPTQuestion jlptQuestion : jt.getJlptQuestions()) {
					if (jlptId.equals(jlptQuestion.getJlpt().getJlptId())) {
						index++;
						lesson_tasks.add(common.getQuestion(index, lsId,
								jlptQuestion.getJlptQuestionId().substring(
										jlptQuestion.getJlptQuestionId().length() - 2,
										jlptQuestion.getJlptQuestionId().length()),
								"3", jlptQuestion.getQuestion(), 1, jlptQuestion.getEx()));
						JSONArray ans = new JSONArray();
						if (jlptQuestion.getJlptAnswer() != null) {
							for (JLPTAnswer jlptAnswer : jlptQuestion.getJlptAnswer()) {
								ans.add(common.getAnswer(
										jlptAnswer.getJlptAnswerId().substring(
												jlptAnswer.getJlptAnswerId().length() - 2,
												jlptAnswer.getJlptAnswerId().length()),
										jlptQuestion.getJlptQuestionId().substring(
												jlptQuestion.getJlptQuestionId().length() - 2,
												jlptQuestion.getJlptQuestionId().length()),
										jlptAnswer.getAnswer(), jlptAnswer.getAnswerRghtWrng()));
							}
						}
						lesson_answers.put(jlptQuestion.getJlptQuestionId().substring(
								jlptQuestion.getJlptQuestionId().length() - 2,
								jlptQuestion.getJlptQuestionId().length()), ans);
					} else
						total_marks--;
				}
			}
		}
		lesson_lesson.put("total_marks", total_marks);
		Map<String, String> map = new HashMap<>();
		map.put("lesson_answers", lesson_answers.toString());
		map.put("lesson_tasks", lesson_tasks.toString());
		map.put("lesson_lesson", lesson_lesson.toString());
		JSONObject rs = new JSONObject();
		rs.put("", lesson_answers);
		rs.put("", lesson_tasks);
		jsons.add(map);
		return jsons;
	}

	public boolean setJLPT(String jlptJson, String del, JLPT jlptForm) throws Exception {
		JLPTType jlptType = jlptTypeRepository.findByJlptQTypeId("JLPT02");
		try {
			JSONArray dl = (JSONArray) JSONSerializer.toJSON(del);
			for (Object js : dl) {
				JSONObject json = (JSONObject) js;
				String id = json.getString("id");
				ExamQuestion examQuestion = examQuestionRepository.findByExamQuestionId(id);
				if (examQuestion != null) {
					if (examQuestion.getExamAnswer() != null) {
						for (ExamAnswer examAnswer : examQuestion.getExamAnswer()) {
							examAnswerRepository.delete(examAnswer);
						}
					}
					examQuestionRepository.delete(examQuestion);
				}
			}
			JSONArray lx = (JSONArray) JSONSerializer.toJSON(jlptJson);
			JLPT jlpt = jlptRepository.findByJlptId(jlptForm.getJlptId());
			if (jlpt == null) {
				jlpt = new JLPT();
			}
			jlpt.setUser((User) session.getAttribute("user"));
			jlpt.setJlptName(jlptForm.getJlptName());
			jlpt.setTimeout(jlptForm.getTimeout());
			jlpt.setJlptType(jlptType);
			for (Object js : lx) { // qtype
				JSONObject json = (JSONObject) js;
				
				JSONArray lq = (JSONArray) JSONSerializer.toJSON(json.getString("qs"));
				for (Object jsq : lq) {
					JSONObject jsonq = (JSONObject) jsq;
					String change = jsonq.getString("c");
					if ("c".equals(change)) {
						List<ExamAnswer> answers = new ArrayList<>();
						ExamQuestion examQuestion = new ExamQuestion();
						String iq = jsonq.getString("iq");
						String qt = jsonq.getString("qt");
						String ex = jsonq.getString("ex");
						if (examQuestionRepository.findByExamQuestionId(iq) == null) {
							examQuestion.setExamQuestionId(setExamQtId());
						} else {
							examQuestion.setExamQuestionId(iq);
						}
						examQuestion.setEx(ex);
						examQuestion.setQuestion(qt);
//						examQuestion.setExam(exam);
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