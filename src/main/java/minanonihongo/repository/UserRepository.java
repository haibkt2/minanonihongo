
package minanonihongo.repository;


import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import minanonihongo.model.User;

public interface UserRepository extends CrudRepository<User, Integer> {
	
	@Query(value = "SELECT * FROM user where email = ?1 and password = ?2 " , nativeQuery = true)
    User findByEmail(String email,String pass);
	
    User findByUserName(String userName);
    User findByUserId(String userId); 
    
}
