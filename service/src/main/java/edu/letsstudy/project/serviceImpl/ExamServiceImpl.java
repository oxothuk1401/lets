package edu.letsstudy.project.serviceImpl;

import edu.letsstudy.project.dao.ExamDao;
import edu.letsstudy.project.pojo.Exam;
import edu.letsstudy.project.service.ExamService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by ADMINUM on 16.07.2017.
 */
@Service
public class ExamServiceImpl implements ExamService {

    @Autowired
    private ExamDao examDao;

    @Override
    public Exam findByExamTitle(String exam) {
        return examDao.findExamByExam(exam);
    }
}
