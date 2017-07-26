package edu.letsstudy.project.dao;

import edu.letsstudy.project.pojo.Exam;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created by ADMINUM on 16.07.2017.
 */
public interface ExamDao extends JpaRepository<Exam, Long> {
    Exam findExamByExam(String exam);
}
