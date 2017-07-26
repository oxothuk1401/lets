package edu.letsstudy.project.service;

import edu.letsstudy.project.pojo.Role;

/**
 * Created by ADMINUM on 16.07.2017.
 */
public interface RoleService {
    Role findRoleByRole(String role);
    void addRole(Role role);
}
