package edu.letsstudy.project.controller;

import edu.letsstudy.project.pojo.Role;
import edu.letsstudy.project.pojo.Student;
import edu.letsstudy.project.pojo.Teacher;
import edu.letsstudy.project.service.RoleService;
import edu.letsstudy.project.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Locale;

/**
 * Created by ADMINUM on 17.07.2017.
 */
@Controller
public class StudentController {

    @Autowired
    private StudentService studentService;

    @Autowired
    private RoleService roleService;



    @RequestMapping(value = "/register/student", method = RequestMethod.GET)
    public String teacherRegistration(Model model) {
        model.addAttribute("modelForm", new Teacher());
        return "student-registration";
    }

    @RequestMapping(value = "/register/student", method = RequestMethod.POST)
    public String teacherRegistration(@RequestParam("name") String name,
                                      @RequestParam("surname") String surname,
//                                      @RequestParam("dateOfBirth") String date,
                                      @RequestParam("country") String country,
                                      @RequestParam("city") String city,
                                      @RequestParam("skype") String skype,
                                      @RequestParam("phoneNumber") String phone,
                                      @RequestParam("motherTongue") String motherTongue,
                                      @RequestParam("teachingLanguage") String teachingLanguage) {

//
//        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd");
//        Locale locale = new Locale("ru_RU");
//        dtf = dtf.withLocale(locale);
//        LocalDate dateOfBirth = LocalDate.parse(date, dtf);
        Student student = new Student();
        student.setName(name);
        student.setSurname(surname);
//        student.setDateOfBirth(dateOfBirth);
        student.setCountry(country);
        student.setCity(city);
        student.setSkype(skype);
        student.setPhoneNumber(phone);

        studentService.registerStudent(student, motherTongue, teachingLanguage);
        return "welcome";
    }
}
