
package minanonihongo.repository;

import org.springframework.data.repository.CrudRepository;

import minanonihongo.model.ExamAnswer;

public interface ExamAnswerRepository extends CrudRepository<ExamAnswer, Integer> {
	ExamAnswer findByExamAnswerId(String exAnId);
}
