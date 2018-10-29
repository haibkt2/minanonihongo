
package minanonihongo.repository;


import org.springframework.data.repository.CrudRepository;

import minanonihongo.model.User;

public interface UserRepository extends CrudRepository<User, Integer> {
	
    User findByUserName(String userName);
    User findByUserId(String userId); 
    User findByEmail(String email); 
    
}
