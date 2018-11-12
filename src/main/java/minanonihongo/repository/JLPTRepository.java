
package minanonihongo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import minanonihongo.model.JLPT;


public interface JLPTRepository extends CrudRepository<JLPT, Integer> {
	@Query(value="Select * from jlpt where course_id = ?1 and jlpt_type_id =?2",nativeQuery = true)
	List<JLPT> findExJLPT(String  courseId, String jlptType);
}
