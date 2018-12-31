package minanonihongo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import minanonihongo.model.CourseGlobal;
import minanonihongo.model.CourseIlm;
import minanonihongo.model.VocaCourseIlm;
import minanonihongo.repository.CourseGlobalRepository;
import minanonihongo.repository.CourseIlmRepository;
import minanonihongo.repository.ExamAnswerRepository;
import minanonihongo.repository.ExamQuestionRepository;
import minanonihongo.repository.ExamRepository;
import minanonihongo.repository.VocaCourseIlmRepository;

@Service
public class CourseGbService {
	@Autowired
	CommonService common;

	@Autowired
	ExamRepository examRepository;

	@Autowired
	ExamQuestionRepository examQuestionRepository;

	@Autowired
	ExamAnswerRepository examAnswerRepository;

	@Autowired
	CourseGlobalRepository courseGlobalRepository;
	
	@Autowired
	CourseIlmRepository courseIlmRepository;

	public CourseGlobal setcourseGlobal(CourseIlm courseIlm) throws Exception {
		CourseGlobal courseGlobal = courseGlobalRepository.findByCourseIlm(courseIlm);
		if (courseGlobal == null) {
			courseGlobal = new CourseGlobal();
			List<CourseGlobal> vocas = (List<CourseGlobal>) courseGlobalRepository.findAll();
			String gbId = "GBNJCOURSE000";
			if (vocas.size() > 0) {
				int id = Integer.parseInt(vocas.get(vocas.size() - 1).getCourseBgId().substring(10, 13)) + 1;
				String countUsId = "" + id;
				if (countUsId.trim().length() != 3) {
					int count = 3 - countUsId.trim().length();
					for (int i = 0; i < count; i++) {
						countUsId = "0" + countUsId;
					}
				}
				gbId = "GBNJCOURSE".concat("" + countUsId);
			}
			courseGlobal.setCourseBgId(gbId);
			courseGlobal.setCreateDate(common.currentDate());
			courseGlobal.setCourseIlm(courseIlm);
		}
		courseGlobal.setUpdateDate(common.currentDate());
		courseGlobalRepository.save(courseGlobal);
		return courseGlobal;
	}

	public void addTotalNumber(String id) throws Exception {
		if (id != null) {
			CourseGlobal courseGlobal = courseGlobalRepository.countByTotalNumber(id);
			if (courseGlobal == null)
				courseGlobal = setcourseGlobal(courseIlmRepository.findByCourseIlmId(id));
			courseGlobal.setTotalNumber(courseGlobal.getTotalNumber() + 1);
			courseGlobalRepository.save(courseGlobal);
		}
	}
}