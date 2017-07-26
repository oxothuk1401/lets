package edu.letsstudy.project.dao;

import edu.letsstudy.project.pojo.Role;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created by ADMINUM on 16.07.2017.
 */
public interface RoleDao extends JpaRepository<Role, Long>{
    Role findRoleByRole(String role);
}
