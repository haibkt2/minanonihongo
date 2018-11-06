
package minanonihongo.repository;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.transaction.annotation.Transactional;

import minanonihongo.model.Document;



public interface DocRepository extends CrudRepository<Document, Integer> {
	Document findByDocId(String docId);
	@Modifying
	@Transactional
	@Query(value="Delete from document where doc_id = ?1",nativeQuery = true)
    int deleteDocId(String docId);
}
