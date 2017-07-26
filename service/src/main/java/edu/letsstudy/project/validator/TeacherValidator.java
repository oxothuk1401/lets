package edu.letsstudy.project.validator;

import edu.letsstudy.project.pojo.Teacher;
import edu.letsstudy.project.service.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import java.util.regex.Pattern;

/**
 * Created by ADMINUM on 17.07.2017.
 */
@Component
public class TeacherValidator implements Validator {

    @Autowired
    private TeacherService teacherService;

    @Override
    public boolean supports(Class<?> aClass) {
        return Teacher.class.equals(aClass);
    }

    @Override
    public void validate(Object o, Errors errors) {
        Teacher teacher = (Teacher) o;
        System.out.println("VALIDATOR TEACHER");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "name", "Field.not.null");
        if (teacher.getName().length() < 2 || teacher.getName().length() > 32) {
            errors.rejectValue("name", "name.size");
        }
        if (!Pattern.compile("^[A-Z]+[a-z]+$").matcher(teacher.getName()).matches()) {
            errors.rejectValue("name", "name.form");
        }
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "surname", "Field.not.null");
        if (teacher.getSurname().length() < 2 || teacher.getSurname().length() > 32) {
            errors.rejectValue("surname", "surname.size");
        }
        if (!Pattern.compile("^[A-Z]+[a-z]+$").matcher(teacher.getSurname()).matches()) {
            errors.rejectValue("surname", "surname.form");
        }
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "phoneNumber", "Field.not.null");
        if (!Pattern.compile("(\\+375)(25|29|33|44)(\\d{3})(\\d{2})(\\d{2})").matcher(teacher.getPhoneNumber()).matches()) {
            errors.rejectValue("phoneNumber", "phone.incorrect");
        }
//        if (teacherService.findUserByProneNumber(user.getPhoneNumber()) != null) {
//            errors.rejectValue("phoneNumber", "phone.exist");
//        }

    }
}
