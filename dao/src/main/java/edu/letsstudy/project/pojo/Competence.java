package edu.letsstudy.project.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

/**
 * Created by ADMINUM on 17.07.2017.
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "COMPETENCE")
public class Competence {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "COMPETENCE_ID")
    private Long id;

    @Column(name = "COMPETENCE_TITLE")
    private String competenceTitle;

    @ManyToMany(mappedBy = "specialCompetence")
    private Set<Teacher> teachers = new HashSet<>();

    @Override
    public String toString() {
        return "Competence{" +
                "id=" + id +
                ", competenceTitle='" + competenceTitle + '\'' +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Competence that = (Competence) o;

        return id != null ? id.equals(that.id) : that.id == null;
    }

    @Override
    public int hashCode() {
        return id != null ? id.hashCode() : 0;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getCompetenceTitle() {
        return competenceTitle;
    }

    public void setCompetenceTitle(String competenceTitle) {
        this.competenceTitle = competenceTitle;
    }

}
