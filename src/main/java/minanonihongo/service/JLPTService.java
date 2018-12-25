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
import minanonihongo.repository.JLPTAnswerRepository;
import minanonihongo.repository.JLPTQTypeRepository;
import minanonihongo.repository.JLPTQuestionRepository;
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
	JLPTQuestionRepository jlptQuestionRepository;

	@Autowired
	JLPTTypeRepository jlptTypeRepository;

	@Autowired
	JLPTQTypeRepository jlptQTypeRepository;

	@Autowired
	JLPTAnswerRepository jlptAnswerRepository;

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
		JLPTType jlptType = jlptTypeRepository.findByJlptTypeId("JLPT02");
		try {
			JSONArray dl = (JSONArray) JSONSerializer.toJSON(del);
			for (Object js : dl) {
				JSONObject json = (JSONObject) js;
				String id = json.getString("id");
				JLPTQuestion jlptQuestion = jlptQuestionRepository.findByJlptQuestionId(id);
				if (jlptQuestion != null) {
					if (jlptQuestion.getJlptAnswer() != null) {
						for (JLPTAnswer jlptAnswer : jlptQuestion.getJlptAnswer()) {
							jlptAnswerRepository.delete(jlptAnswer);
						}
					}
					jlptQuestionRepository.delete(jlptQuestion);
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
				String qti = json.getString("qti");
				String qtn = json.getString("qt");
				JLPTQType jlptqType = jlptQTypeRepository.findByJlptQTypeId(qti);
				if (jlptqType == null) {
					jlptqType = new JLPTQType();
					qti = setJlptQTId();
				}
					
				jlptqType.setJlptTypeId(qti);
				jlptqType.setJlptQTypeName(qtn);
				jlptQTypeRepository.save(jlptqType);
				JSONArray lq = (JSONArray) JSONSerializer.toJSON(json.getString("qs"));
				for (Object jsq : lq) {
					JSONObject jsonq = (JSONObject) jsq;
					String change = jsonq.getString("c");
					if ("c".equals(change)) {
						List<JLPTAnswer> answers = new ArrayList<>();
						JLPTQuestion jlptQuestion = new JLPTQuestion();
						String iq = jsonq.getString("iq");
						String qt = jsonq.getString("qt");
						String ex = jsonq.getString("ex");
						if (jlptQuestionRepository.findByJlptQuestionId(iq) == null) {
							jlptQuestion.setJlptQuestionId(setJlptQtId());
						} else {
							jlptQuestion.setJlptQuestionId(iq);
						}
						jlptQuestion.setEx(ex);
						jlptQuestion.setQuestion(qt);
						jlptQuestion.setJlpt(jlpt);
						// examQuestion.setExam(exam);
						jlptQuestion.setJlptAnswer(answers);
						jlptQuestion.setJlptQType(jlptqType);
						jlptQuestionRepository.save(jlptQuestion);
						JSONArray la = (JSONArray) JSONSerializer.toJSON(jsonq.getString("ans"));
						for (Object jsa : la) {
							JSONObject jsona = (JSONObject) jsa;
							JLPTAnswer jlptAnswer = new JLPTAnswer();
							String ia = jsona.getString("ia");
							if (jlptAnswerRepository.findByJlptAnswerId(ia) == null) {
								jlptAnswer.setJlptAnswerId(setJlptAnId());
							} else {
								jlptAnswer.setJlptAnswerId(ia);
							}
							String g = jsona.getString("g");
							String a = jsona.getString("a");
							jlptAnswer.setAnswer(a);
							jlptAnswer.setAnswerRghtWrng(g);
							jlptAnswer.setJlptQuestion(jlptQuestion);
							jlptAnswerRepository.save(jlptAnswer);
							answers.add(jlptAnswer);
						}
					}
				}
			}
			return true;
		} catch (JSONException e) {
			System.out.println(e.getMessage());
			return false;
		}

	}

	public String setJlptQtId() {
		List<JLPTQuestion> exams = (List<JLPTQuestion>) jlptQuestionRepository.findAll();
		String jlptQtId = "JLPTN0001";
		if (exams.size() > 0) {
			int id = Integer.parseInt(exams.get(exams.size() - 1).getJlptQuestionId().substring(5, 9)) + 1;
			String countExId = "" + id;
			if (countExId.trim().length() != 4) {
				int count = 4 - countExId.trim().length();
				for (int i = 0; i < count; i++) {
					countExId = "0" + countExId;
				}
			}
			jlptQtId = "JLPTN".concat("" + countExId);
		}
		return jlptQtId;
	}

	public String setJlptAnId() {
		List<JLPTAnswer> jlpts = (List<JLPTAnswer>) jlptAnswerRepository.findAll();
		String examAnsId = "JLPTA000001";
		if (jlpts.size() > 0) {
			int id = Integer.parseInt(jlpts.get(jlpts.size() - 1).getJlptAnswerId().substring(5, 11)) + 1;
			String countExId = "" + id;
			if (countExId.trim().length() != 6) {
				int count = 6 - countExId.trim().length();
				for (int i = 0; i < count; i++) {
					countExId = "0" + countExId;
				}
			}
			examAnsId = "JLPTA".concat("" + countExId);
		}
		return examAnsId;
	}

	public String setJlptId() {
		List<JLPT> jlpts = (List<JLPT>) jlptRepository.findAll();
		String jlptId = "JLPTE00000000";
		if (jlpts.size() > 0) {
			int id = Integer.parseInt(jlpts.get(jlpts.size() - 1).getJlptId().substring(5, 13)) + 1;
			String countExId = "" + id;
			if (countExId.trim().length() != 7) {
				int count = 7 - countExId.trim().length();
				for (int i = 0; i < count; i++) {
					countExId = "0" + countExId;
				}
			}
			jlptId = "JLPTE".concat("" + countExId);
		}
		return jlptId;
	}
	public String setJlptQTId() {
		List<JLPTQType> jlptqTypes = (List<JLPTQType>) jlptQTypeRepository.findAll();
		String jlptId = "JQT000";
		if (jlptqTypes.size() > 0) {
			int id = Integer.parseInt(jlptqTypes.get(jlptqTypes.size() - 1).getJlptQTypeId().substring(3, 6)) + 1;
			String countExId = "" + id;
			if (countExId.trim().length() != 3) {
				int count = 3 - countExId.trim().length();
				for (int i = 0; i < count; i++) {
					countExId = "0" + countExId;
				}
			}
			jlptId = "JQT".concat("" + countExId);
		}
		return jlptId;
	}
}