package edu.letsstudy.project.service;

/**
 * Created by ADMINUM on 16.07.2017.
 */
public interface SecurityService {
    String findLoggedInEmail();
    void autoLogin(String email, String password);
}
