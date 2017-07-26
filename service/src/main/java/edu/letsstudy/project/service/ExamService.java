package edu.letsstudy.project.service;

import edu.letsstudy.project.pojo.Exam;

/**
 * Created by ADMINUM on 16.07.2017.
 */
public interface ExamService {
    Exam findByExamTitle(String exam);
}
