
package minanonihongo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import minanonihongo.model.CourseFun;
import minanonihongo.model.CourseFunType;



public interface CourseFunRepository extends CrudRepository<CourseFun, Integer> {
	@Query(value = "SELECT * FROM course_fun WHERE course_fun_type_id = ?1" , nativeQuery = true)
    List<CourseFun> findByFunType(String ftId);
	
	CourseFun findByCourseBgId(String bgId);
	
	@Query(value = "SELECT * FROM course_fun ORDER BY view_course_fun DESC LIMIT 3" , nativeQuery = true)
    List<CourseFun> findCourseFunMn();
	
	List<CourseFun> findByCourseFunType(CourseFunType courseFunType);
}
