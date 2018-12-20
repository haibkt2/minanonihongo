
package minanonihongo.repository;

import org.springframework.data.repository.CrudRepository;

import minanonihongo.model.JLPTType;

public interface JLPTTypeRepository extends CrudRepository<JLPTType, Integer> {
	JLPTType findByJlptTypeId(String id);
}
