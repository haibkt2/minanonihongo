
package minanonihongo.repository;

import org.springframework.data.repository.CrudRepository;

import minanonihongo.model.Document;



public interface DocRepository extends CrudRepository<Document, Integer> {
}
