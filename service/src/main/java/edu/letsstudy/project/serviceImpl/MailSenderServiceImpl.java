package edu.letsstudy.project.serviceImpl;

import edu.letsstudy.project.service.MailSenderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Service;

/**
 * Created by ADMINUM on 16.07.2017.
 */
@Service
public class MailSenderServiceImpl implements MailSenderService {

    @Autowired
    private MailSender mailSender;

    @Override
    public void sendMail(String from, String to, String subject, String message) {
        SimpleMailMessage mailMessage = new SimpleMailMessage();
        mailMessage.setFrom(from);
        mailMessage.setTo(to);
        mailMessage.setSubject(subject);
        mailMessage.setText(message);
        mailSender.send(mailMessage);
    }
}
