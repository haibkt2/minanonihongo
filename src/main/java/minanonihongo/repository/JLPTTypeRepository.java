
package minanonihongo.repository;

import org.springframework.data.repository.CrudRepository;

import minanonihongo.model.JLPTQType;
import minanonihongo.model.JLPTType;

public interface JLPTTypeRepository extends CrudRepository<JLPTQType, Integer> {
	JLPTType findByJlptQTypeId(String id);
}
