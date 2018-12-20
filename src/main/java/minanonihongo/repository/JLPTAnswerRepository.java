
package minanonihongo.repository;

import org.springframework.data.repository.CrudRepository;

import minanonihongo.model.JLPTAnswer;


public interface JLPTAnswerRepository extends CrudRepository<JLPTAnswer, Integer> {
	JLPTAnswer findByJlptAnswerId(String jlptAid);
}
