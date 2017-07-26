package edu.letsstudy.project.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.*;

import javax.persistence.*;
import javax.persistence.CascadeType;
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
@Table(name = "LANGUAGES")
public class Language {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "LANGUAGE_ID")
    private Long id;

    @Column(name = "LANGUAGE_NAME")
    private String language;

    @ManyToMany(mappedBy = "teachingLanguages")
    @Cascade(org.hibernate.annotations.CascadeType.SAVE_UPDATE)
    private Set<Teacher> teachersTL;


    @ManyToMany(mappedBy = "motherTongues")
    @Cascade(org.hibernate.annotations.CascadeType.SAVE_UPDATE)
    private Set<Teacher> teachersMT;


    @ManyToMany(mappedBy = "interlanguages")
    @Cascade(org.hibernate.annotations.CascadeType.SAVE_UPDATE)
    private Set<Teacher> teachersIL;


    @ManyToMany(mappedBy = "studentMotherTongue")
    @Cascade(org.hibernate.annotations.CascadeType.SAVE_UPDATE)
    private Set<Student> studentsMT;

    @ManyToMany(mappedBy = "studentStudyLanguage")
    @Cascade(org.hibernate.annotations.CascadeType.SAVE_UPDATE)
    private Set<Student> studentsTL;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Language language = (Language) o;

        return id != null ? id.equals(language.id) : language.id == null;
    }

    @Override
    public int hashCode() {
        return id != null ? id.hashCode() : 0;
    }

    @Override
    public String toString() {
        return "Language{" +
                "id=" + id +
                ", language='" + language + '\'' +
                '}';
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getLanguage() {
        return language;
    }

    public void setLanguage(String language) {
        this.language = language;
    }

}
