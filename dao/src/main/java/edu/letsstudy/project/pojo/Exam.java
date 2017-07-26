package edu.letsstudy.project.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.*;

import javax.persistence.*;
import javax.persistence.Entity;
import javax.persistence.Table;
import java.util.Set;

/**
 * Created by ADMINUM on 16.07.2017.
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "EXAMS")
public class Exam {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "EXAM_ID")
    private Long id;

    @Column(name = "EXAM")
    private String exam;

    @ManyToMany(mappedBy = "preparingExams")
    @Cascade(org.hibernate.annotations.CascadeType.SAVE_UPDATE)
    private Set<Teacher> teachersPE;


    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Exam exam = (Exam) o;

        return id != null ? id.equals(exam.id) : exam.id == null;
    }

    @Override
    public int hashCode() {
        return id != null ? id.hashCode() : 0;
    }

    @Override
    public String toString() {
        return "Exam{" +
                "id=" + id +
                ", exam='" + exam + '\'' +
                '}';
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getExam() {
        return exam;
    }

    public void setExam(String exam) {
        this.exam = exam;
    }

}
