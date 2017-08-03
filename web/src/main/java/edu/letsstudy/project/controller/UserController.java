package edu.letsstudy.project.controller;

import edu.letsstudy.project.pojo.Student;
import edu.letsstudy.project.pojo.User;
import edu.letsstudy.project.service.MailSenderService;
import edu.letsstudy.project.service.SecurityService;
import edu.letsstudy.project.service.UserService;
import edu.letsstudy.project.validator.UserValidator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;

/**
 * Created by ADMINUM on 16.07.2017.
 */
@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @Autowired
    private SecurityService securityService;

    @Autowired
    private UserValidator userValidator;

    @Autowired
    private MailSenderService mailSenderService;

//    @RequestMapping(value = "/registration", method = RequestMethod.GET)
//    public ModelAndView registration() {
//        return new ModelAndView("registration", "userForm" , new User());
//    }
//
//    @RequestMapping(value = "/registration", method = RequestMethod.POST)
//    public ModelAndView registration(@ModelAttribute("userForm") User userForm, BindingResult bindingResult, Model model) {
//        userValidator.validate(userForm, bindingResult);
//
//        if (bindingResult.hasErrors()) {
//            return new ModelAndView("regstration");
//        }
//
//        userService.registration(userForm, "ROLE_USER");
//        securityService.autoLogin(userForm.getEmail(), userForm.getConfirmPassword());
////        mailSenderService.sendMail("sergei.levkovskii@gmail.com", userForm.getEmail(), "ТЕСТОВАЯ ВЕРСИЯ ОТПРАВКИ СООБЩЕНИЙ", "ПРИВЕТ");
//
//        return new ModelAndView("welcome" , "userForm", userForm);
//    }

    @RequestMapping(value = "/registration", method = RequestMethod.POST)
    public ModelAndView registration(
                                         @RequestParam("regUsername") String regUsername,
                                     @RequestParam("regEmail") String regEmail,
                                     @RequestParam("regPassword") String regPassword) {

            User user = new User();
            user.setUsername(regUsername);
            user.setEmail(regEmail);
            user.setPassword(regPassword);
            userService.registration(user, "ROLE_USER");
//        mailSenderService.sendMail("sergei.levkovskii@gmail.com", userForm.getEmail(), "ТЕСТОВАЯ ВЕРСИЯ ОТПРАВКИ СООБЩЕНИЙ", "ПРИВЕТ");

            return new ModelAndView("welcome", "user", user);

    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login(Model model, String error, String logout) {
        if (error != null) {
            model.addAttribute("error", "Username or password is incorrect.");
        }

        if (logout != null) {
            model.addAttribute("message", "Logged out successfully.");
        }

        return "login";
    }

    @RequestMapping(value = {"/"}, method = RequestMethod.GET)
    public String welcome() {
        return "welcome";
    }

    @RequestMapping(value = "/admin", method = RequestMethod.GET)
    public String admin() {
        return "admin";
    }


}
