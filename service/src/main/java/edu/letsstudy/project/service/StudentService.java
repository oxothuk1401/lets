package edu.letsstudy.project.service;

import edu.letsstudy.project.pojo.Student;

/**
 * Created by ADMINUM on 17.07.2017.
 */
public interface StudentService {
    void registerStudent(Student student, String motherTongue, String studyLanguage);
}
