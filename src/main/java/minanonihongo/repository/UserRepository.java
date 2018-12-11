
package minanonihongo.repository;


import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import minanonihongo.model.User;

public interface UserRepository extends CrudRepository<User, Integer> {
	
    User findByUserName(String userName);
    User findByUserId(String userId); 
    @Query(value = "SELECT * FROM user where email = ?1 and flg = ?2" , nativeQuery = true)
    User findByEmail(String email, String flg); 
    
    @Query(value = "SELECT * FROM user where flg ='rg'" , nativeQuery = true)
    List<User> findUserRg();
}
