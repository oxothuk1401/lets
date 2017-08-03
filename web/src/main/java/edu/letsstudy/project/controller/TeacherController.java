package edu.letsstudy.project.controller;

import edu.letsstudy.project.pojo.Teacher;
import edu.letsstudy.project.service.TeacherService;
import edu.letsstudy.project.validator.TeacherValidator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.StringArrayPropertyEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.List;
import java.util.Locale;

/**
 * Created by ADMINUM on 16.07.2017.
 */
@Controller
@SessionAttributes("res")
public class TeacherController {

    @Autowired
    private TeacherService teacherService;

    @Autowired
    private TeacherValidator teacherValidator;

    @RequestMapping(value = "/regTeacherAction", method = RequestMethod.GET)
//    public String regTeacher() {
//        return "form_registration_teacher";
//    }
    public String regTeacher() {
        return "teacher-registration";
    }



    @RequestMapping(value = "/regTeacherActionForm", method = RequestMethod.POST)
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


//        teacherValidator.validate(teacher, bindingResult);
        if (bindingResult.hasErrors()) {
            return "teacher-registration";
//            return "form_registration_teacher";
        }

        teacherService.registerTeacher(teacher, teachingLanguage, motherTongue, interlanguage, exam, competence);
        return "teachersCabinet";
    }
    @RequestMapping(value = "/searchTeacherAction", method = RequestMethod.GET)
    public String searchTeacher() {
        return "search";
    }

    @RequestMapping(value = "/showProfileAction", method = RequestMethod.GET)
    public ModelAndView showProfile(@RequestParam("showProfileID")String showProfileID){

        return new ModelAndView("show_profile", "id", showProfileID);
    }

    @RequestMapping(value = "/teachersCabinetAction", method = RequestMethod.GET)
    public String teacherCabinet() {
        return "teachersCabinet";
    }

    @RequestMapping(value = "/searchAction", method = RequestMethod.GET)
    public String search() {
        return "search";
    }

    @RequestMapping(value = "/teacher-filter", method = RequestMethod.POST)
    public ModelAndView teacherFilter(@RequestParam("country") String country,
                                      @RequestParam("teachingLanguage") String teachingLanguage,
                                      @RequestParam("motherTongue") String motherTongue,
                                      @RequestParam("exam") String exam,
                                      @RequestParam("competence") String competence,
                                      @RequestParam("priceForLesson") String priceForLesson
                                      ) {

//        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd");
//        Locale locale = new Locale("ru_RU");
//        dtf = dtf.withLocale(locale);
//        LocalDate dateOfBirth = LocalDate.parse(date, dtf);
        List<Teacher> res = teacherService.teacherFilter(country, teachingLanguage, motherTongue, priceForLesson, exam, competence);
        return new ModelAndView("search", "res" , res);
    }

}
