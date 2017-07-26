package edu.letsstudy.project.service;

import edu.letsstudy.project.pojo.User;

/**
 * Created by ADMINUM on 16.07.2017.
 */
public interface UserService {
    void registration(User user, String role);
    User findUserByEmail(String email);
}
