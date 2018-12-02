
package minanonihongo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import minanonihongo.model.JLPTMenu;

public interface JLPTMenuRepository extends CrudRepository<JLPTMenu, Integer> {
	@Query(value="SELECT jm.jlpt_menu_id, jm.jlpt_menu_name FROM jlpt_menu as jm JOIN jlpt as j on jm.jlpt_menu_id = j.jlpt_menu_id WHERE j.course_id = ?1 AND j.jlpt_type_id = ?2 GROUP BY jm.jlpt_menu_id",nativeQuery = true)
	List<JLPTMenu> findExJLPT(String  courseId, String jlptType);
}
