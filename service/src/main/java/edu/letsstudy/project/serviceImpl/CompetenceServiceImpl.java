package edu.letsstudy.project.serviceImpl;

import edu.letsstudy.project.dao.CompetenceDao;
import edu.letsstudy.project.pojo.Competence;
import edu.letsstudy.project.service.CompetenceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by ADMINUM on 17.07.2017.
 */
@Service
public class CompetenceServiceImpl implements CompetenceService {

    @Autowired
    private CompetenceDao competenceDao;


    @Override
    public Competence findCompetenceByCompetenceTitle(String competenceTitle) {
        return competenceDao.findCompetenceByCompetenceTitle(competenceTitle);
    }
}
