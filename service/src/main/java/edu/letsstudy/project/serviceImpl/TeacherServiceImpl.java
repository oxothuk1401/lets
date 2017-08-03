package edu.letsstudy.project.serviceImpl;

import com.querydsl.jpa.impl.JPAQuery;
import edu.letsstudy.project.dao.TeacherDao;
import edu.letsstudy.project.pojo.*;
import edu.letsstudy.project.service.CompetenceService;
import edu.letsstudy.project.service.ExamService;
import edu.letsstudy.project.service.LanguageService;
import edu.letsstudy.project.service.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.time.ZoneId;
import java.time.ZonedDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.Set;


/**
 * Created by ADMINUM on 16.07.2017.
 */

@Transactional
@Service
public class TeacherServiceImpl implements TeacherService{

    @Autowired
    private TeacherDao teacherDao;

    @Autowired
    private LanguageService languageService;

    @Autowired
    private ExamService examService;

    @Autowired
    private CompetenceService competenceService;

    @PersistenceContext
    private EntityManager entityManager;

    @Override
    public void registerTeacher(Teacher teacher, String teachingLanguage, String motherTongue,
                                String interLanguage, String exam, String competenceTitle) {

        for (String locale : ZoneId.getAvailableZoneIds()) {
            if (locale.toUpperCase().contains(teacher.getCity().toUpperCase())) {
                teacher.setLocale(locale);
            }
        }

        teacher.getTeachingLanguages().add(languageService.findByLanguageTitle(teachingLanguage));
        teacher.getMotherTongues().add(languageService.findByLanguageTitle(motherTongue));
        teacher.getInterlanguages().add(languageService.findByLanguageTitle(interLanguage));
        teacher.getPreparingExams().add(examService.findByExamTitle(exam));
        teacher.getSpecialCompetence().add(competenceService.findCompetenceByCompetenceTitle(competenceTitle));
        teacherDao.save(teacher);
    }

    @Override
    public List<Teacher> teacherFilter(String country, String teachingLanguage, String motherTongue, String priceForLesson, String preparingExam, String competenceTitle) {
        JPAQuery<Teacher> query = new JPAQuery<>(entityManager);
        QTeacher teacher = new QTeacher("teacher");
        QLanguage tLanguage = new QLanguage("tLanguage");
        QLanguage mLanguage = new QLanguage("mLanguage");
        QExam exam = new QExam("exam");
        QCompetence competence = new QCompetence("competence");
        JPAQuery<Teacher> from = query.select(teacher).from(teacher);
        int price1;
        int price2;
        if(priceForLesson.length() == 4){
            price1 = Integer.parseInt(priceForLesson.substring(0,1));
            price2 = Integer.parseInt(priceForLesson.substring(2,4));

        }else {
            price1 = Integer.parseInt(priceForLesson.substring(0,2));
            price2 = Integer.parseInt(priceForLesson.substring(3,5));

        }
        if (priceForLesson.length() > 0) {
            from.where(teacher.priceForLesson.between(price1,price2));
        }

        if (country.length() > 0) {
            from.where(teacher.country.contains(country));
        }
        if (teachingLanguage.length() > 0) {
            from.join(teacher.teachingLanguages, tLanguage).where(tLanguage.language.contains(teachingLanguage));
        }
        if (motherTongue.length() > 0) {
            from.join(teacher.motherTongues, mLanguage).where(mLanguage.language.contains(motherTongue));
        }
        if (preparingExam.length() > 0) {
            from.join(teacher.preparingExams, exam).where(exam.exam.contains(preparingExam));
        }
        if (competenceTitle.length() > 0) {
            from.join(teacher.specialCompetence, competence).where(competence.competenceTitle.contains(competenceTitle));
        }
        return query.fetchResults().getResults();
    }

}
