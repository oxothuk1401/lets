package edu.letsstudy.project.validator;

import edu.letsstudy.project.pojo.User;
import edu.letsstudy.project.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import java.util.regex.Pattern;

/**
 * Created by ADMINUM on 16.07.2017.
 */
@Component
public class UserValidator implements Validator {

    @Autowired
    private UserService userService;


    @Override
    public boolean supports(Class<?> aClass) {
        return User.class.equals(aClass);
    }

    @Override
    public void validate(Object o, Errors errors) {
        User user = (User) o;

        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "email", "Field.not.null");
        if (!Pattern.compile("[\\w\\.-_]*\\w*@[a-zA-z]*\\.(com|org)").matcher(user.getEmail()).matches()) {
            errors.rejectValue("email", "email.incorrect");
        }
        if (userService.findUserByEmail(user.getEmail()) != null) {
            errors.rejectValue("email", "email.exist");
        }
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "username", "Field.not.null");
        if (user.getUsername().length() < 6 || user.getUsername().length() > 30) {
            errors.rejectValue("username", "username.size");
        }

        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password", "Field.not.null");
        if (user.getPassword().length() < 8 || user.getPassword().length() > 30) {
            errors.rejectValue("password", "password.size");
        }

        if (!user.getConfirmPassword().equals(user.getPassword())) {
            errors.rejectValue("confirmPassword", "password.different");
        }
//        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "phoneNumber", "Field.not.null");
//        if (!Pattern.compile("(\\+375)(25|29|33|44)(\\d{3})(\\d{2})(\\d{2})").matcher(user.getPhoneNumber()).matches()) {
//            errors.rejectValue("phoneNumber", "phone.incorrect");
//        }
//        if (userService.findUserByProneNumber(user.getPhoneNumber()) != null) {
//            errors.rejectValue("phoneNumber", "phone.exist");
//        }
    }
}
