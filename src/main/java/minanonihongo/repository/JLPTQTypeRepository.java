
package minanonihongo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import minanonihongo.model.JLPTQType;

public interface JLPTQTypeRepository extends CrudRepository<JLPTQType, Integer> {
	
	@Query(value="SELECT jt.jlpt_q_type_id, jt.jlpt_q_type_name from jlpt_q_type as jt join jlpt_question as jq on jt.jlpt_q_type_id = jq.jlpt_q_type_id where jq.jlpt_id = ?1 GROUP BY jt.jlpt_q_type_id",nativeQuery = true)
    List<JLPTQType> findQQuestion(String jlptId);
	
	JLPTQType findByJlptQTypeId(String jlptQid);
}
