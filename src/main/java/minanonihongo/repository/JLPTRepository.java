
package minanonihongo.repository;

import org.springframework.data.repository.CrudRepository;

import minanonihongo.model.JLPT;


public interface JLPTRepository extends CrudRepository<JLPT, Integer> {
	
	JLPT findByJlptId(String jlptId);
}
