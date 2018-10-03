
package minanonihongo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import minanonihongo.model.CourseIlmType;



public interface CourseIlmTypeRepository extends CrudRepository<CourseIlmType, Integer> {
	@Query(value = "SELECT cit.course_ilm_type_name, cit.course_ilm_type_id FROM course_ilm as ci join course_ilm_type as cit on ci.course_ilm_type_id = cit.course_ilm_type_id"
			+ " where ci.course_id = ?1 group  by ci.course_ilm_type_id" , nativeQuery = true)
    List<CourseIlmType> courseIlmType(String courseId);
}
