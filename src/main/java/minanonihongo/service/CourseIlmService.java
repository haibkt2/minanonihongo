package minanonihongo.service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.google.gson.Gson;

import minanonihongo.model.Course;
import minanonihongo.model.CourseIlm;
import minanonihongo.model.CourseIlmType;
import minanonihongo.model.Document;
import minanonihongo.model.Exam;
import minanonihongo.model.CourseGlobal;
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
				for (CourseIlm courseIlm : courseIlms) {
					Course crs = new Course(courseIlm.getCourse().getCourseName());
					if (courseIlm.getCourse().getDocuments().size() > 0) {
						crs.setDocuments(courseIlm.getCourse().getDocuments());
					}
					courseIlm.setCourse(crs);
					courseIlm.setCourseIlmType(new CourseIlmType(courseIlm.getCourseIlmType().getCourseIlmTypeName()));
					CourseGlobal courseGlobal = new CourseGlobal(0);
					if (courseIlm.getCourseGlobal() != null) {
						courseGlobal.setTotalNumber(courseIlm.getCourseGlobal().getTotalNumber());
					}
					courseIlm.setCourseGlobal(courseGlobal);
					courseIlm.setExamResult(new ExamResult());
					courseIlm.setUser(new User());
					List<Exam> examList = new ArrayList<>();
					Exam exam = new Exam();
					if (courseIlm.getExams() != null) {
						for (Exam ex : courseIlm.getExams()) {
							// exam.setExamName(ex.getExamName());
							examList.add(ex);
						}

					} else {
						examList.add(exam);
					}
					courseIlm.setExams(examList);
				}
				map.put(courseIlmType.getCourseIlmTypeName(), courseIlms);
			}
		}
		return map;
	}

	public String detailLesson(String id) {
		Gson g = new Gson();
		CourseIlm courseIlm = courseIlmRepository.findByCourseIlmId(id);
		courseIlm.setCourseIlmType(new CourseIlmType());
		if (courseIlm.getCourseGlobal() != null) {
			courseIlm.setCourseGlobal(new CourseGlobal(courseIlm.getCourseGlobal().getTotalNumber()));
		} else {
			courseIlm.setCourseGlobal(new CourseGlobal(0));
		}
		Course crs = new Course(courseIlm.getCourse().getCourseName());
		List<Document> docList = new ArrayList<>();
		if ("000".equals(id.substring(id.length() - 3, id.length()))) {
			for (Document doc : courseIlm.getCourse().getDocuments()) {
				docList.add(new Document(doc.getLocaFileDoc()));
			}
		}
		crs.setDocuments(docList);
		courseIlm.setCourse(crs);
		courseIlm.setExamResult(new ExamResult());
		courseIlm.setUser(new User());
		List<Exam> exam = courseIlm.getExams();
		if (!exam.isEmpty()) {
			courseIlm.setExams(null);
		}
		String courseG = g.toJson(courseIlm);
		System.out.println(courseG);
		return courseG;
	}

}