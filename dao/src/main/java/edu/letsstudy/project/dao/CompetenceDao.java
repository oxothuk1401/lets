package edu.letsstudy.project.dao;

import edu.letsstudy.project.pojo.Competence;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created by ADMINUM on 17.07.2017.
 */
public interface CompetenceDao extends JpaRepository<Competence, Long> {
    Competence findCompetenceByCompetenceTitle(String competenceTitle);
}
