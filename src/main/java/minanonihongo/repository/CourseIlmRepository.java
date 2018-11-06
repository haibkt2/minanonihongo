
package minanonihongo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.transaction.annotation.Transactional;

import minanonihongo.model.Course;
import minanonihongo.model.CourseIlm;

public interface CourseIlmRepository extends CrudRepository<CourseIlm, Integer> {
	@Query(value = "SELECT * FROM course_ilm where course_id = ?1 and course_ilm_type_id = ?2 ORDER BY course_ilm_id" , nativeQuery = true)
    List<CourseIlm> findByCourseIlm(String courseId, String courseIlmTypeId);
	
	@Query(value = "SELECT cit.course_ilm_type_name FROM course_ilm as ci join course_ilm_type as cit on ci.course_ilm_type_id = cit.course_ilm_type_id"
			+ " where ci.course_id = ?1 group  by ci.course_ilm_type_id" , nativeQuery = true)
    List<String> courseIlmType(String courseId);
	
	CourseIlm findByCourseIlmId(String courseIlmId);
	
	List<CourseIlm> findByCourse(Course course);
	@Modifying
	@Transactional
	@Query(value="Delete from course_ilm where course_ilm_id = ?1",nativeQuery = true)
	int deleteCourseIlmId(String courseId);
}
