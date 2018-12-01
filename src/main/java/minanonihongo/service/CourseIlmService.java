package minanonihongo.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import minanonihongo.model.Course;
import minanonihongo.model.CourseIlm;
import minanonihongo.model.CourseIlmType;
import minanonihongo.model.Document;
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
public class CourseIlmService {

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

	public Map<String, List<CourseIlm>> setMapCourse(String courseId, List<CourseIlmType> courseIlmTypeList) {
		Map<String, List<CourseIlm>> map = new HashMap<>();
		if (courseIlmTypeList != null) {
			for (CourseIlmType courseIlmType : courseIlmTypeList) {
				List<CourseIlm> courseIlms = courseIlmRepository.findByCourseIlm(courseId,
						courseIlmType.getCourseIlmTypeId());
				map.put(courseIlmType.getCourseIlmTypeName(), courseIlms);
			}
		}
		return map;
	}

	public CourseIlm detailLesson(String id, String lesson) {
		CourseIlm courseIlm = courseIlmRepository.findByCourseIlmId(id);
		if (courseIlm == null)
			return new CourseIlm();
		else {
			Course crs = courseIlm.getCourse();
			List<Document> docList = new ArrayList<>();
			if ("000".equals(id.substring(id.length() - 3, id.length()))) {
				for (Document doc : courseIlm.getCourse().getDocuments()) {
					docList.add(new Document(doc.getLocaFileDoc(), doc.getDescrip()));
				}
			}
			crs.setDocuments(docList);
			courseIlm.setCourse(crs);
			// if ("exercise".equals(lesson)) {
			// courseIlm.setLocaFileCourse(null);
			// courseIlm.setVocaCourseIlms(new ArrayList<>());
			// courseIlm.setIntroduce(null);
			// courseIlm.setLessonName("Bài tập : " + courseIlm.getLessonName());
			// }
			// else if ("study".equals(lesson)) {
			// courseIlm.setExams(new ArrayList<>());
			// }
			return courseIlm;
		}
	}

	public List<Map<String, String>> mapJson(CourseIlm courseIlm) throws Exception {
		List<Map<String, String>> jsons = new ArrayList<>();
		JSONArray lesson_tasks = new JSONArray();
		JSONObject lesson_answers = new JSONObject();
		JSONObject lesson_lesson = new JSONObject();

		if (courseIlm.getExams() != null) {
			for (Exam ex : courseIlm.getExams()) {
				lesson_lesson.put("id", ex.getExamId().substring(ex.getExamId().length() - 2, ex.getExamId().length()));
				lesson_lesson.put("course_id",
						ex.getCourseIlm().getCourse().getCourseId().substring(
								ex.getCourseIlm().getCourse().getCourseId().length() - 1,
								ex.getCourseIlm().getCourse().getCourseId().length()));
				if (ex.getExamQuestion() != null) {
					lesson_lesson.put("total_marks", ex.getExamQuestion().size());
					int index = 0;
					for (ExamQuestion examQuestion : ex.getExamQuestion()) {
						index++;
						lesson_tasks.add(getQuestion(index,
								ex.getExamId().substring(ex.getExamId().length() - 2, ex.getExamId().length()),
								examQuestion.getExamQuestionId().substring(
										examQuestion.getExamQuestionId().length() - 2,
										examQuestion.getExamQuestionId().length()),
								"3", examQuestion.getQuestion(), 1, examQuestion.getExplain()));
						JSONArray ans = new JSONArray();
						if (examQuestion.getExamAnswer() != null) {
							for (ExamAnswer examAnswer : examQuestion.getExamAnswer()) {
								ans.add(getAnswer(
										examAnswer.getExamAnswerId().substring(
												examAnswer.getExamAnswerId().length() - 2,
												examAnswer.getExamAnswerId().length()),
										examQuestion.getExamQuestionId().substring(
												examQuestion.getExamQuestionId().length() - 2,
												examQuestion.getExamQuestionId().length()),
										examAnswer.getAnswer(), examAnswer.getAnswerRghtWrng()));
							}
						}
						lesson_answers.put(examQuestion.getExamQuestionId().substring(
								examQuestion.getExamQuestionId().length() - 2,
								examQuestion.getExamQuestionId().length()), ans);
					}
				}

			}
		}
		Map<String, String> map = new HashMap<>();
		map.put("lesson_answers", lesson_answers.toString());
		map.put("lesson_tasks", lesson_tasks.toString());
		map.put("lesson_lesson", lesson_lesson.toString());
		jsons.add(map);
		return jsons;
	}

	public List<Map<String, String>> mapJsonS(List<JLPTQType> jlptQT) throws Exception {
		List<Map<String, String>> jsons = new ArrayList<>();
		JSONArray lesson_tasks = new JSONArray();
		JSONObject lesson_answers = new JSONObject();
		JSONObject lesson_lesson = new JSONObject();
		lesson_lesson.put("id",
				jlptQT.get(0).getJlptQuestions().get(0).getJlpt().getJlptId().substring(
						jlptQT.get(0).getJlptQuestions().get(0).getJlpt().getJlptId().length() - 8,
						jlptQT.get(0).getJlptQuestions().get(0).getJlpt().getJlptId().length()));
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
					index++;
					lesson_tasks.add(getQuestion(index,
							jt.getJlptQuestions().get(0).getJlpt().getJlptId().substring(
									jt.getJlptQuestions().get(0).getJlpt().getJlptId().length() - 8,
									jt.getJlptQuestions().get(0).getJlpt().getJlptId().length()),
							jlptQuestion.getJlptQuestionId().substring(jlptQuestion.getJlptQuestionId().length() - 2,
									jlptQuestion.getJlptQuestionId().length()),
							"3", jlptQuestion.getQuestion(), 1, jlptQuestion.getExplain()));
					JSONArray ans = new JSONArray();
					if (jlptQuestion.getJlptAnswer() != null) {
						for (JLPTAnswer jlptAnswer : jlptQuestion.getJlptAnswer()) {
							ans.add(getAnswer(
									jlptAnswer.getJlptAnswerId().substring(jlptAnswer.getJlptAnswerId().length() - 2,
											jlptAnswer.getJlptAnswerId().length()),
									jlptQuestion.getJlptQuestionId().substring(
											jlptQuestion.getJlptQuestionId().length() - 2,
											jlptQuestion.getJlptQuestionId().length()),
									jlptAnswer.getAnswer(), jlptAnswer.getAnswerRghtWrng()));
						}
					}
					lesson_answers.put(
							jlptQuestion.getJlptQuestionId().substring(jlptQuestion.getJlptQuestionId().length() - 2,
									jlptQuestion.getJlptQuestionId().length()),
							ans);
				}
			}

		}
		lesson_lesson.put("total_marks", total_marks);
		Map<String, String> map = new HashMap<>();
		map.put("lesson_answers", lesson_answers.toString());
		map.put("lesson_tasks", lesson_tasks.toString());
		map.put("lesson_lesson", lesson_lesson.toString());
		jsons.add(map);
		return jsons;
	}

	public JSONObject getAnswer(String id, String task_id, String value, String grade) throws Exception {
		JSONObject answer = new JSONObject();
		answer.put("id", id);
		answer.put("task_id", task_id);
		answer.put("value", value);
		answer.put("grade", grade);
		return answer;
	}

	public JSONObject getQuestion(int index, String lesson_id, String id, String type, String value, int grade,
			String ex) throws Exception {
		JSONObject question = new JSONObject();
		question.put("lesson_id", lesson_id);
		question.put("id", id);
		question.put("ex", ex);
		question.put("type", type);
		question.put("value", index + " ." + value);
		question.put("grade", grade);
		return question;
	}

	public boolean deleCourse(CourseIlm courseIlm) {
		List<Exam> exams = courseIlm.getExams();
		for (Exam ex : exams) {
			List<ExamQuestion> examQuestions = ex.getExamQuestion();
			for (ExamQuestion eQuestion : examQuestions) {
				List<ExamAnswer> examAnswers = eQuestion.getExamAnswer();
				for (ExamAnswer eAnswer : examAnswers) {
					examAnswerRepository.delete(eAnswer);
				}
				examQuestionRepository.delete(eQuestion);
			}
			examRepository.delete(ex);
		}
		if (courseIlm.getCourseGlobal() != null) {
			courseGlobalRepository.delete(courseIlm.getCourseGlobal());
		}
		List<VocaCourseIlm> vocaCourseIlms = courseIlm.getVocaCourseIlms();
		if (vocaCourseIlms != null && vocaCourseIlms.size() > 0) {
			vocaCourseIlmRepository.deleteVocaCourseIlmId(courseIlm.getCourseIlmId());
		}
		courseIlmRepository.delete(courseIlm);
		return true;
	}

	public String setCourseIlmId(CourseIlm courseIlm) {
		String courseIlmId = "COURSE001";
		if (courseIlm.getCourseIlmId() != null) {
			String cilmId = courseIlm.getCourseIlmId();
			int id = Integer.parseInt(cilmId.substring(cilmId.length() - 3, cilmId.length())) + 1;
			String countUsId = "" + id;
			if (countUsId.trim().length() != 3) {
				int count = 3 - countUsId.trim().length();
				for (int i = 0; i < count; i++) {
					countUsId = "0" + countUsId;
				}
			}
			courseIlmId = cilmId.substring(0, cilmId.length() - 3).concat("" + countUsId);
		}
		return courseIlmId;
	}
}