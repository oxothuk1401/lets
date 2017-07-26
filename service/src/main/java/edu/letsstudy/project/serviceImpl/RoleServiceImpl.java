package edu.letsstudy.project.serviceImpl;

import edu.letsstudy.project.dao.RoleDao;
import edu.letsstudy.project.pojo.Role;
import edu.letsstudy.project.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by ADMINUM on 16.07.2017.
 */
@Service
public class RoleServiceImpl implements RoleService {

    @Autowired
    private RoleDao roleDao;
    @Override

    public Role findRoleByRole(String role) {
        return roleDao.findRoleByRole(role);
    }

    @Override
    public void addRole(Role role) {
        roleDao.save(role);
    }
}
