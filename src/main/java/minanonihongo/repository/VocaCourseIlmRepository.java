
package minanonihongo.repository;


import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.transaction.annotation.Transactional;

import minanonihongo.model.VocaCourseIlm;


public interface VocaCourseIlmRepository extends CrudRepository<VocaCourseIlm, Integer> {
	@Modifying
	@Transactional
	@Query(value="Delete from voca_course_ilm where course_ilm_id = ?1",nativeQuery = true)
	int deleteVocaCourseIlmId(String courseId);

	VocaCourseIlm findByVocaCourseIlmId(String id);
}
