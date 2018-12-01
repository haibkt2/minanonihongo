
package minanonihongo.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import minanonihongo.model.JLPTResult;


public interface JLPTRsRepository extends CrudRepository<JLPTResult, Integer> {
	
	@Query(value = "SELECT * FROM jlpt_result WHERE user_id = ?1 AND jlpt_id = ?2" , nativeQuery = true)
	JLPTResult findJLPTResult(String userId, String jlptId);
}
