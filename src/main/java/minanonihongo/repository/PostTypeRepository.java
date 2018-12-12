
package minanonihongo.repository;

import org.springframework.data.repository.CrudRepository;

import minanonihongo.model.PostType;

public interface PostTypeRepository extends CrudRepository<PostType, Integer> {
	PostType findByPostTypeId(String postTypeId);
}
