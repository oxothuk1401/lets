package edu.letsstudy.project.serviceImpl;

import edu.letsstudy.project.dao.StudentDao;
import edu.letsstudy.project.pojo.Student;
import edu.letsstudy.project.service.LanguageService;
import edu.letsstudy.project.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by ADMINUM on 17.07.2017.
 */
@Service
public class StudentServiceImpl implements StudentService {

    @Autowired
    private StudentDao studentDao;

    @Autowired
    private LanguageService languageService;

    @Override
    public void registerStudent(Student student, String motherTongue, String studyLanguage) {
        student.getStudentMotherTongue().add(languageService.findByLanguageTitle(motherTongue));
        student.getStudentStudyLanguage().add(languageService.findByLanguageTitle(studyLanguage));
        studentDao.save(student);
    }
}
