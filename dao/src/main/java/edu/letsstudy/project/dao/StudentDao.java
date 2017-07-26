package edu.letsstudy.project.dao;

import edu.letsstudy.project.pojo.Student;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created by ADMINUM on 17.07.2017.
 */
public interface StudentDao extends JpaRepository<Student, Long> {

}
