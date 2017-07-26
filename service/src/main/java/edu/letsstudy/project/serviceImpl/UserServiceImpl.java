package edu.letsstudy.project.serviceImpl;


import edu.letsstudy.project.dao.UserDao;
import edu.letsstudy.project.pojo.Role;
import edu.letsstudy.project.pojo.User;
import edu.letsstudy.project.service.RoleService;
import edu.letsstudy.project.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

/**
 * Created by ADMINUM on 16.07.2017.
 */
@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;

    @Autowired
    private RoleService roleService;

    @Autowired
    private BCryptPasswordEncoder bCryptPasswordEncoder;

    @Override
    public void registration(User user, String role) {
        Role nRole = new Role();
        nRole.setRole("ROLE_ADMIN");
        roleService.addRole(nRole);

        user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
        user.getRoles().add(roleService.findRoleByRole(nRole.getRole()));
        userDao.save(user);

    }

    @Override
    public User findUserByEmail(String email) {
        return userDao.findUserByEmail(email);
    }
}
