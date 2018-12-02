package minanonihongo.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import minanonihongo.model.CourseIlm;
import minanonihongo.model.Exam;
import minanonihongo.model.ExamAnswer;
import minanonihongo.model.ExamQuestion;
import minanonihongo.model.JLPTAnswer;
import minanonihongo.model.JLPTQType;
import minanonihongo.model.JLPTQuestion;
import minanonihongo.model.VocaCourseIlm;
import minanonihongo.repository.CourseGlobalRepository;
import minanonihongo.repository.CourseIlmRepository;
import minanonihongo.repository.ExamAnswerRepository;
import minanonihongo.repository.ExamQuestionRepository;
import minanonihongo.repository.ExamRepository;
import minanonihongo.repository.VocaCourseIlmRepository;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

@Service
public class JLPTService {

	@Autowired
	private CourseIlmRepository courseIlmRepository;

	@Autowired
	ExamRepository examRepository;

	@Autowired
	ExamQuestionRepository examQuestionRepository;

	@Autowired
	ExamAnswerRepository examAnswerRepository;

	@Autowired
	VocaCourseIlmRepository vocaCourseIlmRepository;

	@Autowired
	CourseGlobalRepository courseGlobalRepository;

	@Autowired
	private Common common;
	
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
								"3", jlptQuestion.getQuestion(), 1, jlptQuestion.getExplain()));
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
}