package edu.letsstudy.project.dao;

import edu.letsstudy.project.pojo.Teacher;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created by ADMINUM on 16.07.2017.
 */
public interface TeacherDao extends JpaRepository<Teacher, Long> {
}
