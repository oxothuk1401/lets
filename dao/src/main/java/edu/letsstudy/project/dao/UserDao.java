package edu.letsstudy.project.dao;

import edu.letsstudy.project.pojo.User;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created by ADMINUM on 16.07.2017.
 */
public interface UserDao extends JpaRepository<User, Long> {
    User findUserByEmail(String email);
}
