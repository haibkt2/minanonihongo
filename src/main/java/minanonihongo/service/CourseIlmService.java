package minanonihongo.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import minanonihongo.model.Course;
import minanonihongo.model.CourseIlm;
import minanonihongo.model.CourseIlmType;
import minanonihongo.model.Document;
import minanonihongo.model.Exam;
import minanonihongo.model.ExamAnswer;
import minanonihongo.model.ExamQuestion;
import minanonihongo.model.ExamResult;
import minanonihongo.model.User;
import minanonihongo.repository.CourseIlmRepository;

@Service
public class CourseIlmService {

	@Autowired
	private CourseIlmRepository courseIlmRepository;

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
			Course crs = new Course(courseIlm.getCourse().getCourseName());
			List<Document> docList = new ArrayList<>();
			if ("000".equals(id.substring(id.length() - 3, id.length()))) {
				for (Document doc : courseIlm.getCourse().getDocuments()) {
					docList.add(new Document(doc.getLocaFileDoc()));
				}
			}
			crs.setDocuments(docList);
			courseIlm.setCourse(crs);
			if ("exercise".equals(lesson)) {
				courseIlm.setLocaFileCourse(null);
				courseIlm.setVocaCourseIlms(new ArrayList<>());
				courseIlm.setIntroduce(null);
				courseIlm.setLessonName("Bài tập : "+ courseIlm.getLessonName());
			} else if ("study".equals(lesson)) {
				courseIlm.setExams(new ArrayList<>());
			}
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
				lesson_lesson.put("lesson_id", ex.getExamId());
				lesson_lesson.put("course_id", ex.getCourseIlm().getCourse().getCourseName());
				if (ex.getExamQuestion() != null) {
					lesson_lesson.put("total_marks", ex.getExamQuestion().size());
					for (ExamQuestion examQuestion : ex.getExamQuestion()) {
						lesson_tasks.put(getQuestion(ex.getExamId(), examQuestion.getExamQuestionId(), "3",
								examQuestion.getQuestion(), 1));
						JSONArray ans = new JSONArray();
						if (examQuestion.getExamAnswer() != null) {
							for (ExamAnswer examAnswer : examQuestion.getExamAnswer()) {
								ans.put(getAnswer(examAnswer.getExamAnswerId(), examQuestion.getExamQuestionId(),
										examAnswer.getAnswer(), examAnswer.getAnswerRghtWrng()));
							}
						}
						lesson_answers.put(examQuestion.getExamQuestionId(), ans);
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

	public JSONObject getAnswer(String id, String task_id, String value, String grade) throws Exception {
		JSONObject answer = new JSONObject();
		answer.put("id", id);
		answer.put("task_id", task_id);
		answer.put("value", value);
		answer.put("grade", grade);
		return answer;
	}

	public JSONObject getQuestion(String lesson_id, String id, String type, String value, int grade)
			throws Exception {
		int index = 0;
		JSONObject question = new JSONObject();
		question.put("lesson_id", lesson_id);
		question.put("id", id);
		question.put("type", type);
		question.put("value", ++index + "." + value);
		question.put("grade", grade);
		return question;
	}
}