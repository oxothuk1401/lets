package edu.letsstudy.project.controller;

import edu.letsstudy.project.pojo.Teacher;
import edu.letsstudy.project.service.TeacherService;
import edu.letsstudy.project.validator.TeacherValidator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.List;
import java.util.Locale;

/**
 * Created by ADMINUM on 16.07.2017.
 */
@Controller
public class TeacherController {

    @Autowired
    private TeacherService teacherService;

    @Autowired
    private TeacherValidator teacherValidator;


    @RequestMapping(value = "/register/teacher", method = RequestMethod.GET)
    public String teacherRegistration(Model model) {
        model.addAttribute("teacherForm", new Teacher());
        return "teacher-registration";
    }

    @RequestMapping(value = "/register/teacher", method = RequestMethod.POST)
    public String teacherRegistration(@ModelAttribute("teacherForm") Teacher teacher,
                                      @RequestParam("teachingLanguage") String teachingLanguage,
                                      @RequestParam("motherTongue") String motherTongue,
                                      @RequestParam("interlanguage") String interlanguage,
                                      @RequestParam("exam") String exam,
                                      @RequestParam("competence") String competence,
                                      BindingResult bindingResult, Model model) {

//
//        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd");
//        Locale locale = new Locale("ru_RU");
//        dtf = dtf.withLocale(locale);
//        LocalDate dateOfBirth = LocalDate.parse(date, dtf);


        teacherValidator.validate(teacher, bindingResult);
        if (bindingResult.hasErrors()) {
            return "teacher-registration";
        }

        teacherService.registerTeacher(teacher, teachingLanguage, motherTongue, interlanguage, exam, competence);
        return "welcome";
    }

    @RequestMapping(value = "/find/teacher", method = RequestMethod.GET)
    public String teacherFilter(Model model) {
        model.addAttribute("teacherForm", new Teacher());
        return "search";
    }

//    @RequestMapping(value = "/show", method = RequestMethod.GET, produces = { "text/html; charset=UTF-8" })
//    public @ResponseBody
//    String showRes(@RequestParam String logininput) {
//        String result = logininput;
//        return result;
//    }

    @RequestMapping(value = "/teacher-filter", method = RequestMethod.POST)
    public ModelAndView teacherFilter(@RequestParam("country") String country,
                                      @RequestParam("city") String city,
                                      @RequestParam("skype") String skype,
                                      @RequestParam("teachingLanguage") String teachingLanguage,
                                      @RequestParam("motherTongue") String motherTongue,
                                      @RequestParam("interlanguage") String interlanguage,
                                      @RequestParam("exam") String exam,
                                      @RequestParam("competence") String competence,
                                      Model model) {

//        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd");
//        Locale locale = new Locale("ru_RU");
//        dtf = dtf.withLocale(locale);
//        LocalDate dateOfBirth = LocalDate.parse(date, dtf);
        List<Teacher> res = teacherService.teacherFilter(country, city, teachingLanguage, motherTongue, interlanguage, exam, competence);
        return new ModelAndView("search", "res" , res);
    }




//    @RequestMapping(value = "/register/teacher", method = RequestMethod.POST)
//    public String teacherRegistration(@RequestParam("name") String name,
//                                      @RequestParam("surname") String surname,
////                                      @RequestParam("dateOfBirth") String date,
//                                      @RequestParam("country") String country,
//                                      @RequestParam("city") String city,
//                                      @RequestParam("skype") String skype,
//                                      @RequestParam("phoneNumber") String phone,
//                                      @RequestParam("teachingLanguage") String teachingLanguage,
//                                      @RequestParam("motherTongue") String motherTongue,
//                                      @RequestParam("interlanguage") String interlanguage,
//                                      @RequestParam("exam") String exam,
//                                      @RequestParam("competence") String competence,
//                                      BindingResult bindingResult) {
//
//
//
////
////        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd");
////        Locale locale = new Locale("ru_RU");
////        dtf = dtf.withLocale(locale);
////        LocalDate dateOfBirth = LocalDate.parse(date, dtf);
//
//
//        Teacher teacher = new Teacher();
//        teacher.setName(name);
//        teacher.setSurname(surname);
////        teacher.setDateOfBirth(dateOfBirth);
//        teacher.setCountry(country);
//        teacher.setCity(city);
//        teacher.setSkype(skype);
//        teacher.setPhoneNumber(phone);
//
//        teacherValidator.validate(teacher, bindingResult);
//        if (bindingResult.hasErrors()) {
//            return "teacher-registration";
//        }
//
//        teacherService.registerTeacher(teacher, teachingLanguage, motherTongue, interlanguage, exam, competence);
//
//        return "welcome";
//    }
}
