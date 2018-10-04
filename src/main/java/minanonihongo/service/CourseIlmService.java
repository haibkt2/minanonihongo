package minanonihongo.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import minanonihongo.model.CourseIlm;
import minanonihongo.model.CourseIlmType;
import minanonihongo.repository.CourseIlmRepository;

@Service
public class CourseIlmService {

	@Autowired
	private CourseIlmRepository courseIlmRepository;
	
	public Map<String, List<CourseIlm>> setMapCourse(String courseId, List<CourseIlmType> courseIlmTypeList) {
		Map<String, List<CourseIlm>> map = new HashMap<>();
		if (courseIlmTypeList != null) {
			for (CourseIlmType courseIlmType : courseIlmTypeList) {
				List<CourseIlm> courseIlms = courseIlmRepository.findByCourseIlm(courseId, courseIlmType.getCourseIlmTypeId());
				map.put(courseIlmType.getCourseIlmTypeName(), courseIlms);
			}
		}
		return map;
	}

}