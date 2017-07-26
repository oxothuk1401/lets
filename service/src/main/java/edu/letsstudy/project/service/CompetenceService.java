package edu.letsstudy.project.service;

import edu.letsstudy.project.pojo.Competence;

/**
 * Created by ADMINUM on 17.07.2017.
 */
public interface CompetenceService {
    Competence findCompetenceByCompetenceTitle(String competenceTitle);
}
