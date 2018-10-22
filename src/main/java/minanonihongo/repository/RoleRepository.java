
package minanonihongo.repository;

import org.springframework.data.repository.CrudRepository;

import minanonihongo.model.Role;


public interface RoleRepository extends CrudRepository<Role, Integer> {
    Role findByRoleId(String roleId);
}
