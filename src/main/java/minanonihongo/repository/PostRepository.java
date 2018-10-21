
package minanonihongo.repository;


import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import minanonihongo.model.Post;

public interface PostRepository extends CrudRepository<Post, Integer> {

	@Query(value = "SELECT * FROM post WHERE post_type_id = ?1" , nativeQuery = true)
    List<Post> findByPost(String ptId);
}
