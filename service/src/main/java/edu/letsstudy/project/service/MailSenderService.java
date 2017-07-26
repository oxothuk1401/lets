package edu.letsstudy.project.service;

/**
 * Created by ADMINUM on 16.07.2017.
 */
public interface MailSenderService {
    void sendMail(String from, String to, String subject, String message);
}
