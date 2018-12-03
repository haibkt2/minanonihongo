
package minanonihongo.repository;


import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import minanonihongo.model.Post;

public interface PostRepository extends CrudRepository<Post, Integer> {

	@Query(value = "SELECT * FROM post WHERE post_type_id = ?1" , nativeQuery = true)
    List<Post> findByPost(String ptId);
	
	Post findByPostId(String postId);
	
	@Query(value = "SELECT * FROM post ORDER BY view_post DESC LIMIT 3" , nativeQuery = true)
    List<Post> findPostMn();
	
	@Query(value = "SELECT * FROM post where post_type_id = ?1" , nativeQuery = true)
    List<Post> findPostCm(String postTypeId);
}
