
package minanonihongo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import minanonihongo.model.Course;



public interface CourseRepository extends CrudRepository<Course, Integer> {
	@Query(value = "SELECT * FROM course ORDER BY course_id DESC" , nativeQuery = true)
    List<Course> findByCourse();
	Course findByCourseName(String courseName);
	Course findByCourseId(String courseId);
}
