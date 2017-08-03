package edu.letsstudy.project.service;

import edu.letsstudy.project.pojo.Teacher;

import java.util.List;
import java.util.Set;

/**
 * Created by ADMINUM on 16.07.2017.
 */
public interface TeacherService {
    void registerTeacher(Teacher teacher, String teachingLanguage, String motherTongue,
                         String interLanguage, String exam, String competenceTitle);

    List<Teacher> teacherFilter(String country, String teachingLanguage, String motherTongue,
                                String priceForLesson, String  exam, String competence);
}
