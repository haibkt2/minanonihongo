
package minanonihongo.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import minanonihongo.model.CourseGlobal;
import minanonihongo.model.CourseIlm;
public interface CourseGlobalRepository extends CrudRepository<CourseGlobal, Integer> {
	@Query(value = "SELECT * FROM course_global where course_ilm_id = ?1" , nativeQuery = true)
	CourseGlobal countByTotalNumber(String courseIlmId);
	
	CourseGlobal findByCourseIlm(CourseIlm courseIlm);
}
